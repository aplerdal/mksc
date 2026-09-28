#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdbool.h>

#include "hashmap.h"

#define MODE_COMPILE 0
#define MODE_DISASSEMBLE 1

#define MAX_LABELS 256

static int compile_file(FILE* input, FILE* output);
static int disassemble_file(FILE* input, FILE* output);

struct hashmap_s gSymbols = {};
struct hashmap_s gJumpLabels = {};

int main(int argc, char** argv) {
    int opt;
    int mode = MODE_COMPILE;
    char* output = NULL;
    char* symbols = NULL;
    char* input = NULL;
    uint disassembleAddress;
    if (hashmap_create(4096, &gSymbols) != 0) {
        printf("Error creating hashmap!\n");
        return -1;
    }
    if (hashmap_create(4, &gJumpLabels) != 0) {
        printf("Error creating hashmap!\n");
        return -1;
    }

    while ((opt = getopt(argc, argv, "o:s:d:")) != -1) {
        switch (opt) {
            case 'o':
                output = optarg;
                break;
            case 's':
                symbols = optarg;
                break;
            case 'd':
                mode = MODE_DISASSEMBLE;
                disassembleAddress = (int)strtol(optarg, NULL, 0);
                break;
            default:
                return -1;
        }
    }
    if (optind >= argc) {
        printf("No input file specified.");
        return -1;
    }
    input = argv[optind];
    int inputLen = strlen(input);
    if (output == NULL) {
        char* extptr = strchr(input, '.');
        char* buf = NULL;
        if (mode == MODE_COMPILE) {
                if (extptr != NULL) {
                int noExtLen = (size_t)extptr - (size_t)input;
                buf = calloc(1, sizeof(char) * (noExtLen + 5));
                strncpy(buf, input, noExtLen);
                strcpy(&buf[noExtLen], ".bin\0");
                
            } else {
                buf = calloc(1, sizeof(char) * (inputLen + 5));
                snprintf(buf, inputLen+5, "%s.bin", input);
            }
        } else {
            asprintf(&buf, "%08x.mks", disassembleAddress | 0x08000000);
        }

        output = buf;
    }
    printf("Input file: %s\n", input);
    printf("Output file: %s\n", output);
    printf("Symbol file: %s\n", symbols);

    FILE* inputFile = fopen(input, "r");
    if (inputFile == NULL) {
        printf("Error opening file: '%s'.\n", input);
        return -1;
    }

    FILE* outputFile = fopen(output, "w");
    if (outputFile == NULL) {
        printf("Error opening file: '%s'.\n", output);
        fclose(inputFile);
        return -1;
    }

    // Load symbols if they exist
    if (symbols != NULL) {
        FILE* symsFile = fopen(symbols, "r");
        if (symsFile == NULL) {
            printf("Error opening file: '%s'.\n", symbols);
            fclose(inputFile);
            fclose(outputFile);
            return -1;
        }
        char* line_buf = NULL;
        size_t line_len = 0;
        int* address = malloc(sizeof(int));
        char name[256];
        char type;
        while (fscanf(symsFile, "%8x %c %255s", address, &type, name) == 3) {
            char* buf = malloc(strlen(name)+1);
            strcpy(buf, name);
            if (hashmap_put(&gSymbols, buf, strlen(buf), address) != 0) {
                printf("Error adding to hashmap!\n");
                fclose(inputFile);
                fclose(outputFile);
                fclose(symsFile);
                free(address);
                return -1;
            }
            address = malloc(sizeof(int));
        }
        free(address);

        fclose(symsFile);
    }
    int ret;
    if (mode == MODE_COMPILE) {
        ret = compile_file(inputFile, outputFile);
    } else {
        // disassemble
        fseek(inputFile, disassembleAddress, SEEK_SET);
        ret = disassemble_file(inputFile, outputFile);
        printf("Disassembled!\n");
    }
    fclose(inputFile);
    fclose(outputFile);
    return ret;
}

typedef struct {
    const char* name;
    uint id;
} Opcode;

