# Configuration
LIB				:= libunk.a

# Tools
BIN_DIR			:= $(DEVKITARM)/bin
PREFIX			:= arm-none-eabi-
CPP				:= $(BIN_DIR)/./$(PREFIX)cpp
AS 			    := $(BIN_DIR)/./$(PREFIX)as
AR 			    := $(BIN_DIR)/./$(PREFIX)ar
AGBCC			:= ../../tools/agbcc/bin/old_agbcc
SHELL			:= /bin/bash -o pipefail

# Flags
ASFLAGS			:= -mcpu=arm7tdmi
CFLAGS			:= -mno-thumb-interwork -Wimplicit -Wparentheses -O2 -fhex-asm
CPPFLAGS		:= -I ../../tools/agbcc/ -I ../../tools/agbcc//include -iquote ../../include -nostdinc

# Files
OBJ_DIR := build
SUBDIR = src
SRCS := $(wildcard $(SUBDIR)/*.c)
OBJS := $(OBJ_DIR)/irq.o $(OBJ_DIR)/dma.o #$(patsubst $(SUBDIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))
DEPS := $(patsubst $(SUBDIR)/%.c,$(OBJ_DIR)/%.d,$(SRCS))
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))
SUBDIRS := $(sort $(dir $(OBJS)))
HEADERS_SRC := $(wildcard $(SUBDIR)/*.h)
HEADERS := $(notdir $(HEADERS_SRC))

$(shell mkdir -p $(SUBDIRS))

# Rules
.PHONY: lib clean

lib: $(LIB) $(HEADERS)

clean:
	rm -f $(LIB) $(HEADERS)
	rm -r build/*

$(OBJ_DIR)/%.o : $(SUBDIR)/%.c
	@$(CPP) -MMD -MT $@ $(CPPFLAGS) $< -o $(OBJ_DIR)/$*.i
	$(AGBCC) $(OBJ_DIR)/$*.i $(CFLAGS) -o $(OBJ_DIR)/$*.s
	@echo -e ".text\n\t.align\t2, 0\n" >> $(OBJ_DIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(OBJ_DIR)/$*.s

$(LIB): $(OBJS)
	$(AR) rs $@ $(OBJS)

%.h: $(SUBDIR)/%.h
	@cp $< $@

-include $(DEPS)
