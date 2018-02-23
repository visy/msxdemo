;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Fri Feb 23 17:40:03 2018
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _do_animplay
	.globl _font
	.globl _drawstr
	.globl _do_letter
	.globl _twister
	.globl _raster_effu
	.globl _do_blocks
	.globl _do_ymmm
	.globl _fadein
	.globl _raw_load
	.globl _pause
	.globl _pal_load
	.globl _scratch_clear
	.globl _ge5_load
	.globl _color_isr
	.globl _my_isr
	.globl _isNthBitSet
	.globl _ly
	.globl _lx
	.globl _linenum
	.globl _flof
	.globl _btab
	.globl _bty
	.globl _btx
	.globl _bsy
	.globl _bsx
	.globl _block_init
	.globl _cc
	.globl _yofff
	.globl _tick
	.globl _vbicount
	.globl _block_palette
	.globl _cur_palette
	.globl _scratch
	.globl _packbuffer
	.globl _sintab
	.globl _font_w
	.globl _font_y
	.globl _font_x
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
	.ds 16000
_scratch::
	.ds 128
_cur_palette::
	.ds 32
_block_palette::
	.ds 32
_vbicount::
	.ds 2
_tick::
	.ds 2
_isNthBitSet_mask_1_1:
	.ds 8
_yofff::
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
_linenum::
	.ds 2
_lx::
	.ds 1
_ly::
	.ds 1
_xo:
	.ds 2
_yo:
	.ds 2
_po:
	.ds 2
_fffaaa:
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
;demo.c:47: static unsigned char mask[] = {1, 2, 4, 8, 16, 32, 64, 128};
	ld	hl,#_isNthBitSet_mask_1_1
	call	__initrleblock
	.db	8
	.db	0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80
	.db	0
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
;demo.c:36: uint8_t packbuffer[16000] = {0};
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
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-127,#0x00
	.db	#-125,#0x00
	.db	0
;demo.c:42: volatile int vbicount=0;
	ld	iy,#_vbicount
	ld	0 (iy),#0x00
	ld	iy,#_vbicount
	ld	1 (iy),#0x00
;demo.c:43: volatile int tick=0;
	ld	iy,#_tick
	ld	0 (iy),#0x00
	ld	iy,#_tick
	ld	1 (iy),#0x00
;demo.c:213: uint8_t yofff = 0;
	ld	iy,#_yofff
	ld	0 (iy),#0x00
;demo.c:214: uint8_t cc = 0;
	ld	iy,#_cc
	ld	0 (iy),#0x00
;demo.c:215: static int flipper = 0;
	ld	iy,#_flipper
	ld	0 (iy),#0x00
	ld	iy,#_flipper
	ld	1 (iy),#0x00
;demo.c:216: static int ymmmf = 0;
	ld	iy,#_ymmmf
	ld	0 (iy),#0x00
	ld	iy,#_ymmmf
	ld	1 (iy),#0x00
;demo.c:248: char block_init = 0;
	ld	iy,#_block_init
	ld	0 (iy),#0x00
;demo.c:250: int bsx = 0;
	ld	iy,#_bsx
	ld	0 (iy),#0x00
	ld	iy,#_bsx
	ld	1 (iy),#0x00
;demo.c:251: int bsy = 0;
	ld	iy,#_bsy
	ld	0 (iy),#0x00
	ld	iy,#_bsy
	ld	1 (iy),#0x00
;demo.c:252: int btx = 0;
	ld	iy,#_btx
	ld	0 (iy),#0x00
	ld	iy,#_btx
	ld	1 (iy),#0x00
;demo.c:253: int bty = 0;
	ld	iy,#_bty
	ld	0 (iy),#0x00
	ld	iy,#_bty
	ld	1 (iy),#0x00
;demo.c:255: int btab[16] = {0};
	ld	hl,#_btab
	call	__initrleblock
	.db	#-32,#0x00
	.db	0
;demo.c:257: int flof = 0;
	ld	iy,#_flof
	ld	0 (iy),#0x00
	ld	iy,#_flof
	ld	1 (iy),#0x00
;demo.c:307: int linenum = 0;
	ld	iy,#_linenum
	ld	0 (iy),#0x00
	ld	iy,#_linenum
	ld	1 (iy),#0x00
;demo.c:381: uint8_t lx = 0;
	ld	iy,#_lx
	ld	0 (iy),#0x00
;demo.c:382: uint8_t ly = 0;
	ld	iy,#_ly
	ld	0 (iy),#0x00
;demo.c:422: static int xo = 0;
	ld	iy,#_xo
	ld	0 (iy),#0x00
	ld	iy,#_xo
	ld	1 (iy),#0x00
;demo.c:423: static int yo = 0;
	ld	iy,#_yo
	ld	0 (iy),#0x00
	ld	iy,#_yo
	ld	1 (iy),#0x00
;demo.c:424: static int po = 0;
	ld	iy,#_po
	ld	0 (iy),#0x00
	ld	iy,#_po
	ld	1 (iy),#0x00