const Opcode opcodes[] = {
    {"HALT", 0x00},
    // Sprites
    {"SET_CELLDATA", 0x11},
    // Set vars
    {"SET_ANIM_FRAME", 0x41},
    {"SET_SCRIPT", 0x42},
    {"SET_UPDATE_FN", 0x43},
    // Music
    {"PLAY_SONG", 0x81},
    {"PLAY_SONG_RACING", 0x82},
    {"MPLAY_START", 0x83},
    {"MPLAY_START_ALL", 0x84},
    {"PLAY_SONG", 0x85}, // Repeat of 0x81
    {"STOP_SONG", 0x86},
    // Control Flow
    {"WAIT", 0xF1},
    {"JUMP", 0xF2},
    {"CALL", 0xF4},
    {"CALL_UNTIL_TRUE", 0xF5},
    {"JUMP_IF_FRAME", 0xF6},

};

static void mark_comment(char* line) {
    char* chr = strchr(line, '#');
    if (chr != NULL) *chr = '\0'; // null term at comments so we ignore the rest of the string
    return;
}
static bool is_label(char* token) {
    int len = strlen(token);
    if (token[len-1] == ':') {
        token[len-1] = '\0';
        return true;
    }
    return false;
}
static int get_opcode_value(char* token) {
    for (int i = 0; i < (sizeof(opcodes) / sizeof(Opcode)); i++) {
        if (strcmp(opcodes[i].name, token) == 0) {
            return opcodes[i].id;
        }
    }
    return -1;
}
static int parse_int_str(char* token, int* out) {
    if (token[0] >= '0' && token[0] <= '9' || token[0] == '-') {
        *out = (int)strtol(token, NULL, 0);
        return 0;
    } else {
        // read global symbol if exists
        int* const element = (int*)hashmap_get(&gSymbols, token, strlen(token));
        if (element == NULL) {
            return -1;
        }
        *out = *element;
    }

    return 0;
}
static int parse_label_jump(char* token, int currentInstr, int* out) {
    int* const element = (int*)hashmap_get(&gJumpLabels, token, strlen(token));
    if (element == NULL) {
        printf("jlabels len: %d\n", hashmap_num_entries(&gJumpLabels));
        return -1;
    }
    *out = *element - currentInstr + 1;
    return 0;
}

static int compile_file(FILE* input, FILE* output) {
    int label_count = 0;

    char* line_buf = NULL;
    size_t line_len = 0;
    int line = 0;
    int instr = 0;

    while (getline(&line_buf, &line_len, input) != -1) {
        line++;
        mark_comment(line_buf);
        char* token = strtok(line_buf, " \t\r\n");
        if (token == NULL) continue;
        
        if (is_label(token)) {
            char* label = calloc(strlen(token) + 1, sizeof(char));
            strcpy(label, token);
            int* value = malloc(sizeof(int));
            *value = instr;
            if (hashmap_get(&gJumpLabels, label, strlen(label)) != NULL) {
                printf("Duplicate label '%s' @ Line %d.\n", label, line);
                return -1;
            }
            if (hashmap_put(&gJumpLabels, label, strlen(label), value) != 0) {
                printf("Error creating label '%s' @ Line %d.\n", label, line);
                return -1;
            }
        } else {
            int opcode = get_opcode_value(token);
            if (opcode == -1) {
                printf("Invalid opcode @ Line %d: '%s'.", line, token);
                return -1;
            }
            instr++;
            char* token = strtok(NULL, " \t\r\n");
            if (token == NULL && opcode != 0x00 && opcode != 0x84) {
                printf("Opcode @ Line %d requires an argument!\n", line);
                return -1;
            }
            int arg = 0;
            if (opcode != 0x00 && opcode != 0x84) {
                switch (opcode) {
                    case 0x11:
                    case 0x41:
                    case 0x42:
                    case 0x81:
                    case 0x82:
                    case 0x83:
                    case 0x86:
                    case 0xf1:
                        // Normal numbers / Labels
                        if (parse_int_str(token, &arg) != 0){
                            printf("Error parsing argument '%s' @ Line %d.\n", token, line);
                            return -1;
                        }
                        break;
                    case 0x43:
                    case 0xf4:
                    case 0xf5:
                        // Thumb func calls
                        if (parse_int_str(token, &arg) != 0){
                            printf("Error parsing argument '%s' @ Line %d.\n", token, line);
                            return -1;
                        }
                        arg |= 1; // Set thumb bit
                        break;
                    case 0xf2:
                    case 0xf6:
                        // Local labels
                        if (parse_label_jump(token, instr, &arg) != 0){
                            printf("Error parsing jump '%s' @ Line %d.\n", token, line);
                            return -1;
                        }
                        break;
                }
            }
            fwrite(&opcode, 4, 1, output);
            fwrite(&arg, 4, 1, output);
        }
    }
    free(line_buf);
    hashmap_destroy(&gJumpLabels);
    return 0;
}

