#!/bin/bash
rm *.rel
rm demo.com
rm demo.ihx
rm demo.dsk
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
sdcc -mz80 --code-loc 0x0178 --data-loc 0 --no-std-crt0 --opt-code-size --out-fmt-ihx crt0msx_msxdos_advanced.rel putchar.rel getchar.rel dos.rel vdp.rel conio.rel mem.rel heap.rel demo.c

if [ -f demo.ihx ]; then
	hex2bin demo.ihx
	mv demo.bin demo.com
	wrdsk demo.dsk demo.com kettu11.sc5 kettu11.pl5 kettu12.sc5 kettu12.pl5 kettu13.sc5 kettu13.pl5 kettu14.sc5 kettu14.pl5 kettu15.sc5 kettu15.pl5 kettu16.sc5 kettu16.pl5 msxdos2.sys command2.com autoexec.bat
	echo "done, demo built to demo.dsk"
fi

