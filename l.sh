#!/bin/bash
rm *.rel
rm demo.com
sdasz80 -o crt0msx_msxdos_advanced.s
sdasz80 -o putchar.s
sdasz80 -o getchar.s
sdasz80 -o dos.s
sdasz80 -o dos2.s
sdasz80 -o interrupt.s
sdasz80 -o ioport.s
sdasz80 -o keyboard.s
sdasz80 -o vdp.s
sdcc -mz80 -c -o conio.rel conio.c
sdcc -mz80 -c -o heap.rel heap.c
sdcc -mz80 -c -o mem.rel mem.c
sdcc -mz80 -c -o demo.rel demo.c
sdcc -mz80 --code-loc 0x0178 --data-loc 0 --no-std-crt0 --opt-code-size --out-fmt-ihx crt0msx_msxdos_advanced.rel putchar.rel getchar.rel dos.rel vdp.rel conio.rel demo.rel
hex2bin demo.ihx
mv demo.bin demo.com