typedef struct {
    uint opcode;
    int arg;
} Instruction;

static const char* get_opcode(uint value) {
    for (int i = 0; i < sizeof(opcodes) / sizeof(Opcode); i++) {
        if (opcodes[i].id == value) return opcodes[i].name;
    }
    return NULL;
}

static int find_label(void* const context, struct hashmap_element_s* const e) {
    union {char** chr; uint value;}* ctx = context;
    if (*(uint*)e->data == ctx->value) {
        ctx->chr = e->key;
        return 1;
    }

    return 0;
}

static int disassemble_file(FILE* input, FILE* output) {
    int labels = 0;
    int instrNum = 0;
    fpos_t base;
    if (fgetpos(input, &base) != 0) return -1;
    bool step = true;
    while (step) {
        Instruction instr;
        int res = fread(&instr, sizeof(Instruction), 1, input);
        if (res != 1) break;
        
        if (instr.opcode == 0x0 || instr.opcode == 0x42) {
            step = false;
        } else if (instr.opcode == 0xf2 || instr.opcode == 0xf6) {
            char* str;
            asprintf(&str, "Label%d", labels++);
            int* temp = malloc(sizeof(int));
            *temp = instrNum + instr.arg;
            if (hashmap_put(&gJumpLabels, temp, sizeof(int), str) != 0) {
                printf("Error adding to hashmap!\n");
                return -1;
            }
            step = false;
        }
        instrNum++;
    }
    fsetpos(input, &base);
    step = true;
    instrNum = 0;
    while (step) {
        Instruction instr;
        int res = fread(&instr, sizeof(Instruction), 1, input);
        if (res != 1) break;

        const char* data = hashmap_get(&gJumpLabels, &instrNum, sizeof(int));
        if (data != 0) {
            fprintf(output, "%s:\n", data);
        }

        if (instr.opcode == 0x0 || instr.opcode == 0x42 || instr.opcode == 0xf2 || instr.opcode == 0xf6) {
            step = false;
        }
        const char* opcode = get_opcode(instr.opcode);
        if (opcode == NULL) {
            printf("Invalid opcode (0x%02x) encountered.\n", instr.opcode);
            return -1;
        }
        switch (instr.opcode) {
            case 0x00:
            case 0x84:
                fprintf(output, "%s\n", opcode);
                break;
            case 0x41:
            case 0x81:
            case 0x82:
            case 0x83:
            case 0x85:
            case 0x86:
            case 0xf1:
                // Normal number
                fprintf(output, "%s %d\n", opcode, instr.arg);
                break;
            case 0x11:
            case 0x42:
            case 0x43:
            case 0xf4:
            case 0xf5:
                // Try to find game symbol, use hex as backup;
                {
                    union {char* chr; uint value;} ctx;
                    ctx.value = instr.arg & (~1);
                    if (hashmap_iterate_pairs(&gSymbols, find_label, &ctx) != 0) {
                        char* value = ctx.chr;
                        if (value == NULL) {
                            // use hex backup
                            fprintf(output, "%s %08x\n", opcode, instr.arg);
                        } else {
                            fprintf(output, "%s %s\n", opcode, value);
                        }
                    } else {
                        // use hex backup
                        fprintf(output, "%s 0x%08x\n", opcode, instr.arg);
                    }
                }
                break;
            case 0xf2:
            case 0xf6:
                // Use created label
                {
                    int value = instrNum + instr.arg;
                    char* label = hashmap_get(&gJumpLabels, &value, sizeof(int));
                    if (label == NULL) {
                        printf("Error getting label!\n");
                        return -1;
                    }
                    fprintf(output, "%s %s\n", opcode, label);
                }
                break;
            
        }
        instrNum++;
    }
    return 0;
}