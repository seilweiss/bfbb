ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

NAME := bfbb
VERSION := usa

BUILD_DIR := build/$(NAME).$(VERSION)

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
CPP_FILES += $(wildcard src/*.cp)
LDSCRIPT := $(BUILD_DIR)/ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/bfbb.map

include obj_files.mk

O_FILES := $(INIT_O_FILES) $(EXTAB_O_FILES) $(TEXT_O_FILES) \
           $(CTORS_O_FILES) $(DTORS_O_FILES) \
           $(BSS_O_FILES) $(SDATA_O_FILES) $(SBSS_O_FILES) $(SDATA2_O_FILES)      \
           $(SBSS2_O_FILES)

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as.exe
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp.exe -P
else
  WINE ?= wine
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp -P
endif
CC      := $(WINE) tools/mwcc_compiler/2.0/mwcceppc.exe
LD      := $(WINE) tools/mwcc_compiler/2.7/mwldeppc.exe
PPROC   := python tools/postprocess.py
ELF2DOL := tools/elf2dol
SHA1SUM := sha1sum
ASMDIFF := ./asmdiff.sh

# Options
INCLUDES := -Isrc/dolphin/include -Isrc/CodeWarrior -Isrc/rwsdk

ASFLAGS := -mgekko -I include
LDFLAGS := -map $(MAP) -w off -maxerrors 256 -nostdlib
CFLAGS  := -g -Cpp_exceptions off -proc gekko -fp hard -str reuse,pool,readonly \
           -pragma "check_header_flags off" -pragma "force_active on" \
           -char unsigned -enum int -fp_contract on -nostdinc -RTTI off \
           -use_lmw_stmw on -inline off -O4,p -msgstyle gcc -gccincludes $(INCLUDES)
PREPROCESS := -preprocess -gccincludes $(INCLUDES)
PPROCFLAGS := -fsymbol-fixup

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------
QUIET := @

default: all

all: $(DOL)

ALL_DIRS := $(sort $(dir $(O_FILES)))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

.PHONY: tools

$(LDSCRIPT): ldscript.lcf
	$(QUIET) $(CPP) -MMD -MP -MT $@ -MF $@.d -I include/ -I . -DBUILD_DIR=$(BUILD_DIR) -o $@ $<

$(DOL): $(ELF) | tools
	$(QUIET) $(ELF2DOL) $< $@
	$(SHA1SUM) -c sha1/$(NAME).$(VERSION).sha1 || $(ASMDIFF)

clean:
	@echo cleaning build dir
	rm -f -d -r build
	$(QUIET) $(MAKE) -C tools clean

tools:
	$(QUIET) $(MAKE) -C tools

$(ELF): $(O_FILES) $(LDSCRIPT)
	@echo "LINK    "$@
	@echo $(O_FILES) > build/o_files
	$(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files

$(BUILD_DIR)/%.o: %.s
	@echo "AS      "$<
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<
	$(QUIET) $(PPROC) $(PPROCFLAGS) $@

$(BUILD_DIR)/%.o: %.c
	@echo "CC      "$<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: %.cpp
	@echo "CXX     "$<
	$(QUIET) $(CC) $(PREPROCESS) -o $(BUILD_DIR)/$*.cp $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $(BUILD_DIR)/$*.cp
