__heap_base = __ovr_end;

__ovr_start = 0x8000b0b8;

SECTIONS {
    OVERLAY __ovr_start : SUBALIGN(4)
    {
        .asmhooks
        {
            . = . + 0x28d80;
            KEEP(asm/hook.o(.text*))
            KEEP(asm/hook.o(.rodata*))
            KEEP(asm/hook.o(.sdata*))
            KEEP(asm/hook.o(.data*))
            KEEP(asm/hook.o(.sbss*))
            KEEP(asm/hook.o(.bss*))
            KEEP(asm/hook.o(.ctors))
            
            . = ALIGN(4);
            __ovr_end = .;
        }
        .Header
        {
            KEEP(src/main.o(.text*))
            KEEP(src/main.o(.rodata*))
            KEEP(src/main.o(.sdata*))
            KEEP(src/main.o(.data*))
            KEEP(src/main.o(.sbss*))
            KEEP(src/main.o(.bss*))
            KEEP(src/main.o(.ctors))
            
            . = ALIGN(4);
            __ovr_end = .;
        }
    }
}
