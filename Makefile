# Configuration
TITLE			:= MARIO KART
GAME_CODE		:= AMKE
MAKER_CODE		:= 01
REVISION		:= 0
ROM				:= mksc.gba

# Tools
BIN_DIR			:= $(DEVKITARM)/bin
PREFIX			:= arm-none-eabi-
CPP				:= $(BIN_DIR)/./$(PREFIX)cpp
OBJCOPY 		:= $(BIN_DIR)/./$(PREFIX)objcopy
LD 				:= $(BIN_DIR)/./$(PREFIX)ld
AS 			    := $(BIN_DIR)/./$(PREFIX)as
SHA1			:= $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c
FIX				:= gbafix
SHELL			:= /bin/bash -o pipefail
AGBCC			:= $(AGBCC_DIR)/bin/old_agbcc
THUMB_ELF_CC	:= $(ARM000512)/lib/gcc-lib/thumb-elf/2.9-arm-000512/cc1
AIF2PCM   		:= tools/aif2pcm/aif2pcm

# Flags
ASFLAGS			:= -mcpu=arm7tdmi -I include
CFLAGS			:= -mthumb-interwork -Wimplicit -Wparentheses -O2
CPPFLAGS		:= -I $(AGBCC_DIR) -I $(AGBCC_DIR)/include -I lib -iquote include -nostdinc
LDFLAGS			= -L$(AGBCC_DIR)/lib -L../lib/libunk -lgcc -lc -lunk --just-symbols=../symbols.txt

# Files
ELF = $(ROM:.gba=.elf)
MAP = $(ROM:.gba=.map)
OBJ_DIR := build

C_SUBDIR = src
ASM_SUBDIR = asm
SOUND_SUBDIR = sound
DATA_SRC_SUBDIR = src/data
# DATA_ASM_SUBDIR = data
DATA_SUBDIR = data

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
SOUND_BUILDDIR = $(OBJ_DIR)/$(SOUND_SUBDIR)
# DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_ASM_SUBDIR)
DATA_BUILDDIR = $(OBJ_DIR)/$(DATA_SUBDIR)

C_SRCS := $(wildcard $(C_SUBDIR)/*.c $(C_SUBDIR)/*/*.c $(C_SUBDIR)/*/*/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))
C_DEPS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.d,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

SOUND_SRCS := $(wildcard $(SOUND_SUBDIR)/*.s $(SOUND_SUBDIR)/*/*.s $(SOUND_SUBDIR)/*/*/*.s)
SOUND_OBJS := $(patsubst $(SOUND_SUBDIR)/%.s,$(SOUND_BUILDDIR)/%.o,$(SOUND_SRCS))

SOUND_AIFS := $(wildcard $(SOUND_SUBDIR)/*.aif $(SOUND_SUBDIR)/*/*.aif $(SOUND_SUBDIR)/*/*/*.aif)
SOUND_AIF_OBJS := $(patsubst $(SOUND_SUBDIR)/%.aif,$(SOUND_BUILDDIR)/%.o,$(SOUND_AIFS))

DATA_BINS := $(wildcard $(DATA_SUBDIR)/*.bin)
DATA_OBJS := $(patsubst $(DATA_SUBDIR)/%.bin,$(DATA_BUILDDIR)/%.o,$(DATA_BINS))
# DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
# DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

OBJS     := $(C_OBJS) $(ASM_OBJS) $(DATA_OBJS) $(SOUND_OBJS) $(SOUND_AIF_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

SUBDIRS  := $(sort $(dir $(OBJS)))

$(shell mkdir -p $(SUBDIRS))

define bin2o
	bin2s -H $(@).h $< | $(AS) -o $(@)
endef

# Rules
.PHONY: tools libraries rom clean

rom: tools libraries $(ROM) compare

compare: $(ROM)
	@$(SHA1) rom.sha1

progress: $(MAP)
	@perl calcrom.pl $(MAP)
libraries:
	@$(MAKE) -C lib/libunk

clean:
	$(MAKE) clean -C tools/aif2pcm
	rm -f $(ROM) $(ELF) $(MAP)
	rm -r build/*
	$(MAKE) -C lib/libunk clean

tools:
	@$(MAKE) -C tools/aif2pcm

$(OBJ_DIR)/src/agbbackup/%.o : src/agbbackup/%.c
	@$(CPP) -MMD -MT $@ $(CPPFLAGS) $< -o $(OBJ_DIR)/src/agbbackup/$*.i
	@$(AGBCC) $(OBJ_DIR)/src/agbbackup/$*.i $(CFLAGS) -O1 -o $(OBJ_DIR)/src/agbbackup/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(OBJ_DIR)/src/agbbackup/$*.s
	$(AS) $(ASFLAGS) -o $@ $(OBJ_DIR)/src/agbbackup/$*.s

$(C_BUILDDIR)/mp2000/%.o : $(C_SUBDIR)/mp2000/%.c
	@$(CPP) -MMD -MT $@ $(CPPFLAGS) $< -o $(OBJ_DIR)/src/mp2000/$*.i
	@$(AGBCC) $(OBJ_DIR)/src/mp2000/$*.i $(CFLAGS) -o $(OBJ_DIR)/src/mp2000/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(OBJ_DIR)/src/mp2000/$*.s
	$(AS) $(ASFLAGS) -o $@ $(OBJ_DIR)/src/mp2000/$*.s

$(C_BUILDDIR)/%.O3.o : $(C_SUBDIR)/%.O3.c
	@$(CPP) -MMD -MT $@ $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	@$(THUMB_ELF_CC) $(C_BUILDDIR)/$*.i $(CFLAGS) -O3 -o $(C_BUILDDIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	@sed -i -e 's/\.align\t2/\.align\t2, 0/' $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.c
	@$(CPP) -MMD -MT $@ $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	@$(THUMB_ELF_CC) $(C_BUILDDIR)/$*.i $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(C_BUILDDIR)/$*.s
	@sed -i -e 's/\.align\t2/\.align\t2, 0/' $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

$(SOUND_BUILDDIR)/%.o: $(SOUND_SUBDIR)/%.aif
	$(AIF2PCM) $< $(patsubst %.o,%,$@)
	bin2s -H $(@).h $(patsubst %.o,%,$@) | $(AS) -o $(@)

$(SOUND_BUILDDIR)/%.o: $(SOUND_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -o $@ $<

$(DATA_BUILDDIR)/%.o : $(DATA_SUBDIR)/%.bin
	@echo $(notdir $<)
	@$(bin2o)

$(ELF): $(OBJS)
	cd $(OBJ_DIR) && $(LD) -Map ../$(MAP) -T ../ld_script.ld -o ../$@ $(LDFLAGS) $(OBJS_REL)

$(ROM): $(ELF)
	$(OBJCOPY) -O binary $< $@
	$(FIX) $@ -p -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION)

$(MAP): rom

show:
	echo $(ASM_SRCS)

-include $(C_DEPS)
