	;--- crt0.s for MSX-DOS - by Konami Man & Avelino, 11/2004
	;    Simple version: allows "void main()" only.
	;    Overhead: 6 bytes.
	;
        ;    Compile programs with --code-loc 0x106 --data-loc X
        ;    X=0  -> global vars will be placed immediately after code
        ;    X!=0 -> global vars will be placed at address X
        ;            (make sure that X>0x100+code size)

	.globl	_main

	.area _HEADER (ABS)

        .org    0x0100  ;MSX-DOS .COM programs start address

        ;--- Initialize globals and jump to "main"

        jp init
        
.include "biisi_0103.inc"

init:   call gsinit
	jp   _main
    

        ;--- Program code and data (global vars) start here

	;* Place data after program code, and data init code after data

	.area	_CODE
        .area	_DATA

gsinit: .area   _GSINIT
        
	.area   _GSFINAL
        ret

        ;* These doesn't seem to be necessary... (?)

        ;.area  _OVERLAY
	;.area	_HOME
        ;.area  _BSS
	;.area	_HEAP
