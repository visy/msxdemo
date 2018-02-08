#!/bin/bash
rm *.rel
rm *.o
rm demo.com
rm demo.ihx
rm demo.dsk
as-z80 -o crt0msx_msxdos_biisi.o crt0msx_msxdos_biisi.s
as-z80 -l crt0msx_msxdos_biisi.lst crt0msx_msxdos_biisi.s
as-z80 -o putchar.o putchar.s
as-z80 -o getchar.o getchar.s
as-z80 -o dos.o dos.s
as-z80 -o dos2.o dos2.s
as-z80 -o interrupt.o interrupt.s
as-z80 -o ioport.o ioport.s
as-z80 -o keyboard.o keyboard.s
as-z80 -o vdp.o vdp.s
as-z80 -o arkos.o ArkosTrackerPlayer_MSX_ehja.s
#as-z80 -o pletter.o pletter.s
as-z80 -o bitbuster.o bitbuster.s
sdcc -mz80 -c -o conio.o conio.c
sdcc -mz80 -c -o heap.o heap.c
sdcc -mz80 -c -o mem.o mem.c
sdcc -mz80 -c -o msxlib.o msxlib.c
export CODELOC=$(grep "1 _HEADER" crt0msx_msxdos_biisi.lst | sed "s/.*size//;s/flags.*//;s/ //g;s/\t//g" | tr -d "\n")
sdcc -mz80 -L. --code-loc 0x$CODELOC --data-loc 0 --no-std-crt0 --out-fmt-ihx crt0msx_msxdos_biisi.o bitbuster.o putchar.o getchar.o dos.o vdp.o arkos.o conio.o mem.o heap.o interrupt.o msxlib.o demo.c

if [ -f demo.ihx ]; then
	hex2bin demo.ihx
	mv demo.bin demo.com
	wrdsk demo.dsk demo.com monolog.pck monolog.pl6 kettu11.pck kettu12.pck kettu16.pck kettu16.pl5 msxdos2.sys command2.com autoexec.bat
	echo "done, demo built to demo.dsk"
fi