;demo.c:425: static int fffaaa = 0;
	ld	iy,#_fffaaa
	ld	0 (iy),#0x00
	ld	iy,#_fffaaa
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
;demo.c:46: int isNthBitSet (unsigned char c, int n) {
;	---------------------------------
; Function isNthBitSet
; ---------------------------------
_isNthBitSet_start::
_isNthBitSet:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:48: return ((c & mask[n]) != 0);
	ld	a,#<_isNthBitSet_mask_1_1
	add	a,5 (ix)
	ld	c,a
	ld	a,#>_isNthBitSet_mask_1_1
	adc	a,6 (ix)
	ld	b,a
	ld	a,(bc)
	and	a,4 (ix)
	jr	NZ,00103$
	ld	a,#0x01
	jr	00104$
00103$:
	xor	a,a
00104$:
	or	a,a
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	c,a
	ld	l,c
	ld	h,#0x00
	pop	ix
	ret
_isNthBitSet_end::
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
;demo.c:55: void my_isr(void) interrupt
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
;demo.c:57: DI;
		di 
;demo.c:59: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:61: PLY_Play();
	call	_PLY_Play
;demo.c:62: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:64: vbicount+=2;
	ld	hl,#_vbicount
	ld	a,(hl)
	add	a,#0x02
	inc	hl
	dec	hl
	push	bc
	ld	c, a
	inc	hl
	ld	a, (hl)
	ld	b, a
	ld	a, c
	dec	hl
	ld	(hl), a
	ld	a, b
	pop	bc
	adc	a,#0x00
	inc	hl
	ld	(hl),a
;demo.c:65: tick++;
	ld	iy,#_tick
	inc	0 (iy)
	jr	NZ,00103$
	ld	iy,#_tick
	inc	1 (iy)
00103$:
;demo.c:67: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_my_isr_end::
;demo.c:70: void color_isr(void) interrupt
;	---------------------------------
; Function color_isr
; ---------------------------------
_color_isr_start::
_color_isr:
	push	af
	push	bc
	push	de
	push	hl
	push	iy
;demo.c:72: DI;
		di 
;demo.c:74: if(isNthBitSet(vdp2_status(1),0)) {
	ld	a,#0x01
	push	af
	inc	sp
	call	_vdp2_status
	inc	sp
	ld	c,l
	ld	hl,#0x0000
	push	hl
	ld	a,c
	push	af
	inc	sp
	call	_isNthBitSet
	pop	af
	inc	sp
	ld	b,h
	ld	c,l
	ld	a,c
	or	a,b
	jr	Z,00102$
;demo.c:75: vdp_register(VDP_VOFFSET,sintab[vbicount & 255]);
	ld	hl,#_vbicount + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#_sintab
	add	hl,bc
	ld	a,(hl)
	push	af
	inc	sp
	ld	a,#0x17
	push	af
	inc	sp
	call	_vdp_register
	pop	af
;demo.c:76: READ_VDP_STATUS;
		in a,(#0x99) 
	jr	00103$
00102$:
;demo.c:79: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:80: vbicount++;
	ld	iy,#_vbicount
	inc	0 (iy)
	jr	NZ,00107$
	ld	iy,#_vbicount
	inc	1 (iy)
00107$:
;demo.c:83: PLY_Play();
	call	_PLY_Play
;demo.c:84: PLY_SendRegisters();
	call	_PLY_SendRegisters
00103$:
;demo.c:87: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_color_isr_end::
;demo.c:94: uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
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
;demo.c:98: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:100: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:101: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:103: memcpy(f.name, file_name, 11);
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
;demo.c:105: if (open(&f) != 0) return 0;
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
;demo.c:106: vdp_set_write_address(vramh, vraml);
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
;demo.c:108: for (i = 0; i < 213; i++) {
	ld	c,#0x00
00110$:
	ld	a,c
	sub	a,#0xD5
	jp	NC,00113$
;demo.c:109: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:110: if (block_read(&f) != 0) return 0;
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
;demo.c:112: if (i == 0) vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
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
;demo.c:113: else vdp_load_screen(scratch, 128);
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
;demo.c:108: for (i = 0; i < 213; i++) {
	inc	c
	jp	00110$
00113$:
;demo.c:116: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:118: return 1;
	ld	l,#0x01
00114$:
	ld	sp,ix
	pop	ix
	ret
_ge5_load_end::
;demo.c:121: void scratch_clear() {
;	---------------------------------
; Function scratch_clear
; ---------------------------------
_scratch_clear_start::
_scratch_clear:
;demo.c:122: memset((uint8_t *) &scratch, 0, 128);
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
;demo.c:125: uint8_t pal_load(char *file_name, uint8_t ss) {
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
;demo.c:128: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:129: scratch_clear();
	call	_scratch_clear
;demo.c:131: f.record_size = ss;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,6 (ix)
	ld	(de),a
;demo.c:132: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:134: memcpy(f.name, file_name, 11);
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
;demo.c:136: if (open(&f) != 0) return 0;
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
;demo.c:137: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:138: if (block_read(&f) != 0) return 0;
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
;demo.c:140: memcpy(cur_palette, scratch+7, ss);
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
;demo.c:142: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:143: return 1;
	ld	l,#0x01
00107$:
	ld	sp,ix
	pop	ix
	ret
_pal_load_end::
;demo.c:147: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;demo.c:148: uint8_t i,j,k = 0;
;demo.c:149: for (i = 0; i < 255; i++) {	
	ld	bc,#0x0000
00104$:
	ld	a,b
	sub	a,#0xFF
	ret	NC
;demo.c:150: for (j = 0; j < 255; j++) {
	ld	e,c
	ld	d,#0xFF
00103$:
;demo.c:151: k++;
	inc	e
	dec	d
;demo.c:150: for (j = 0; j < 255; j++) {
	xor	a,a
	or	a,d
	jr	NZ,00103$
;demo.c:149: for (i = 0; i < 255; i++) {	
	ld	c,e
	inc	b
	jr	00104$
_pause_end::
;demo.c:157: uint8_t raw_load(char *file_name, int size, char* buffer) {
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
;demo.c:162: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:163: scratch_clear();
	call	_scratch_clear
;demo.c:165: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:166: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:168: memcpy(f.name, file_name, 11);
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
;demo.c:170: if (open(&f) != 0) return 0;
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
;demo.c:172: while(total < size) {
00116$:
	ld	bc,#0x0000
00107$:
	ld	a,c
	sub	a,6 (ix)
	ld	a,b
	sbc	a,7 (ix)
	jp	P,00109$
;demo.c:173: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:174: if (block_read(&f) != 0) return 0;
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
;demo.c:176: memcpy(buffer+total,scratch,incr);
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
;demo.c:178: total+=incr;
	ld	hl,#0x0080
	add	hl,bc
	ld	c,l
	ld	b,h
	jp	00107$
00109$:
;demo.c:181: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:183: return 1;
	ld	l,#0x01
00110$:
	ld	sp,ix
	pop	ix
	ret
_raw_load_end::
;demo.c:186: void fadein() {
;	---------------------------------
; Function fadein
; ---------------------------------
_fadein_start::
_fadein:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:189: if (tick < 4) return;
	ld	a,(#_tick+0)
	sub	a,#0x04
	ld	a,(#_tick+1)
	sbc	a,#0x00
	jp	P,00102$
	jp	00113$
00102$:
;demo.c:191: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:193: for(i = 0; i < 32; i+=2) {
	ld	c,#0x00
00109$:
	ld	a,c
	sub	a,#0x20
	jp	NC,00112$
;demo.c:194: uint8_t r = scratch[i] >> 4;
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
;demo.c:195: uint8_t b = scratch[i] & 0xf;
	ld	a,b
	and	a,#0x0F
	ld	-1 (ix),a
;demo.c:196: uint8_t g = scratch[i+1];
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
;demo.c:198: if (r < (cur_palette[i] >> 4)) r++;
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
;demo.c:199: if (b < (cur_palette[i] & 0xf)) b++;
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
;demo.c:201: scratch[i] = (r << 4) | b;
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
;demo.c:202: if (g < cur_palette[i+1]) scratch[i+1]++;
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
;demo.c:193: for(i = 0; i < 32; i+=2) {
	inc	c
	inc	c
	jp	00109$
00112$:
;demo.c:206: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00113$:
	ld	sp,ix
	pop	ix
	ret
_fadein_end::
;demo.c:218: void do_ymmm() {
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
;demo.c:223: if (tick > 32) { tick = 0; flipper++;}
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
;demo.c:224: if (flipper > 10) { flipper = 0;}
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
;demo.c:226: ymmmf++;
	ld	iy,#_ymmmf
	inc	0 (iy)
	jr	NZ,00116$
	ld	iy,#_ymmmf
	inc	1 (iy)
00116$:
;demo.c:227: for (yofff = 0; yofff<212-step;yofff+=step) {
	ld	hl,#_yofff + 0
	ld	(hl), #0x00
00105$:
	ld	a,(#_yofff+0)
	ld	-19 (ix),a
	ld	-18 (ix),#0x00
	ld	a,-19 (ix)
	sub	a,#0xD2
	ld	a,-18 (ix)
	sbc	a,#0x00
	jp	P,00109$
;demo.c:228: xo = (sintabx[(yofff+ymmmf) & 255]);
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
;demo.c:231: cmd.source_x = 0;
	ld	hl,#0x0006
	add	hl,sp
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:232: cmd.source_y = 0+yofff;
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
;demo.c:233: cmd.dest_x = xo;
	ld	hl,#0x0004
	add	hl,de
	ld	a,-17 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-16 (ix)
	ld	(hl),a
;demo.c:234: cmd.dest_y = 3+yofff;
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
;demo.c:235: cmd.size_x = 256;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:236: cmd.size_y = 1;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:237: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:238: cmd.argument = 0;
	ld	hl,#0x000D
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:239: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0xD0
	ld	(bc),a
;demo.c:242: vdp_copier(&cmd);
	push	de
	call	_vdp_copier
	pop	af
;demo.c:227: for (yofff = 0; yofff<212-step;yofff+=step) {
	ld	hl,#_yofff + 0
	ld	c,(hl)
	ld	hl,#_yofff
	ld	a,c
	add	a,#0x02
	ld	(hl),a
	jp	00105$
00109$:
	ld	sp,ix
	pop	ix
	ret
_do_ymmm_end::
;demo.c:259: void do_blocks() {
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
;demo.c:262: int ys = 0;
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
;demo.c:263: int ye = 0;
	ld	-21 (ix),#0x00
	ld	-20 (ix),#0x00
;demo.c:265: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:267: if (block_init == 0) {
	xor	a,a
	ld	iy,#_block_init
	or	a,0 (iy)
	jp	NZ,00108$
;demo.c:269: vdp_set_screen5();
	call	_vdp_set_screen5
;demo.c:271: vdp_register(2, 0x5F);
	ld	hl,#0x5F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:273: for(i=0;i<16;i++) btab[i] = i*16;
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
;demo.c:274: vdp_load_palette(block_palette);
	ld	hl,#_block_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:276: block_init = 1;
	ld	hl,#_block_init + 0
	ld	(hl), #0x01
	jp	00122$
00108$:
;demo.c:280: if (flof == 0) { ys = 0; ye = 8; }
	ld	a,(#_flof+0)
	ld	iy,#_flof
	or	a,1 (iy)
	jr	NZ,00102$
	ld	-19 (ix),#0x00
	ld	-18 (ix),#0x00
	ld	-21 (ix),#0x08
	ld	-20 (ix),#0x00
00102$:
;demo.c:281: if (flof == 1) { ys = 8; ye = 16; }
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
;demo.c:283: for(bty=3;bty<11;bty++) {
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
;demo.c:284: for(btx=ys;btx<ye;btx++) {
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
;demo.c:285: bsx = (PLY_PSGReg8 & PLY_PSGReg9 | PLY_PSGReg10)>>1;
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
;demo.c:286: bsy = PLY_PSGReg10;
	ld	a,(#_PLY_PSGReg10+0)
	ld	hl,#_bsy + 0
	ld	(hl), a
	ld	hl,#_bsy + 1
	ld	(hl), #0x00
;demo.c:287: cmd.source_x = btab[bsx];
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
;demo.c:288: cmd.source_y = 768+btab[bsy];
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
	ld	hl,#0x0300
	add	hl,de
	ex	de,hl
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:289: cmd.dest_x = btab[btx];
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
;demo.c:290: cmd.dest_y = 512+btab[bty];
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
	ld	hl,#0x0200
	add	hl,de
	ex	de,hl
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:291: cmd.size_x = 16;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:292: cmd.size_y = 16;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:293: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:294: cmd.argument = 0x00;
	ld	hl,#0x000D
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:295: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,bc
	ex	de,hl
	ld	a,#0xD0
	ld	(de),a
;demo.c:296: vdp_copier(&cmd);
	push	bc
	call	_vdp_copier
	pop	af
;demo.c:284: for(btx=ys;btx<ye;btx++) {
	ld	iy,#_btx
	inc	0 (iy)
	jr	NZ,00150$
	ld	iy,#_btx
	inc	1 (iy)
00150$:
	jp	00114$
00120$:
;demo.c:283: for(bty=3;bty<11;bty++) {
	ld	iy,#_bty
	inc	0 (iy)
	jr	NZ,00151$
	ld	iy,#_bty
	inc	1 (iy)
00151$:
	jp	00118$
00121$:
;demo.c:300: flof++;
	ld	iy,#_flof
	inc	0 (iy)
	jr	NZ,00152$
	ld	iy,#_flof
	inc	1 (iy)
00152$:
;demo.c:301: if (flof == 2) flof = 0;
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
;demo.c:309: void raster_effu() {
;	---------------------------------
; Function raster_effu
; ---------------------------------
_raster_effu_start::
_raster_effu:
;demo.c:310: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:311: waitVB();
		halt 
;demo.c:313: vdp_register(1,0x40); // disable vblank
	ld	hl,#0x4001
	push	hl
	call	_vdp_register
;demo.c:315: for (linenum = 40; linenum < 212; linenum+=4) {
	ld	a,#0x28
	ld	(#_linenum + 0),a
	pop	af
	ld	iy,#_linenum
	ld	1 (iy),#0x00
00101$:
	ld	a,(#_linenum+0)
	sub	a,#0xD4
	ld	a,(#_linenum+1)
	sbc	a,#0x00
	jp	P,00104$
;demo.c:316: vdp_register(19,linenum); // interrupt on line
	ld	a,(#_linenum+0)
	push	af
	inc	sp
	ld	a,#0x13
	push	af
	inc	sp
	call	_vdp_register
	pop	af
;demo.c:317: vdp_register(0,0x16); // mode SC5, IE1 interrupts on
	ld	hl,#0x1600
	push	hl
	call	_vdp_register
	pop	af
;demo.c:319: waitVB();
		halt 
;demo.c:315: for (linenum = 40; linenum < 212; linenum+=4) {
	ld	hl,#_linenum
	ld	a,(hl)
	add	a,#0x04
	inc	hl
	dec	hl
	push	bc
	ld	c, a
	inc	hl
	ld	a, (hl)
	ld	b, a
	ld	a, c
	dec	hl
	ld	(hl), a
	ld	a, b
	pop	bc
	adc	a,#0x00
	inc	hl
	ld	(hl),a
	jr	00101$
00104$:
;demo.c:322: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:336: vdp_register(0,0x6); // mode SC5, IE1 interrupts off
	ld	hl,#0x0600
	push	hl
	call	_vdp_register
	pop	af
;demo.c:337: vdp_register(1,0x60); // enable vblank
	ld	hl,#0x6001
	push	hl
	call	_vdp_register
	pop	af
	ret
_raster_effu_end::
;demo.c:340: void twister() {
;	---------------------------------
; Function twister
; ---------------------------------
_twister_start::
_twister:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-19
	add	hl,sp
	ld	sp,hl
;demo.c:343: waitVB();
		halt 
;demo.c:344: for (y = 0; y < 212; y+=4) {
	ld	-17 (ix),#0x00
	ld	-16 (ix),#0x00
00101$:
	ld	a,-17 (ix)
	sub	a,#0xD4
	ld	a,-16 (ix)
	sbc	a,#0x00
	jp	P,00104$
;demo.c:345: cmd.source_x = 0;
	ld	hl,#0x0004
	add	hl,sp
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:346: sy = ((sintab[(vbicount+(y>>1)) & 255])>>1)+(256+64);
	ld	e,-17 (ix)
	ld	d,-16 (ix)
	sra	d
	rr	e
	ld	a,(#_vbicount+0)
	add	a,e
	ld	e,a
	ld	a,(#_vbicount+1)
	adc	a,d
	ld	d,#0x00
	ld	hl,#_sintab
	add	hl,de
	ld	e,(hl)
	sra	e
	ld	a,e
	rla	
	sbc	a,a
	ld	d,a
	ld	hl,#0x0140
	add	hl,de
	ld	-19 (ix),l
	ld	-18 (ix),h
;demo.c:347: cmd.source_y = sy;
	ld	hl,#0x0004
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
;demo.c:348: cmd.dest_x = 0;
	ld	hl,#0x0004
	add	hl,de
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:349: cmd.dest_y = y;
	ld	hl,#0x0006
	add	hl,de
	ld	a,-17 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-16 (ix)
	ld	(hl),a
;demo.c:350: cmd.size_x = 70;
	ld	hl,#0x0008
	add	hl,de
	ld	(hl),#0x46
	inc	hl
	ld	(hl),#0x00
;demo.c:351: cmd.size_y = 4;
	ld	hl,#0x000A
	add	hl,de
	ld	(hl),#0x04
	inc	hl
	ld	(hl),#0x00
;demo.c:352: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:353: cmd.argument = 0x00;
	ld	hl,#0x000D
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	(bc),a
;demo.c:354: cmd.command = 0xd0; // logical vram to vram
	ld	hl,#0x000E
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0xD0
	ld	(bc),a
;demo.c:355: vdp_copier(&cmd);
	push	de
	call	_vdp_copier
	pop	af
;demo.c:344: for (y = 0; y < 212; y+=4) {
	ld	a,-17 (ix)
	add	a,#0x04
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a,#0x00
	ld	-16 (ix),a
	jp	00101$
00104$:
;demo.c:358: msx2_palette(4,vbicount>>2,vbicount>>3,vbicount>>2);
	ld	hl,#_vbicount + 0
	ld	c,(hl)
	ld	hl,#_vbicount + 1
	ld	b,(hl)
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl,#_vbicount + 0
	ld	e,(hl)
	ld	hl,#_vbicount + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	b,e
	ld	hl,#_vbicount + 0
	ld	e,(hl)
	ld	hl,#_vbicount + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x04
	push	de
	call	_msx2_palette
	pop	af
	pop	af
	ld	sp,ix
	pop	ix
	ret
_twister_end::
;demo.c:384: void do_letter(char cc) {
;	---------------------------------
; Function do_letter
; ---------------------------------
_do_letter_start::
_do_letter:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-19
	add	hl,sp
	ld	sp,hl
;demo.c:386: int cidx = cc - 65;
	ld	c,4 (ix)
	ld	a,4 (ix)
	rla	
	sbc	a,a
	ld	b,a
	ld	a,c
	add	a,#0xBF
	ld	-17 (ix),a
	ld	a,b
	adc	a,#0xFF
	ld	-16 (ix),a
;demo.c:387: cmd.source_x = 127+font_x[cidx];
	ld	hl,#0x0004
	add	hl,sp
	ex	de,hl
	ld	a,#<_font_x
	add	a,-17 (ix)
	ld	c,a
	ld	a,#>_font_x
	adc	a,-16 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	ld	hl,#0x007F
	add	hl,bc
	ld	c,l
	ld	b,h
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:388: cmd.source_y = 256+font_y[cidx];
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	-19 (ix),l
	ld	-18 (ix),h
	ld	a,#<_font_y
	add	a,-17 (ix)
	ld	e,a
	ld	a,#>_font_y
	adc	a,-16 (ix)
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	hl,#0x0100
	add	hl,de
	ex	de,hl
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:389: cmd.dest_x = lx;
	ld	hl,#0x0004
	add	hl,bc
	ld	-19 (ix),l
	ld	-18 (ix),h
	ld	hl,#_lx + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:390: cmd.dest_y = ly;
	ld	hl,#0x0006
	add	hl,bc
	ld	-19 (ix),l
	ld	-18 (ix),h
	ld	hl,#_ly + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:391: cmd.size_x = font_w[cidx];
	ld	hl,#0x0008
	add	hl,bc
	ld	-19 (ix),l
	ld	-18 (ix),h
	ld	a,#<_font_w
	add	a,-17 (ix)
	ld	e,a
	ld	a,#>_font_w
	adc	a,-16 (ix)
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:392: cmd.size_y = 8;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x08
	inc	hl
	ld	(hl),#0x00
;demo.c:393: cmd.argument = 0x00;
	ld	hl,#0x000D
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:394: cmd.command = 0x90; // logical vram to vram
	ld	hl,#0x000E
	add	hl,bc
	ex	de,hl
	ld	a,#0x90
	ld	(de),a
;demo.c:395: vdp_copier(&cmd);
	push	bc
	call	_vdp_copier
	pop	af
;demo.c:396: lx+=font_w[cidx]-1;
	ld	a,#<_font_w
	add	a,-17 (ix)
	ld	c,a
	ld	a,#>_font_w
	adc	a,-16 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	dec	c
	ld	hl,#_lx
	ld	a,(hl)
	add	a,c
	ld	(hl),a
	ld	sp,ix
	pop	ix
	ret
_do_letter_end::
_font_x:
	.db #0x01
	.db #0x09
	.db #0x11
	.db #0x19
	.db #0x21
	.db #0x29
	.db #0x31
	.db #0x39
	.db #0x41
	.db #0x46
	.db #0x4E
	.db #0x56
	.db #0x5E
	.db #0x01
	.db #0x0A
	.db #0x12
	.db #0x1A
	.db #0x23
	.db #0x2B
	.db #0x33
	.db #0x3C
	.db #0x44
	.db #0x4C
	.db #0x56
	.db #0x5E
	.db #0x67
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x01
	.db #0x09
	.db #0x11
	.db #0x18
	.db #0x20
	.db #0x28
	.db #0x2F
	.db #0x37
	.db #0x3F
	.db #0x45
	.db #0x4C
	.db #0x54
	.db #0x5A
	.db #0x64
	.db #0x01
	.db #0x09
	.db #0x11
	.db #0x19
	.db #0x21
	.db #0x29
	.db #0x30
	.db #0x38
	.db #0x40
	.db #0x4A
	.db #0x52
	.db #0x5A
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_font_y:
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x25
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x37
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db #0x40
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_font_w:
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x04
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x09
	.db #0x08
	.db #0x07
	.db #0x07
	.db #0x08
	.db #0x07
	.db #0x07
	.db #0x08
	.db #0x07
	.db #0x07
	.db #0x09
	.db #0x07
	.db #0x08
	.db #0x07
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x07
	.db #0x07
	.db #0x06
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x05
	.db #0x06
	.db #0x07
	.db #0x05
	.db #0x09
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x07
	.db #0x06
	.db #0x07
	.db #0x07
	.db #0x09
	.db #0x07
	.db #0x07
	.db #0x07
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
;demo.c:399: void drawstr(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstr
; ---------------------------------
_drawstr_start::
_drawstr:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:400: char* c = str;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:401: lx = x;
	ld	e,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), e
;demo.c:402: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:403: while (*c) {
00107$:
	ld	a,(bc)
	ld	d,a
	or	a,a
	jr	Z,00110$
;demo.c:404: char ltr = *c++; 
	inc	bc
;demo.c:405: if (ltr == ' ') lx+=4;
	ld	a,d
	sub	a,#0x20
	jr	NZ,00105$
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	jr	00107$
00105$:
;demo.c:406: else if (ltr == '_') { ly+=9; lx = x; }
	ld	a,d
	sub	a,#0x5F
	jr	NZ,00102$
	ld	hl,#_ly
	ld	a,(hl)
	add	a,#0x09
	ld	(hl),a
	ld	hl,#_lx + 0
	ld	(hl), e
	jr	00107$
00102$:
;demo.c:407: else do_letter(ltr);
	push	bc
	push	de
	push	de
	inc	sp
	call	_do_letter
	inc	sp
	pop	de
	pop	bc
	jr	00107$
00110$:
	pop	ix
	ret
_drawstr_end::
;demo.c:411: void font() {
;	---------------------------------
; Function font
; ---------------------------------
_font_start::
_font:
;demo.c:412: drawstr("THE QUICK BROWN FOX",70,40);
	ld	hl,#0x2846
	push	hl
	ld	hl,#__str_0
	push	hl
	call	_drawstr
	pop	af
	pop	af
;demo.c:413: drawstr("JUMPS OVER THE LAZY DOG",70,49);
	ld	hl,#0x3146
	push	hl
	ld	hl,#__str_1
	push	hl
	call	_drawstr
	pop	af
	pop	af
;demo.c:415: drawstr("the quick brown fox",70,60);
	ld	hl,#0x3C46
	push	hl
	ld	hl,#__str_2
	push	hl
	call	_drawstr
	pop	af
	pop	af
;demo.c:416: drawstr("jumps over the lazy dog",70,69);
	ld	hl,#0x4546
	push	hl
	ld	hl,#__str_3
	push	hl
	call	_drawstr
	pop	af
	pop	af
;demo.c:418: drawstr("This is a test of the_emergency alert system__This is only a test__Please locate your_nearest exit and proceed_to your gate at once",70,100);
	ld	hl,#0x6446
	push	hl
	ld	hl,#__str_4
	push	hl
	call	_drawstr
	pop	af
	pop	af
	ret
_font_end::
__str_0:
	.ascii "THE QUICK BROWN FOX"
	.db 0x00
__str_1:
	.ascii "JUMPS OVER THE LAZY DOG"
	.db 0x00
__str_2:
	.ascii "the quick brown fox"
	.db 0x00
__str_3:
	.ascii "jumps over the lazy dog"
	.db 0x00
__str_4:
	.ascii "This is a test of the_emergency alert system__This is only a"
	.ascii " test__Please locate your_nearest exit and proceed_to your g"
	.ascii "ate at once"
	.db 0x00
;demo.c:426: void do_animplay() {
;	---------------------------------
; Function do_animplay
; ---------------------------------
_do_animplay_start::
_do_animplay:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-20
	add	hl,sp
	ld	sp,hl
;demo.c:432: for (y = 0; y < 106; y+=1) {
	ld	-1 (ix),#0x00
00107$:
	ld	a,-1 (ix)
	sub	a,#0x6A
	jp	NC,00110$
;demo.c:433: cmd.source_x = xo;
	ld	hl,#0x0004
	add	hl,sp
	ex	de,hl
	ld	bc,(_xo)
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:434: cmd.source_y = 256+po+yo+(y>>1);
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	-18 (ix),l
	ld	-17 (ix),h
	ld	a,(#_po+0)
	ld	e,a
	ld	a,(#_po+1)
	add	a,#0x01
	ld	d,a
	ld	hl,#_yo
	ld	a,e
	add	a,(hl)
	ld	-20 (ix),a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	-19 (ix),a
	ld	e,-1 (ix)
	srl	e
	ld	d,#0x00
	ld	a,-20 (ix)
	add	a,e
	ld	e,a
	ld	a,-19 (ix)
	adc	a,d
	ld	d,a
	ld	l,-18 (ix)
	ld	h,-17 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:435: cmd.dest_x = 0;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:436: cmd.dest_y = (y<<1);
	ld	hl,#0x0006
	add	hl,bc
	ld	-20 (ix),l
	ld	-19 (ix),h
	ld	e,-1 (ix)
	ld	d,#0x00
	sla	e
	rl	d
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:437: cmd.size_x = 128;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x00
;demo.c:438: cmd.size_y = 1;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:439: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:440: cmd.argument = 0x00;
	ld	hl,#0x000D
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:441: cmd.command = 0xD0;
	ld	hl,#0x000E
	add	hl,bc
	ex	de,hl
	ld	a,#0xD0
	ld	(de),a
;demo.c:442: vdp_copier(&cmd);
	push	bc
	call	_vdp_copier
	pop	af
;demo.c:432: for (y = 0; y < 106; y+=1) {
	inc	-1 (ix)
	jp	00107$
00110$:
;demo.c:445: for (y = 0; y < 106; y+=1) {
	ld	-1 (ix),#0x00
00111$:
	ld	a,-1 (ix)
	sub	a,#0x6A
	jp	NC,00114$
;demo.c:446: cmd.source_x = xo;
	ld	hl,#0x0004
	add	hl,sp
	ex	de,hl
	ld	bc,(_xo)
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:447: cmd.source_y = 256+po+yo+(y>>1);
	ld	hl,#0x0004
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	-20 (ix),l
	ld	-19 (ix),h
	ld	a,(#_po+0)
	ld	e,a
	ld	a,(#_po+1)
	add	a,#0x01
	ld	d,a
	ld	hl,#_yo
	ld	a,e
	add	a,(hl)
	ld	-18 (ix),a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	-17 (ix),a
	ld	e,-1 (ix)
	srl	e
	ld	d,#0x00
	ld	a,-18 (ix)
	add	a,e
	ld	e,a
	ld	a,-17 (ix)
	adc	a,d
	ld	d,a
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:448: cmd.dest_x = 128;
	ld	hl,#0x0004
	add	hl,bc
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x00
;demo.c:449: cmd.dest_y = (y<<1);
	ld	hl,#0x0006
	add	hl,bc
	ld	-20 (ix),l
	ld	-19 (ix),h
	ld	e,-1 (ix)
	ld	d,#0x00
	sla	e
	rl	d
	ld	l,-20 (ix)
	ld	h,-19 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:450: cmd.size_x = 128;
	ld	hl,#0x0008
	add	hl,bc
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x00
;demo.c:451: cmd.size_y = 1;
	ld	hl,#0x000A
	add	hl,bc
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:452: cmd.data = 0;
	ld	hl,#0x000C
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:453: cmd.argument = 0x00;
	ld	hl,#0x000D
	add	hl,bc
	ex	de,hl
	ld	a,#0x00
	ld	(de),a
;demo.c:454: cmd.command = 0xd2; // logical vram to vram, xor
	ld	hl,#0x000E
	add	hl,bc
	ex	de,hl
	ld	a,#0xD2
	ld	(de),a
;demo.c:455: vdp_copier(&cmd);
	push	bc
	call	_vdp_copier
	pop	af
;demo.c:445: for (y = 0; y < 106; y+=1) {
	inc	-1 (ix)
	jp	00111$
00114$:
;demo.c:459: xo+=128;
	ld	hl,#_xo
	ld	a,(hl)
	add	a,#0x80
	inc	hl
	dec	hl
	push	bc
	ld	c, a
	inc	hl
	ld	a, (hl)
	ld	b, a
	ld	a, c
	dec	hl
	ld	(hl), a
	ld	a, b
	pop	bc
	adc	a,#0x00
	inc	hl
	ld	(hl),a
;demo.c:460: if (xo >= 256) {
	ld	a,(#_xo+0)
	sub	a,#0x00
	ld	a,(#_xo+1)
	sbc	a,#0x01
	jp	M,00106$
;demo.c:461: xo = 0;
	ld	hl,#_xo + 0
	ld	(hl), #0x00
	ld	hl,#_xo + 1
	ld	(hl), #0x00
;demo.c:462: yo+=53;
	ld	hl,#_yo
	ld	a,(hl)
	add	a,#0x35
	inc	hl
	dec	hl
	push	bc
	ld	c, a
	inc	hl
	ld	a, (hl)
	ld	b, a
	ld	a, c
	dec	hl
	ld	(hl), a
	ld	a, b
	pop	bc
	adc	a,#0x00
	inc	hl
	ld	(hl),a
;demo.c:463: if (yo >= 212) { yo = 0; po+=256; }
	ld	a,(#_yo+0)
	sub	a,#0xD4
	ld	a,(#_yo+1)
	sbc	a,#0x00
	jp	M,00102$
	ld	hl,#_yo + 0
	ld	(hl), #0x00
	ld	hl,#_yo + 1
	ld	(hl), #0x00
	ld	hl,#_po
	ld	a,(hl)
	add	a,#0x00
	inc	hl
	dec	hl
	push	bc
	ld	c, a
	inc	hl
	ld	a, (hl)
	ld	b, a
	ld	a, c
	dec	hl
	ld	(hl), a
	ld	a, b
	pop	bc
	adc	a,#0x01
	inc	hl
	ld	(hl),a
00102$:
;demo.c:464: if (po >= 768) {
	ld	a,(#_po+0)
	sub	a,#0x00
	ld	a,(#_po+1)
	sbc	a,#0x03
	jp	M,00106$
;demo.c:465: po = 0;
	ld	hl,#_po + 0
	ld	(hl), #0x00
	ld	hl,#_po + 1
	ld	(hl), #0x00
00106$:
;demo.c:470: msx2_palette(15,3+sintab[fffaaa & 255]>>5,3,4);
	ld	hl,#_fffaaa + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#_sintab
	add	hl,bc
	ld	a,(hl)
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
	inc	bc
	inc	bc
	inc	bc
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl,#0x0403
	push	hl
	ld	b,c
	ld	c,#0x0F
	push	bc
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:471: msx2_palette(3,2+sintab[fffaaa & 255]>>5,0,0);
	ld	hl,#_fffaaa + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#_sintab
	add	hl,bc
	ld	a,(hl)
	ld	c,a
	rla	
	sbc	a,a
	ld	b,a
	inc	bc
	inc	bc
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl,#0x0000
	push	hl
	ld	b,c
	ld	c,#0x03
	push	bc
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:472: fffaaa++;
	ld	iy,#_fffaaa
	inc	0 (iy)
	jr	NZ,00132$
	ld	iy,#_fffaaa
	inc	1 (iy)
00132$:
	ld	sp,ix
	pop	ix
	ret
_do_animplay_end::
;demo.c:481: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;demo.c:482: unsigned char quit=0;
	ld	c,#0x00
;demo.c:483: int modes = 128; // interlace bit on
	ld	de,#0x0080
;demo.c:487: spindown();
	push	bc
	push	de
	call	_spindown
	pop	de
	pop	bc
;demo.c:489: puts("demo init\r\n\r\n");
	push	bc
	push	de
	ld	hl,#__str_5
	push	hl
	call	_puts
	pop	af
	pop	de
	pop	bc
;demo.c:502: puts("music init...");
	push	bc
	push	de
	ld	hl,#__str_6
	push	hl
	call	_puts
	pop	af
	pop	de
	pop	bc
;demo.c:504: PLY_SongPtr = (char *)0x0103;
	ld	hl,#_PLY_SongPtr + 0
	ld	(hl), #0x03
	ld	hl,#_PLY_SongPtr + 1
	ld	(hl), #0x01
;demo.c:505: PLY_Init();
	push	bc
	push	de
	call	_PLY_Init
	pop	de
	pop	bc
;demo.c:506: puts("done.\n\n");
	push	bc
	push	de
	ld	hl,#__str_7
	push	hl
	call	_puts
	pop	af
	pop	de
	pop	bc
;demo.c:508: if(isvdp2())
	push	bc
	push	de
	call	_isvdp2
	ld	b,l
	pop	de
	ld	a,b
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00102$
;demo.c:510: modes+=2; // pal
	ld	de,#0x0082
00102$:
;demo.c:514: vdp_set_screen5();
	push	bc
	push	de
	call	_vdp_set_screen5
	pop	de
	pop	bc
;demo.c:516: vdp_register(VDP_MODE3,modes); // interlace on, screen mode pal or ntsc
	ld	b,e
	push	bc
	push	bc
	inc	sp
	ld	a,#0x09
	push	af
	inc	sp
	call	_vdp_register
	pop	af
	pop	bc
;demo.c:518: puts("demo start\r\n");
	push	bc
	ld	hl,#__str_8
	push	hl
	call	_puts
	pop	af
	pop	bc
;demo.c:520: scratch_clear();
	push	bc
	call	_scratch_clear
	pop	bc
;demo.c:521: vdp_load_palette(scratch);
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
	pop	bc
;demo.c:523: vdp_register(VDP_VOFFSET,0);
	push	bc
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
	pop	bc
;demo.c:524: pal_load("TWISTER PL5",32);
	push	bc
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_9
	push	hl
	call	_pal_load
	pop	af
	inc	sp
	pop	bc
;demo.c:525: vdp_load_palette(cur_palette);
	push	bc
	ld	hl,#_cur_palette
	push	hl
	call	_vdp_load_palette
	pop	af
	pop	bc
;demo.c:527: memset((uint8_t *) &packbuffer, 0, 4032);
	push	bc
	ld	hl,#0x0FC0
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
	pop	bc
;demo.c:528: raw_load("TWISTER PCK", 4032, packbuffer);
	push	bc
	ld	hl,#_packbuffer
	push	hl
	ld	hl,#0x0FC0
	push	hl
	ld	hl,#__str_10
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	bc
;demo.c:529: bitbuster(packbuffer,0x8000,VRAM_0); // to page 1
	push	bc
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x8000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
	pop	bc
;demo.c:532: vdp_set_write_address(0, 0);
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
	pop	bc
;demo.c:533: memset((uint8_t *) &scratch, 0, 256);
	push	bc
	ld	hl,#0x0100
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
	pop	bc
;demo.c:535: for (i = 0; i < 213; i++) {		
	ld	de,#0x00D5
00110$:
;demo.c:536: vdp_load_screen(scratch, 128);
	push	bc
	push	de
	ld	a,#0x80
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	de
	pop	bc
	dec	de
;demo.c:535: for (i = 0; i < 213; i++) {		
	ld	a,e
	or	a,d
	jr	NZ,00110$
;demo.c:567: install_isr(my_isr);
	push	bc
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
	pop	bc
;demo.c:589: twister();
	push	bc
	call	_twister
	pop	bc
;demo.c:590: font();
	push	bc
	call	_font
	pop	bc
;demo.c:592: while (!quit) {
00105$:
	xor	a,a
	or	a,c
	jr	NZ,00107$
;demo.c:596: twister();
	push	bc
	call	_twister
	pop	bc
;demo.c:607: if(space())
	push	bc
	ld	hl,#0x0108
	push	hl
	call	_ispressed
	pop	af
	ld	a,l
	pop	bc
	ld	b,a
	or	a,a
	jr	Z,00105$
;demo.c:608: quit=1;
	ld	c,#0x01
	jr	00105$
00107$:
;demo.c:611: waitVB();
		halt 
;demo.c:612: uninstall_isr();
	call	_uninstall_isr
;demo.c:613: PLY_Stop();
	call	_PLY_Stop
;demo.c:614: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:616: screen(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_screen
	inc	sp
;demo.c:618: puts("demo exit\r\n\r\n");
	ld	hl,#__str_11
	push	hl
	call	_puts
	pop	af
;demo.c:620: exit(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_exit
	inc	sp
	ret
_main_end::
__str_5:
	.ascii "demo init"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_6:
	.ascii "music init..."
	.db 0x00
__str_7:
	.ascii "done."
	.db 0x0A
	.db 0x0A
	.db 0x00
__str_8:
	.ascii "demo start"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_9:
	.ascii "TWISTER PL5"
	.db 0x00
__str_10:
	.ascii "TWISTER PCK"
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
