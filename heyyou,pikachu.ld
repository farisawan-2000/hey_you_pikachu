SECTIONS
{
    __romPos = 0x0;
    . = __romPos;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(16)
    {
        header_TEXT_END = .;
        header_DATA_START = .;
        header_s = .;
        build/asm/header.s.o(.data);
        header_DATA_END = .;
    }
    header_ROM_END = 0x40;
    __romPos = 0x40;

    __romPos = 0x40;
    . = __romPos;
    boot_ROM_START = __romPos;
    boot_VRAM = ADDR(.boot);
    .boot : AT(boot_ROM_START) SUBALIGN(16)
    {
        boot_TEXT_END = .;
        boot_DATA_START = .;
        boot_bin = .;
        build/assets/boot.bin.o(.data);
        boot_DATA_END = .;
    }
    boot_ROM_END = 0x1000;
    __romPos = 0x1000;

    __romPos = 0x1000;
    . = __romPos;
    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80000400 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/asm/entry.s.o(.text);
        build/src/main.c.o(.text);
        build/asm/3FD0.s.o(.text);
        build/asm/4640.s.o(.text);
        build/asm/4750.s.o(.text);
        build/asm/5270.s.o(.text);
        build/asm/5570.s.o(.text);
        build/asm/56D0.s.o(.text);
        build/asm/5DA0.s.o(.text);
        build/asm/63D0.s.o(.text);
        build/asm/8200.s.o(.text);
        build/asm/B3A0.s.o(.text);
        build/asm/CD40.s.o(.text);
        build/asm/D3F0.s.o(.text);
        build/asm/103B0.s.o(.text);
        build/asm/128B0.s.o(.text);
        build/asm/12DB0.s.o(.text);
        build/asm/13D30.s.o(.text);
        build/asm/141C0.s.o(.text);
        build/asm/14260.s.o(.text);
        build/asm/15760.s.o(.text);
        build/asm/17DD0.s.o(.text);
        build/asm/17F00.s.o(.text);
        build/asm/1CA70.s.o(.text);
        build/asm/1CD10.s.o(.text);
        build/asm/1D460.s.o(.text);
        build/asm/1E2C0.s.o(.text);
        build/asm/1F430.s.o(.text);
        build/asm/1FD10.s.o(.text);
        build/asm/1FDF0.s.o(.text);
        build/asm/200F0.s.o(.text);
        build/asm/20280.s.o(.text);
        build/asm/20F40.s.o(.text);
        build/asm/212B0.s.o(.text);
        build/asm/221A0.s.o(.text);
        build/asm/23D30.s.o(.text);
        build/asm/25C30.s.o(.text);
        build/asm/27F80.s.o(.text);
        build/asm/28030.s.o(.text);
        build/asm/2C2B0.s.o(.text);
        build/asm/2DC10.s.o(.text);
        build/asm/2DE60.s.o(.text);
        build/asm/2F760.s.o(.text);
        build/asm/33BA0.s.o(.text);
        build/asm/347D0.s.o(.text);
        build/asm/34DC0.s.o(.text);
        build/asm/36F30.s.o(.text);
        build/asm/386E0.s.o(.text);
        build/asm/38B00.s.o(.text);
        build/asm/39750.s.o(.text);
        build/asm/3D100.s.o(.text);
        build/asm/40300.s.o(.text);
        build/asm/40790.s.o(.text);
        build/asm/40830.s.o(.text);
        build/asm/41040.s.o(.text);
        build/asm/41B20.s.o(.text);
        build/asm/42270.s.o(.text);
        build/asm/42EA0.s.o(.text);
        build/asm/43440.s.o(.text);
        build/asm/49B50.s.o(.text);
        build/asm/49B60.s.o(.text);
        build/asm/49D60.s.o(.text);
        build/asm/4A890.s.o(.text);
        build/asm/4B6C0.s.o(.text);
        main_TEXT_END = .;
    }
    main_ROM_END = 0x4B790;
    __romPos = 0x4B790;

    __romPos = 0x4B790;
    . = __romPos;
    _4B790_ROM_START = __romPos;
    _4B790_VRAM = ADDR(._4B790);
    ._4B790 : AT(_4B790_ROM_START) SUBALIGN(16)
    {
        _4B790_TEXT_END = .;
        _4B790_DATA_START = .;
        _4B790_bin = .;
        build/assets/4B790.bin.o(.data);
        _4B790_DATA_END = .;
    }
    _4B790_ROM_END = 0x1000000;
    __romPos = 0x1000000;

    /DISCARD/ :
    {
        *(*);
    }
}
