;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Sat Feb 10 22:15:48 2018
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _do_blocks
	.globl _do_ymmm
	.globl _fadein
	.globl _raw_load
	.globl _pause
	.globl _pal_load
	.globl _scratch_clear
	.globl _ge5_load
	.globl _my_isr
	.globl _flof
	.globl _btab
	.globl _bty
	.globl _btx
	.globl _bsy
	.globl _bsx
	.globl _block_init
	.globl _cc
	.globl _yo
	.globl _tick
	.globl _vbicount
	.globl _sample_buf
	.globl _block_palette
	.globl _cur_palette
	.globl _scratch
	.globl _packbuffer
	.globl _sintab
	.globl _sintabx
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_sintab::
	.ds 256
_packbuffer::
	.ds 5000
_scratch::
	.ds 128
_cur_palette::
	.ds 32
_block_palette::
	.ds 32
_sample_buf::
	.ds 32000
_vbicount::
	.ds 2
_tick::
	.ds 2
_yo::
	.ds 1
_cc::
	.ds 1
_flipper:
	.ds 2
_ymmmf:
	.ds 2
_block_init::
	.ds 1
_bsx::
	.ds 2
_bsy::
	.ds 2
_btx::
	.ds 2
_bty::
	.ds 2
_btab::
	.ds 32
