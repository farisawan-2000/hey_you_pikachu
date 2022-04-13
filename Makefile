default: all
DUMMY != mkdir -p build build/asm build/src build/assets

AS_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
B_FILES := $(wildcard assets/*.bin)

O_FILES := $(foreach file, $(AS_FILES), build/$(file:.s=.s.o)) \
		   $(foreach file, $(C_FILES), build/$(file:.c=.c.o)) \
		   $(foreach file, $(B_FILES), build/$(file:.bin=.bin.o))

# IDO := tools/ido/cc
IDO := ~/qemu-irix -L tools/ido_irix tools/ido_irix/usr/bin/cc
I_FLAGS := -Iinclude -Iinclude/PR -I. -Iinclude/libc -Isrc

all: build/pikachu.z64

clean:
	rm -rf build

build/%.s.o: %.s
	mips64-elf-as -mabi=32 -march=vr4300 -mtune=vr4300 -Iinclude -o $@ $<

build/%.c.o: %.c
	gcc -fsyntax-only $< $(I_FLAGS) -DTARGET_N64 -D_LANGUAGE_C
	python3 tools/asm-processor/asm_processor.py -O2 $< > build/$<
	$(IDO) -c -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed -O2 -mips2 -32 \
	-nostdinc -D_LANGUAGE_C -DTARGET_N64 -DF3DEX_GBI_2 $(I_FLAGS) \
	-o $@ build/$<

build/%.bin.o: %.bin
	mips64-elf-ld -r -b binary -o $@ $<

build/pikachu.ld: heyyou,pikachu.ld
	cp $< $@

build/pikachu.elf: build/pikachu.ld $(O_FILES)
	mips64-elf-ld -T $< -T undefined_funcs_auto.txt -T undefined_syms_auto.txt -o $@

build/pikachu.z64: build/pikachu.elf
	mips64-elf-objcopy $< -O binary $@
	sha1sum -c pikachu.sha1
