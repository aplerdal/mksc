SECTIONS
{
    . = 0x2000000;

    ewram (NOLOAD) :
    ALIGN(0)
    {
        . = 0x10400;
        title_sDriversBgTilesBuf = .; . += 0x5800;

        . = 0x2A400;
        gMainFrmHeap = .; . += 0x8000;

        . = 0x3EBE8;
        gMenuState = .; . += 4;
    }

    . = 0x3000000;

    .bss (NOLOAD) :
    ALIGN(0)
    {
        src/title.o(.bss);
        src/mobileSystemsGBLogo.o(.bss);

        . = 0x188;
        src/error.o(.bss);

        . = 0x1B0;
        src/main.o(.bss);

        . = 0x02D8;
        src/palette.o(.bss);
        src/map.o(.bss);

        . = 0x16F0;
        src/oam.O3.o(.bss);

        . = 0x2190;
        src/dmaQueue.o(.bss);

        . = 0x23F8;
        libunk.a(.bss);

        . = 0x2600;
        src/mp2000/m4a.o(.bss.code);

        . = 0x2D20;
        src/vcount.o(.bss);
        
        . = 0x2E20;
        gSceneState = .; /* As of now we don't know how big this struct is. */

        . = 0x4F70;
        src/transition.O3.o(COMMON);

        . = 0x4FC0;
        src/vcount.o(COMMON);
    }

    . = 0x8000000;

    .text :
    {
        /* code */
        asm/romHeader.o(.text);
        asm/crt0.o(.text);
        src/title.o(.text);
        src/mobileSystemsGBLogo.o(.text);
        asm/text08001A84.o(.text);
        src/unk_8001ADC.o(.text);
        asm/text08001B30.o(.text);
        src/error.o(.text);
        asm/text08016F28.o(.text);
        src/main.o(.text);
        src/frameHeap.o(.text);
        asm/text0802D708.o(.text);
        src/palette.o(.text);
        src/map.o(.text);
        asm/text0802E778.o(.text);
        src/list.o(.text);
        src/actorList.O3.o(.text);
        src/collision.o(.text);
        asm/text0802F5C0.o(.text);
        src/oam.O3.o(.text);
        src/script.o(.text);
        asm/text080301A8.o(.text);
        src/dmaQueue.o(.text);
        src/vcount.o(.text);
        src/transition.O3.o(.text);
        asm/text08030774.o(.text);
        src/track.o(.text);
        asm/text08033f14.o(.text);
        asm/play.o(.text);
        asm/text08051f84.o(.text);
        asm/m4a_1.o(.text);
        src/mp2000/m4a.o(.text);
        asm/libagbsyscall.o(.text);
        src/agbbackup/agb_flash.o(.text);
        asm/text08061838.o(.text);
        libgcc.a(.text);
        libunk.a(.text);

        asm/rodata08062774.o(.rodata);
        src/main.o(.rodata);
        asm/rodata080DE144.o(.rodata);
        src/oam.O3.o(.rodata);
        asm/rodata080E645C.o(.rodata);
        src/mp2000/m4a_tables.o(.rodata);
        INCLUDE ../ld_script_sound.ld;
        asm/rodata081E9778.o(.rodata);
        libgcc.a(.rodata);
        libunk.a(.rodata);
        asm/rodata081E9B1C.o(.rodata);
        data/skyData.o(.rodata*);
        data/courseData.o(.rodata*);
        data/mbChild.o(.rodata*);
        data/sio32MultiLoader.o(.rodata*);
        data/characterPalettes.o(.rodata*);
        data/characterTiles.o(.rodata*);
    }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