_flof::
	.ds 2
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;types.h:27: signed char sintab[256]={
	ld	hl,#_sintab
	call	__initrleblock
	.db	59
	.db	0x00, 0x03, 0x06, 0x09, 0x0C, 0x0F, 0x12, 0x15
	.db	0x18, 0x1B, 0x1E, 0x21, 0x24, 0x27, 0x2A, 0x2D
	.db	0x30, 0x33, 0x36, 0x39, 0x3B, 0x3E, 0x41, 0x43
	.db	0x46, 0x49, 0x4B, 0x4E, 0x50, 0x52, 0x55, 0x57
	.db	0x59, 0x5B, 0x5E, 0x60, 0x62, 0x64, 0x66, 0x67
	.db	0x69, 0x6B, 0x6C, 0x6E, 0x70, 0x71, 0x72, 0x74
	.db	0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x7B
	.db	0x7C, 0x7D, 0x7D
	.db	#-5,#0x7E
	.db	1
	.db	0x7F
	.db	#-5,#0x7E
	.db	117
	.db	0x7D, 0x7D, 0x7C, 0x7B, 0x7B, 0x7A, 0x79, 0x78
	.db	0x77, 0x76, 0x75, 0x74, 0x72, 0x71, 0x70, 0x6E
	.db	0x6C, 0x6B, 0x69, 0x67, 0x66, 0x64, 0x62, 0x60
	.db	0x5E, 0x5B, 0x59, 0x57, 0x55, 0x52, 0x50, 0x4E
	.db	0x4B, 0x49, 0x46, 0x43, 0x41, 0x3E, 0x3B, 0x39
	.db	0x36, 0x33, 0x30, 0x2D, 0x2A, 0x27, 0x24, 0x21
	.db	0x1E, 0x1B, 0x18, 0x15, 0x12, 0x0F, 0x0C, 0x09
	.db	0x06, 0x03, 0x00, 0xFD, 0xFA, 0xF7, 0xF4, 0xF1
	.db	0xEE, 0xEB, 0xE8, 0xE5, 0xE2, 0xDF, 0xDC, 0xD9
	.db	0xD6, 0xD3, 0xD0, 0xCD, 0xCA, 0xC7, 0xC5, 0xC2
	.db	0xBF, 0xBD, 0xBA, 0xB7, 0xB5, 0xB2, 0xB0, 0xAE
	.db	0xAB, 0xA9, 0xA7, 0xA5, 0xA2, 0xA0, 0x9E, 0x9C
	.db	0x9A, 0x99, 0x97, 0x95, 0x94, 0x92, 0x90, 0x8F
	.db	0x8E, 0x8C, 0x8B, 0x8A, 0x89, 0x88, 0x87, 0x86
	.db	0x85, 0x85, 0x84, 0x83, 0x83
	.db	#-5,#0x82
	.db	1
	.db	0x81
	.db	#-5,#0x82
	.db	58
	.db	0x83, 0x83, 0x84, 0x85, 0x85, 0x86, 0x87, 0x88
	.db	0x89, 0x8A, 0x8B, 0x8C, 0x8E, 0x8F, 0x90, 0x92
	.db	0x94, 0x95, 0x97, 0x99, 0x9A, 0x9C, 0x9E, 0xA0
	.db	0xA2, 0xA5, 0xA7, 0xA9, 0xAB, 0xAE, 0xB0, 0xB2
	.db	0xB5, 0xB7, 0xBA, 0xBD, 0xBF, 0xC2, 0xC5, 0xC7
	.db	0xCA, 0xCD, 0xD0, 0xD3, 0xD6, 0xD9, 0xDC, 0xDF
	.db	0xE2, 0xE5, 0xE8, 0xEB, 0xEE, 0xF1, 0xF4, 0xF7
	.db	0xFA, 0xFD
	.db	0
;demo.c:33: uint8_t packbuffer[5000] = {0};
	ld	hl,#_packbuffer
	call	__initrleblock
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-47,#0x00
	.db	0
;demo.c:39: uint8_t sample_buf[32000] = {0};
	ld	hl,#_sample_buf
	call	__initrleblock
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-123,#0x00
	.db	0
;demo.c:41: volatile int vbicount=0;
	ld	iy,#_vbicount
	ld	0 (iy),#0x00
	ld	iy,#_vbicount
	ld	1 (iy),#0x00
;demo.c:42: volatile int tick=0;
	ld	iy,#_tick
	ld	0 (iy),#0x00
	ld	iy,#_tick
	ld	1 (iy),#0x00
;demo.c:185: uint8_t yo = 0;
	ld	iy,#_yo
	ld	0 (iy),#0x00
;demo.c:186: uint8_t cc = 0;
	ld	iy,#_cc
	ld	0 (iy),#0x00
;demo.c:187: static int flipper = 0;
	ld	iy,#_flipper
	ld	0 (iy),#0x00
	ld	iy,#_flipper
	ld	1 (iy),#0x00
;demo.c:188: static int ymmmf = 0;
	ld	iy,#_ymmmf
	ld	0 (iy),#0x00
	ld	iy,#_ymmmf
	ld	1 (iy),#0x00
;demo.c:220: char block_init = 0;
	ld	iy,#_block_init
	ld	0 (iy),#0x00
;demo.c:222: int bsx = 0;
	ld	iy,#_bsx
	ld	0 (iy),#0x00
	ld	iy,#_bsx
	ld	1 (iy),#0x00
;demo.c:223: int bsy = 0;
	ld	iy,#_bsy
	ld	0 (iy),#0x00
	ld	iy,#_bsy
	ld	1 (iy),#0x00
;demo.c:224: int btx = 0;
	ld	iy,#_btx
	ld	0 (iy),#0x00
	ld	iy,#_btx
	ld	1 (iy),#0x00
;demo.c:225: int bty = 0;
	ld	iy,#_bty
	ld	0 (iy),#0x00
	ld	iy,#_bty
	ld	1 (iy),#0x00
;demo.c:227: int btab[16] = {0};
	ld	hl,#_btab
	call	__initrleblock
	.db	#-32,#0x00
	.db	0
;demo.c:229: int flof = 0;
	ld	iy,#_flof
	ld	0 (iy),#0x00
	ld	iy,#_flof
	ld	1 (iy),#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;demo.c:48: void my_isr(void) interrupt
;	---------------------------------
; Function my_isr
; ---------------------------------
_my_isr_start::
_my_isr:
	push	af
	push	bc
	push	de
	push	hl
	push	iy
;demo.c:50: DI;
		di 
;demo.c:51: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:53: PLY_Play();
	call	_PLY_Play
;demo.c:54: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:56: vbicount++;
	ld	iy,#_vbicount
	inc	0 (iy)
	jr	NZ,00103$
	ld	iy,#_vbicount
	inc	1 (iy)
00103$:
;demo.c:57: tick++;
	ld	iy,#_tick
	inc	0 (iy)
	jr	NZ,00104$
	ld	iy,#_tick
	inc	1 (iy)
00104$:
;demo.c:59: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_my_isr_end::
_sintabx:
	.dw #0x0078
	.dw #0x007A
	.dw #0x007D
	.dw #0x0080
	.dw #0x0083
	.dw #0x0086
	.dw #0x0089
	.dw #0x008C
	.dw #0x008F
	.dw #0x0092
	.dw #0x0095
	.dw #0x0098
	.dw #0x009A
	.dw #0x009D
	.dw #0x00A0
	.dw #0x00A3
	.dw #0x00A5
	.dw #0x00A8
	.dw #0x00AB
	.dw #0x00AD
	.dw #0x00B0
	.dw #0x00B3
	.dw #0x00B5
	.dw #0x00B8
	.dw #0x00BA
	.dw #0x00BD
	.dw #0x00BF
	.dw #0x00C1
	.dw #0x00C4
	.dw #0x00C6
	.dw #0x00C8
	.dw #0x00CA
	.dw #0x00CC
	.dw #0x00CE
	.dw #0x00D0
	.dw #0x00D2
	.dw #0x00D4
	.dw #0x00D6
	.dw #0x00D8
	.dw #0x00DA
	.dw #0x00DB
	.dw #0x00DD
	.dw #0x00DE
	.dw #0x00E0
	.dw #0x00E1
	.dw #0x00E3
	.dw #0x00E4
	.dw #0x00E5
	.dw #0x00E6
	.dw #0x00E7
	.dw #0x00E8
	.dw #0x00E9
	.dw #0x00EA
	.dw #0x00EB
	.dw #0x00EC
	.dw #0x00ED
	.dw #0x00ED
	.dw #0x00EE
	.dw #0x00EE
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00F0
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00EF
	.dw #0x00EE
	.dw #0x00EE
	.dw #0x00ED
	.dw #0x00ED
	.dw #0x00EC
	.dw #0x00EB
	.dw #0x00EA
	.dw #0x00E9
	.dw #0x00E8
	.dw #0x00E7
	.dw #0x00E6
	.dw #0x00E5
	.dw #0x00E4
	.dw #0x00E3
	.dw #0x00E1
	.dw #0x00E0
	.dw #0x00DE
	.dw #0x00DD
	.dw #0x00DB
	.dw #0x00DA
	.dw #0x00D8
	.dw #0x00D6
	.dw #0x00D4
	.dw #0x00D2
	.dw #0x00D0
	.dw #0x00CE
	.dw #0x00CC
	.dw #0x00CA
	.dw #0x00C8
	.dw #0x00C6
	.dw #0x00C4
	.dw #0x00C1
	.dw #0x00BF
	.dw #0x00BD
	.dw #0x00BA
	.dw #0x00B8
	.dw #0x00B5
	.dw #0x00B3
	.dw #0x00B0
	.dw #0x00AD
	.dw #0x00AB
	.dw #0x00A8
	.dw #0x00A5
	.dw #0x00A3
	.dw #0x00A0
	.dw #0x009D
	.dw #0x009A
	.dw #0x0098
	.dw #0x0095
	.dw #0x0092
	.dw #0x008F
	.dw #0x008C
	.dw #0x0089
	.dw #0x0086
	.dw #0x0083
	.dw #0x0080
	.dw #0x007D
	.dw #0x007A
	.dw #0x0078
	.dw #0x0075
	.dw #0x0072
	.dw #0x006F
	.dw #0x006C
	.dw #0x0069
	.dw #0x0066
	.dw #0x0063
	.dw #0x0060
	.dw #0x005D
	.dw #0x005A
	.dw #0x0057
	.dw #0x0055
	.dw #0x0052
	.dw #0x004F
	.dw #0x004C
	.dw #0x004A
	.dw #0x0047
	.dw #0x0044
	.dw #0x0042
	.dw #0x003F
	.dw #0x003C
	.dw #0x003A
	.dw #0x0037
	.dw #0x0035
	.dw #0x0032
	.dw #0x0030
	.dw #0x002E
	.dw #0x002B
	.dw #0x0029
	.dw #0x0027
	.dw #0x0025
	.dw #0x0023
	.dw #0x0021
	.dw #0x001F
	.dw #0x001D
	.dw #0x001B
	.dw #0x0019
	.dw #0x0017
	.dw #0x0015
	.dw #0x0014
	.dw #0x0012
	.dw #0x0011
	.dw #0x000F
	.dw #0x000E
	.dw #0x000C
	.dw #0x000B
	.dw #0x000A
	.dw #0x0009
	.dw #0x0008
	.dw #0x0007
	.dw #0x0006
	.dw #0x0005
	.dw #0x0004
	.dw #0x0003
	.dw #0x0002
	.dw #0x0002
	.dw #0x0001
	.dw #0x0001
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0001
	.dw #0x0001
	.dw #0x0002
	.dw #0x0002
	.dw #0x0003
	.dw #0x0004
	.dw #0x0005
	.dw #0x0006
	.dw #0x0007
	.dw #0x0008
	.dw #0x0009
	.dw #0x000A
	.dw #0x000B
	.dw #0x000C
	.dw #0x000E
	.dw #0x000F
	.dw #0x0011
	.dw #0x0012
	.dw #0x0014
	.dw #0x0015
	.dw #0x0017
	.dw #0x0019
	.dw #0x001B
	.dw #0x001D
	.dw #0x001F
	.dw #0x0021
	.dw #0x0023
	.dw #0x0025
	.dw #0x0027
	.dw #0x0029
	.dw #0x002B
	.dw #0x002E
	.dw #0x0030
	.dw #0x0032
	.dw #0x0035
	.dw #0x0037
	.dw #0x003A
	.dw #0x003C
	.dw #0x003F
	.dw #0x0042
	.dw #0x0044
	.dw #0x0047
	.dw #0x004A
	.dw #0x004C
	.dw #0x004F
	.dw #0x0052
	.dw #0x0055
	.dw #0x0057
	.dw #0x005A
	.dw #0x005D
	.dw #0x0060
	.dw #0x0063
	.dw #0x0066
	.dw #0x0069
	.dw #0x006C
	.dw #0x006F
	.dw #0x0072
	.dw #0x0075
;demo.c:66: uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
;	---------------------------------
; Function ge5_load
; ---------------------------------
_ge5_load_start::
_ge5_load:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-46
	add	hl,sp
	ld	sp,hl
;demo.c:70: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x002E
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	push	bc
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:72: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:73: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:75: memcpy(f.name, file_name, 11);
	ld	e,4 (ix)
	ld	d,5 (ix)
	inc	bc
	ld	hl,#0x000B
	push	hl
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:77: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00102$
	ld	l,#0x00
	jp	00114$
00102$:
;demo.c:78: vdp_set_write_address(vramh, vraml);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
;demo.c:80: for (i = 0; i < 213; i++) {
	ld	c,#0x00
00110$:
	ld	a,c
	sub	a,#0xD5
	jp	NC,00113$
;demo.c:81: if (block_set_data_ptr(scratch) != 0) return 0;
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00104$
	ld	l,#0x00
	jp	00114$
00104$:
;demo.c:82: if (block_read(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	bc
	push	hl
	call	_block_read
	pop	af
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00106$
	ld	l,#0x00
	jr	00114$
00106$:
;demo.c:84: if (i == 0) vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
	xor	a,a
	or	a,c
	jr	NZ,00108$
	ld	de,#_scratch + 7
	push	bc
	ld	a,#0x79
	push	af
	inc	sp
	push	de
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	bc
	jr	00112$
00108$:
;demo.c:85: else vdp_load_screen(scratch, 128);
	push	bc
	ld	a,#0x80
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	bc
00112$:
;demo.c:80: for (i = 0; i < 213; i++) {
	inc	c
	jp	00110$
00113$:
;demo.c:88: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:90: return 1;
	ld	l,#0x01
00114$:
	ld	sp,ix
	pop	ix
	ret
_ge5_load_end::
;demo.c:93: void scratch_clear() {
;	---------------------------------
; Function scratch_clear
; ---------------------------------
_scratch_clear_start::
_scratch_clear:
;demo.c:94: memset((uint8_t *) &scratch, 0, 128);
	ld	hl,#0x0080
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
	ret
_scratch_clear_end::
;demo.c:97: uint8_t pal_load(char *file_name, uint8_t ss) {
;	---------------------------------
; Function pal_load
; ---------------------------------
_pal_load_start::
_pal_load:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-46
	add	hl,sp
	ld	sp,hl
;demo.c:100: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x002E
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	push	bc
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:101: scratch_clear();
	call	_scratch_clear
;demo.c:103: f.record_size = ss;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,6 (ix)
	ld	(de),a
;demo.c:104: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:106: memcpy(f.name, file_name, 11);
	ld	e,4 (ix)
	ld	d,5 (ix)
	inc	bc
	ld	hl,#0x000B
	push	hl
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:108: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00102$
	ld	l,#0x00
	jr	00107$
00102$:
;demo.c:109: if (block_set_data_ptr(scratch) != 0) return 0;
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00104$
	ld	l,#0x00
	jr	00107$
00104$:
;demo.c:110: if (block_read(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_block_read
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00106$
	ld	l,#0x00
	jr	00107$
00106$:
;demo.c:112: memcpy(cur_palette, scratch+7, ss);
	ld	c,6 (ix)
	ld	b,#0x00
	ld	de,#_scratch + 7
	push	bc
	push	de
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:114: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:115: return 1;
	ld	l,#0x01
00107$:
	ld	sp,ix
	pop	ix
	ret
_pal_load_end::
;demo.c:119: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;demo.c:120: uint8_t i,j,k = 0;
;demo.c:121: for (i = 0; i < 255; i++) {	
	ld	bc,#0x0000
00104$:
	ld	a,b
	sub	a,#0xFF
	ret	NC
;demo.c:122: for (j = 0; j < 255; j++) {
	ld	e,c
	ld	d,#0xFF
00103$:
;demo.c:123: k++;
	inc	e
	dec	d
;demo.c:122: for (j = 0; j < 255; j++) {
	xor	a,a
	or	a,d
	jr	NZ,00103$
;demo.c:121: for (i = 0; i < 255; i++) {	
	ld	c,e
	inc	b
	jr	00104$
_pause_end::
;demo.c:129: uint8_t raw_load(char *file_name, int size, char* buffer) {
;	---------------------------------
; Function raw_load
; ---------------------------------
_raw_load_start::
_raw_load:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-46
	add	hl,sp
	ld	sp,hl
;demo.c:134: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x002E
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	push	bc
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:135: scratch_clear();
	call	_scratch_clear
;demo.c:137: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:138: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:140: memcpy(f.name, file_name, 11);
	ld	e,4 (ix)
	ld	d,5 (ix)
	inc	bc
	ld	hl,#0x000B
	push	hl
	push	de
	push	bc
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:142: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00116$
	ld	l,#0x00
	jp	00110$
;demo.c:144: while(total < size) {
00116$:
	ld	bc,#0x0000
00107$:
	ld	a,c
	sub	a,6 (ix)
	ld	a,b
	sbc	a,7 (ix)
	jp	P,00109$
;demo.c:145: if (block_set_data_ptr(scratch) != 0) return 0;
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	ld	e,l
	pop	bc
	xor	a,a
	or	a,e
	jr	Z,00104$
	ld	l,#0x00
	jr	00110$
00104$:
;demo.c:146: if (block_read(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	bc
	push	hl
	call	_block_read
	pop	af
	ld	e,l
	pop	bc
	xor	a,a
	or	a,e
	jr	Z,00106$
	ld	l,#0x00
	jr	00110$
00106$:
;demo.c:148: memcpy(buffer+total,scratch,incr);
	ld	a,8 (ix)
	add	a,c
	ld	e,a
	ld	a,9 (ix)
	adc	a,b
	ld	d,a
	push	bc
	ld	hl,#0x0080
	push	hl
	ld	hl,#_scratch
	push	hl
	push	de
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;demo.c:150: total+=incr;
	ld	hl,#0x0080
	add	hl,bc
	ld	c,l
	ld	b,h
	jp	00107$
00109$:
;demo.c:153: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:155: return 1;
	ld	l,#0x01
00110$:
	ld	sp,ix
	pop	ix
	ret
_raw_load_end::
;demo.c:158: void fadein() {
;	---------------------------------
; Function fadein
; ---------------------------------
_fadein_start::
_fadein:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:161: if (tick < 4) return;
	ld	a,(#_tick+0)
	sub	a,#0x04
	ld	a,(#_tick+1)
	sbc	a,#0x00
	jp	P,00102$
	jp	00113$
00102$:
;demo.c:163: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:165: for(i = 0; i < 32; i+=2) {
	ld	c,#0x00
00109$:
	ld	a,c
	sub	a,#0x20
	jp	NC,00112$
;demo.c:166: uint8_t r = scratch[i] >> 4;
	ld	a,#<_scratch
	add	a,c
	ld	e,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	b,a
	ld	e,b
	srl	e
	srl	e
	srl	e
	srl	e
;demo.c:167: uint8_t b = scratch[i] & 0xf;
	ld	a,b
	and	a,#0x0F
	ld	-1 (ix),a
;demo.c:168: uint8_t g = scratch[i+1];
	ld	d,c
	inc	d
	ld	a,#<_scratch
	add	a,d
	ld	l,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	h,a
	ld	d,(hl)
	ld	-2 (ix),d
;demo.c:170: if (r < (cur_palette[i] >> 4)) r++;
	ld	a,#<_cur_palette
	add	a,c
	ld	l,a
	ld	a,#>_cur_palette
	adc	a,#0x00
	ld	h,a
	ld	d,(hl)
	srl	d
	srl	d
	srl	d
	srl	d
	ld	a,e
	sub	a,d
	jr	NC,00104$
	inc	e
00104$:
;demo.c:171: if (b < (cur_palette[i] & 0xf)) b++;
	ld	a,#<_cur_palette
	add	a,c
	ld	l,a
	ld	a,#>_cur_palette
	adc	a,#0x00
	ld	h,a
	ld	a,(hl)
	and	a,#0x0F
	ld	b,a
	ld	a,-1 (ix)
	sub	a,b
	jr	NC,00106$
	inc	-1 (ix)
00106$:
;demo.c:173: scratch[i] = (r << 4) | b;
	ld	a,#<_scratch
	add	a,c
	ld	b,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	d,a
	ld	a,e
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	or	a,-1 (ix)
	ld	l,b
	ld	h,d
	ld	(hl),a
;demo.c:174: if (g < cur_palette[i+1]) scratch[i+1]++;
	ld	b,c
	inc	b
	ld	a,#<_cur_palette
	add	a,b
	ld	e,a
	ld	a,#>_cur_palette
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	a,-2 (ix)
	sub	a,e
	jr	NC,00111$
	ld	a,#<_scratch
	add	a,b
	ld	b,a
	ld	a,#>_scratch
	adc	a,#0x00
	ld	e,a
	ld	l,b
	ld	h,a
	ld	a,(hl)
	inc	a
	ld	l,b
	ld	h,e
	ld	(hl),a
00111$:
;demo.c:165: for(i = 0; i < 32; i+=2) {
	inc	c
	inc	c
	jp	00109$
00112$:
;demo.c:178: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00113$:
	ld	sp,ix
	pop	ix
	ret
_fadein_end::
;demo.c:190: void do_ymmm() {
;	---------------------------------
; Function do_ymmm
; ---------------------------------
_do_ymmm_start::
_do_ymmm:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-21
	add	hl,sp
	ld	sp,hl
;demo.c:195: if (tick > 32) { tick = 0; flipper++;}
	ld	a,#0x20
	ld	iy,#_tick
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_tick
	sbc	a,1 (iy)
	jp	P,00102$
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
	ld	iy,#_flipper
	inc	0 (iy)
	jr	NZ,00115$
	ld	iy,#_flipper
	inc	1 (iy)
00115$:
00102$:
;demo.c:196: if (flipper > 10) { flipper = 0;}
	ld	a,#0x0A
	ld	iy,#_flipper
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_flipper
	sbc	a,1 (iy)
	jp	P,00104$
	ld	hl,#_flipper + 0
	ld	(hl), #0x00
	ld	hl,#_flipper + 1
	ld	(hl), #0x00
00104$:
;demo.c:198: ymmmf++;
	ld	iy,#_ymmmf
	inc	0 (iy)
	jr	NZ,00116$
	ld	iy,#_ymmmf
	inc	1 (iy)
00116$:
;demo.c:199: for (yo = 0; yo<212-step;yo+=step) {
	ld	hl,#_yo + 0
	ld	(hl), #0x00
00105$:
	ld	a,(#_yo+0)
	ld	-19 (ix),a
	ld	-18 (ix),#0x00
	ld	a,-19 (ix)
	sub	a,#0xD2
	ld	a,-18 (ix)
	sbc	a,#0x00
	jp	P,00109$
;demo.c:200: xo = (sintabx[(yo+ymmmf) & 255]);
	ld	hl,#_ymmmf
	ld	a,-19 (ix)
	add	a,(hl)
	ld	e,a
	ld	a,-18 (ix)
	inc	hl
	adc	a,(hl)
	ld	d,#0x00
	sla	e
	rl	d
	ld	hl,#_sintabx
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	-17 (ix),e
	ld	-16 (ix),d
;demo.c:203: cmd.source_x = 0;
	ld	hl,#0x0006
	add	hl,sp
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:204: cmd.source_y = 0+yo;
	ld	hl,#0x0006
	add	hl,sp
	ex	de,hl
	ld	c,e
	ld	b,d
	ld	l,c
	ld	h,b
	inc	hl
	inc	hl
	ld	a,-19 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-18 (ix)
	ld	(hl),a
;demo.c:205: cmd.dest_x = xo;
	ld	hl,#0x0004
	add	hl,de
	ld	a,-17 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-16 (ix)
	ld	(hl),a
;demo.c:206: cmd.dest_y = 3+yo;
	ld	hl,#0x0006
	add	hl,de
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	a,-19 (ix)
	add	a,#0x03
	ld	c,a
	ld	a,-18 (ix)
	adc	a,#0x00
	ld	b,a
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:207: cmd.size_x = 256;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:208: cmd.size_y = 1;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:209: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:210: cmd.argument = 0;
	ld	hl,#0x000D
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:211: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0xD0
	ld	(bc),a
;demo.c:214: vdp_copier(&cmd);
	push	de
	call	_vdp_copier
	pop	af
;demo.c:199: for (yo = 0; yo<212-step;yo+=step) {
	ld	hl,#_yo + 0
	ld	c,(hl)
	ld	hl,#_yo
	ld	a,c
	add	a,#0x02
	ld	(hl),a
	jp	00105$
00109$:
	ld	sp,ix
	pop	ix
	ret
_do_ymmm_end::
;demo.c:231: void do_blocks() {
;	---------------------------------
; Function do_blocks
; ---------------------------------
_do_blocks_start::
_do_blocks:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-23
	add	hl,sp
	ld	sp,hl
;demo.c:234: int ys = 0;
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
;demo.c:235: int ye = 0;
	ld	-21 (ix),#0x00
	ld	-20 (ix),#0x00
;demo.c:237: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:239: if (block_init == 0) {
	xor	a,a
	ld	iy,#_block_init
	or	a,0 (iy)
	jp	NZ,00108$
;demo.c:241: vdp_set_screen5();
	call	_vdp_set_screen5
;demo.c:242: for(i=0;i<16;i++) btab[i] = i*16;
	ld	-17 (ix),#0x00
	ld	-16 (ix),#0x00
00110$:
	ld	a,-17 (ix)
	sub	a,#0x10
	ld	a,-16 (ix)
	sbc	a,#0x00
	jp	P,00113$
	ld	c,-17 (ix)
	ld	b,-16 (ix)
	sla	c
	rl	b
	ld	hl,#_btab
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e,-17 (ix)
	ld	d,-16 (ix)
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	-17 (ix)
	jr	NZ,00139$
	inc	-16 (ix)
00139$:
	jr	00110$
00113$:
;demo.c:243: vdp_load_palette(block_palette);
	ld	hl,#_block_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:245: block_init = 1;
	ld	hl,#_block_init + 0
	ld	(hl), #0x01
	jp	00122$
00108$:
;demo.c:248: if (flof == 0) { ys = 0; ye = 8; }
	ld	a,(#_flof+0)
	ld	iy,#_flof
	or	a,1 (iy)
	jr	NZ,00102$
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
	ld	-21 (ix),#0x08
	ld	-20 (ix),#0x00
00102$:
;demo.c:249: if (flof == 1) { ys = 8; ye = 16; }
	ld	a,(#_flof+0)
	sub	a,#0x01
	jr	NZ,00140$
	ld	a,(#_flof+1)
	or	a,a
	jr	Z,00141$
00140$:
	jr	00104$
00141$:
	ld	-19 (ix),#0x08
	ld	-18 (ix),#0x00
	ld	-21 (ix),#0x10
	ld	-20 (ix),#0x00
00104$:
;demo.c:251: for(bty=3;bty<11;bty++) {
	ld	iy,#_bty
	ld	0 (iy),#0x03
	ld	iy,#_bty
	ld	1 (iy),#0x00
00118$:
	ld	a,(#_bty+0)
	sub	a,#0x0B
	ld	a,(#_bty+1)
	sbc	a,#0x00
	jp	P,00121$
;demo.c:252: for(btx=ys;btx<ye;btx++) {
	ld	a,-19 (ix)
	ld	iy,#_btx
	ld	0 (iy),a
	ld	a,-18 (ix)
	ld	iy,#_btx
	ld	1 (iy),a
00114$:
	ld	a,(#_btx+0)
	sub	a,-21 (ix)
	ld	a,(#_btx+1)
	sbc	a,-20 (ix)
	jp	P,00120$
;demo.c:253: bsx = (PLY_PSGReg8 & PLY_PSGReg9 | PLY_PSGReg10)>>1;
	ld	a,(#_PLY_PSGReg8+0)
	ld	iy,#_PLY_PSGReg9
	and	a,0 (iy)
	ld	hl,#_PLY_PSGReg10 + 0
	or	a,(hl)
	ld	c,a
	srl	c
	ld	hl,#_bsx + 0
	ld	(hl), c
	ld	hl,#_bsx + 1
	ld	(hl), #0x00
;demo.c:254: bsy = PLY_PSGReg10;
	ld	a,(#_PLY_PSGReg10+0)
	ld	hl,#_bsy + 0
	ld	(hl), a
	ld	hl,#_bsy + 1
	ld	(hl), #0x00
;demo.c:255: cmd.source_x = btab[bsx];
	ld	hl,#0x0008
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#_bsx + 0
	ld	e,(hl)
	ld	hl,#_bsx + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:256: cmd.source_y = 256+btab[bsy];
	ld	hl,#0x0008
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	-23 (ix),l
	ld	-22 (ix),h
	ld	hl,#_bsy + 0
	ld	e,(hl)
	ld	hl,#_bsy + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0100
	add	hl,de
	ex	de,hl
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:257: cmd.dest_x = btab[btx];
	ld	hl,#0x0004
	add	hl,bc
	ld	-23 (ix),l
	ld	-22 (ix),h
	ld	hl,#_btx + 0
	ld	e,(hl)
	ld	hl,#_btx + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:258: cmd.dest_y = btab[bty];
	ld	hl,#0x0006
	add	hl,bc
	ld	-23 (ix),l
	ld	-22 (ix),h
	ld	hl,#_bty + 0
	ld	e,(hl)
	ld	hl,#_bty + 1
	ld	d,(hl)
	sla	e
	rl	d
	ld	hl,#_btab
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:259: cmd.size_x = 16;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:260: cmd.size_y = 16;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:261: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:262: cmd.argument = 0;
	ld	hl,#0x000D
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:263: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,bc
	ex	de,hl
	ld	a,#0xD0
	ld	(de),a
;demo.c:264: vdp_copier(&cmd);
	push	bc
	call	_vdp_copier
	pop	af
;demo.c:252: for(btx=ys;btx<ye;btx++) {
	ld	iy,#_btx
	inc	0 (iy)
	jr	NZ,00150$
	ld	iy,#_btx
	inc	1 (iy)
00150$:
	jp	00114$
00120$:
;demo.c:251: for(bty=3;bty<11;bty++) {
	ld	iy,#_bty
	inc	0 (iy)
	jr	NZ,00151$
	ld	iy,#_bty
	inc	1 (iy)
00151$:
	jp	00118$
00121$:
;demo.c:268: flof++;
	ld	iy,#_flof
	inc	0 (iy)
	jr	NZ,00152$
	ld	iy,#_flof
	inc	1 (iy)
00152$:
;demo.c:269: if (flof == 2) flof = 0;
	ld	a,(#_flof+0)
	sub	a,#0x02
	jr	NZ,00153$
	ld	a,(#_flof+1)
	or	a,a
	jr	Z,00154$
00153$:
	jr	00122$
00154$:
	ld	hl,#_flof + 0
	ld	(hl), #0x00
	ld	hl,#_flof + 1
	ld	(hl), #0x00
00122$:
	ld	sp,ix
	pop	ix
	ret
_do_blocks_end::
;demo.c:279: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl
;demo.c:280: unsigned char quit=0;
	ld	-1 (ix),#0x00
;demo.c:281: int modes = 8; // interlace bit on
	ld	-3 (ix),#0x08
	ld	-2 (ix),#0x00
;demo.c:285: spindown();
	call	_spindown
;demo.c:287: puts("demo init\r\n\r\n");
	ld	hl,#__str_0
	push	hl
	call	_puts
	pop	af
;demo.c:289: puts("loading sample data\r\n");
	ld	hl,#__str_1
	push	hl
	call	_puts
	pop	af
;demo.c:291: raw_load("SAMPLE  RAW", 32000, sample_buf);
	ld	hl,#_sample_buf
	push	hl
	ld	hl,#0x7D00
	push	hl
	ld	hl,#__str_2
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
;demo.c:293: puts("Your PSG works perfectly!\r\n");
	ld	hl,#__str_3
	push	hl
	call	_puts
	pop	af
;demo.c:295: while (loops > 0) {
	ld	b,#0x04
	ld	e,#0x00
00101$:
	ld	a,#0x00
	sub	a,b
	ld	a,#0x00
	sbc	a,e
	jp	P,00103$
;demo.c:296: play_sample(sample_buf+2,(51872/2)-400);
	ld	hl,#_sample_buf + 2
	ld	d,l
	ld	c,h
	push	bc
	push	de
	ld	hl,#0x63C0
	push	hl
	ld	l,d
	ld	h,c
	push	hl
	call	_play_sample
	pop	af
	pop	af
	pop	de
	pop	bc
;demo.c:297: loops--;
	ld	l,b
	ld	h,e
	dec	hl
	ld	b,l
	ld	e,h
	jr	00101$
00103$:
;demo.c:300: puts("music init...");
	ld	hl,#__str_4
	push	hl
	call	_puts
	pop	af
;demo.c:302: PLY_SongPtr = (char *)0x0103;
	ld	hl,#_PLY_SongPtr + 0
	ld	(hl), #0x03
	ld	hl,#_PLY_SongPtr + 1
	ld	(hl), #0x01
;demo.c:303: PLY_Init();
	call	_PLY_Init
;demo.c:304: puts("done.\n\n");
	ld	hl,#__str_5
	push	hl
	call	_puts
	pop	af
;demo.c:306: if(isvdp2())
	call	_isvdp2
	xor	a,a
	or	a,l
	jr	Z,00105$
;demo.c:308: modes+=2; // pal
	ld	-3 (ix),#0x0A
	ld	-2 (ix),#0x00
00105$:
;demo.c:312: vdp_set_screen6();
	call	_vdp_set_screen6
;demo.c:314: vdp_register(VDP_MODE3,modes); // interlace on, screen mode pal or ntsc
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	a,#0x09
	push	af
	inc	sp
	call	_vdp_register
	pop	af
;demo.c:316: puts("demo start\r\n");
	ld	hl,#__str_6
	push	hl
	call	_puts
	pop	af
;demo.c:318: scratch_clear();
	call	_scratch_clear
;demo.c:319: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:321: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:323: pal_load("STDBLCK PL5", 32);
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_7
	push	hl
	call	_pal_load
	pop	af
	inc	sp
;demo.c:324: memcpy(block_palette,cur_palette,32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_cur_palette
	push	hl
	ld	hl,#_block_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:326: pal_load("MONOLOG PI6", 8);
	ld	a,#0x08
	push	af
	inc	sp
	ld	hl,#__str_8
	push	hl
	call	_pal_load
	pop	af
	inc	sp
;demo.c:328: memset((uint8_t *) &packbuffer, 0, 5000);
	ld	hl,#0x1388
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_packbuffer
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:329: raw_load("MONOLOG PCK", 2042, packbuffer);
	ld	hl,#_packbuffer
	push	hl
	ld	hl,#0x07FA
	push	hl
	ld	hl,#__str_9
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
;demo.c:330: bitbuster(packbuffer,0x0000); // to page 1
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
;demo.c:332: memset((uint8_t *) &packbuffer, 0, 5000);
	ld	hl,#0x1388
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_packbuffer
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:333: raw_load("STDBLCK PCK", 4884, packbuffer);
	ld	hl,#_packbuffer
	push	hl
	ld	hl,#0x1314
	push	hl
	ld	hl,#__str_10
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
;demo.c:334: bitbuster(packbuffer,0x8000); // to page 1
	ld	hl,#0x8000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
;demo.c:336: scratch_clear();
	call	_scratch_clear
;demo.c:338: install_isr(my_isr);
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
;demo.c:340: while (!quit) {
00115$:
	xor	a,a
	or	a,-1 (ix)
	jr	NZ,00117$
;demo.c:341: waitVB();
		halt 
;demo.c:343: if (vbicount < 192) { 
	ld	a,(#_vbicount+0)
	sub	a,#0xC0
	ld	a,(#_vbicount+1)
	sbc	a,#0x00
	jp	P,00111$
;demo.c:344: fadein(); 
	call	_fadein
	jr	00112$
00111$:
;demo.c:345: } else if (vbicount >= 192 && vbicount < 800) {
	ld	a,(#_vbicount+0)
	sub	a,#0xC0
	ld	a,(#_vbicount+1)
	sbc	a,#0x00
	jp	M,00107$
	ld	a,(#_vbicount+0)
	sub	a,#0x20
	ld	a,(#_vbicount+1)
	sbc	a,#0x03
	jp	P,00107$
;demo.c:346: do_ymmm();
	call	_do_ymmm
	jr	00112$
00107$:
;demo.c:348: do_blocks();
	call	_do_blocks
00112$:
;demo.c:351: if(space())
	ld	hl,#0x0108
	push	hl
	call	_ispressed
	pop	af
	ld	c,l
	xor	a,a
	or	a,l
	jr	Z,00115$
;demo.c:352: quit=1;
	ld	-1 (ix),#0x01
	jr	00115$
00117$:
;demo.c:355: waitVB();
		halt 
;demo.c:356: uninstall_isr();
	call	_uninstall_isr
;demo.c:357: PLY_Stop();
	call	_PLY_Stop
;demo.c:358: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:360: screen(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_screen
	inc	sp
;demo.c:362: puts("demo exit\r\n\r\n");
	ld	hl,#__str_11
	push	hl
	call	_puts
	pop	af
;demo.c:364: exit(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_exit
	inc	sp
	ld	sp,ix
	pop	ix
	ret
_main_end::
__str_0:
	.ascii "demo init"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "loading sample data"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_2:
	.ascii "SAMPLE  RAW"
	.db 0x00
__str_3:
	.ascii "Your PSG works perfectly!"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_4:
	.ascii "music init..."
	.db 0x00
__str_5:
	.ascii "done."
	.db 0x0A
	.db 0x0A
	.db 0x00
__str_6:
	.ascii "demo start"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_7:
	.ascii "STDBLCK PL5"
	.db 0x00
__str_8:
	.ascii "MONOLOG PI6"
	.db 0x00
__str_9:
	.ascii "MONOLOG PCK"
	.db 0x00
__str_10:
	.ascii "STDBLCK PCK"
	.db 0x00
__str_11:
	.ascii "demo exit"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _CABS
