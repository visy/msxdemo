;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Tue Mar 27 15:08:02 2018
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _do_quit
	.globl _credits
	.globl _waiter
	.globl _bigtext
	.globl _points
	.globl _logoeffu
	.globl _abs
	.globl _tritiles
	.globl _drawtilescreen_full
	.globl _drawtilescreen
	.globl _drawtritile
	.globl _thewave
	.globl _boxes
	.globl _drawbox
	.globl _animplay
	.globl _bulbs
	.globl _twister
	.globl _font
	.globl _drawsine
	.globl _drawstr2x
	.globl _drawstrslow
	.globl _drawstr
	.globl _do_letter_tall
	.globl _do_letter
	.globl _do_2xletter
	.globl _raster_effu
	.globl _do_blocks
	.globl _do_ymmm
	.globl _fadein
	.globl _pck_load
	.globl _raw_load
	.globl _pause
	.globl _pal_load
	.globl _scratch_clear
	.globl _my_isr
	.globl _isNthBitSet
	.globl _timeindex
	.globl _sceneindex
	.globl _myoffs
	.globl _curpage
	.globl _flipo
	.globl _musicstopped
	.globl _credittimer
	.globl _initcredits
	.globl _bigtextp
	.globl _greetindex
	.globl _pointframe
	.globl _initpoints
	.globl _onceclear
	.globl _powa
	.globl _powatick
	.globl _triframes
	.globl _tripaltick2
	.globl _tripaltick
	.globl _tripal
	.globl _tiletick
	.globl _tiley
	.globl _tilex
	.globl _tilei
	.globl _tri_inited
	.globl _ffa
	.globl _buf
	.globl _initwave
	.globl _boxticks
	.globl _prevbox_of
	.globl _boxes_of
	.globl _pbt
	.globl _pbx
	.globl _bonc
	.globl _bo
	.globl _bt
	.globl _by
	.globl _bx
	.globl _boxi
	.globl _boxes_y
	.globl _boxes_x
	.globl _prevy
	.globl _prevx
	.globl _buffer
	.globl _boxes_init
	.globl _anim_init
	.globl _sy
	.globl _enderdir
	.globl _ender
	.globl _ff2
	.globl _ff1
	.globl _bulbflipper
	.globl _twialku
	.globl _twinited
	.globl _ff
	.globl _slowend
	.globl _ltrpointer
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
	.globl _scenetimings
	.globl _scenepointers
	.globl _cmd
	.globl _tick
	.globl _vbicount
	.globl _credits_palette
	.globl _boxes_palette
	.globl _tf_palette
	.globl _twister_palette
	.globl _block_palette
	.globl _bulbs_palette
	.globl _cur_palette
	.globl _scratch
	.globl _crebuffer3
	.globl _crebuffer2
	.globl _crebuffer1
	.globl _packbuffer
	.globl _tri_lookup_y
	.globl _eighttimes
	.globl _twelvetimes
	.globl _tri_lookup_x
	.globl _sintab
	.globl _font_w
	.globl _font_y
	.globl _font_x
	.globl _tri_inva4
	.globl _tri_inva3
	.globl _tri_inva2
	.globl _tri_inva1
	.globl _tri_side2
	.globl _tri_side1
	.globl _tri_dia
	.globl _tri_up
	.globl _tri_center
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
_tri_lookup_x::
	.ds 32
_twelvetimes::
	.ds 52
_eighttimes::
	.ds 52
_tri_lookup_y::
	.ds 64
_packbuffer::
	.ds 4100
_crebuffer1::
	.ds 3323
_crebuffer2::
	.ds 4724
_crebuffer3::
	.ds 3723
_scratch::
	.ds 128
_cur_palette::
	.ds 32
_bulbs_palette::
	.ds 32
_block_palette::
	.ds 32
_twister_palette::
	.ds 32
_tf_palette::
	.ds 32
_boxes_palette::
	.ds 32
_credits_palette::
	.ds 32
_vbicount::
	.ds 2
_tick::
	.ds 2
_cmd::
	.ds 15
_scenepointers::
	.ds 24
_scenetimings::
	.ds 48
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
_ltrpointer::
	.ds 2
_slowend::
	.ds 2
_ff::
	.ds 2
_twinited::
	.ds 2
_twialku::
	.ds 2
_bulbflipper::
	.ds 2
_ff1::
	.ds 2
_ff2::
	.ds 2
_ender::
	.ds 2
_enderdir::
	.ds 2
_sy::
	.ds 2
_xo:
	.ds 2
_yo:
	.ds 2
_po:
	.ds 2
_frames:
	.ds 2
_anim_init::
	.ds 2
_boxes_init::
	.ds 1
_buffer::
	.ds 2
_prevx::
	.ds 2
_prevy::
	.ds 2
_boxes_x::
	.ds 5
_boxes_y::
	.ds 10
_boxi::
	.ds 1
_bx::
	.ds 2
_by::
	.ds 2
_bt::
	.ds 2
_bo::
	.ds 2
_bonc::
	.ds 2
_pbx::
	.ds 2
_pbt::
	.ds 2
_boxes_of::
	.ds 10
_prevbox_of::
	.ds 1
_boxticks::
	.ds 2
_initwave::
	.ds 1
_buf::
	.ds 2
_ffa::
	.ds 2
_tri_inited::
	.ds 1
_tilei::
	.ds 2
_tilex::
	.ds 2
_tiley::
	.ds 2
_tiletick::
	.ds 1
_tripal::
	.ds 9
_tripaltick::
	.ds 1
_tripaltick2::
	.ds 1
_triframes::
	.ds 2
_powatick::
	.ds 2
_powa::
	.ds 2
_onceclear::
	.ds 1
_initpoints::
	.ds 1
_pointframe::
	.ds 2
_greetindex::
	.ds 2
_bigtextp::
	.ds 2
_initcredits::
	.ds 2
_credittimer::
	.ds 2
_musicstopped::
	.ds 2
_flipo::
	.ds 2
_curpage::
	.ds 2
_myoffs::
	.ds 2
_sceneindex::
	.ds 2
_timeindex::
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
;demo.c:235: static unsigned char mask[] = {1, 2, 4, 8, 16, 32, 64, 128};
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
;demo.c:176: uint8_t tri_lookup_x[16*2] = { 0 };
	ld	hl,#_tri_lookup_x
	call	__initrleblock
	.db	#-32,#0x00
	.db	0
;demo.c:177: int twelvetimes[26] = { 0 };
	ld	hl,#_twelvetimes
	call	__initrleblock
	.db	#-52,#0x00
	.db	0
;demo.c:178: int eighttimes[26] = { 0 };
	ld	hl,#_eighttimes
	call	__initrleblock
	.db	#-52,#0x00
	.db	0
;demo.c:180: int tri_lookup_y[16*2] = { 0 };
	ld	hl,#_tri_lookup_y
	call	__initrleblock
	.db	#-64,#0x00
	.db	0
;demo.c:182: uint8_t packbuffer[4100] = {0};
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
	.db	#-36,#0x00
	.db	0
;demo.c:184: uint8_t crebuffer1[3323] = {0};
	ld	hl,#_crebuffer1
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
	.db	#-21,#0x00
	.db	0
;demo.c:185: uint8_t crebuffer2[4724] = {0};
	ld	hl,#_crebuffer2
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
	.db	#-25,#0x00
	.db	0
;demo.c:186: uint8_t crebuffer3[3723] = {0};
	ld	hl,#_crebuffer3
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
	.db	#-40,#0x00
	.db	0
;demo.c:198: volatile int vbicount=0;
	ld	iy,#_vbicount
	ld	0 (iy),#0x00
	ld	iy,#_vbicount
	ld	1 (iy),#0x00
;demo.c:199: volatile int tick=0;
	ld	iy,#_tick
	ld	0 (iy),#0x00
	ld	iy,#_tick
	ld	1 (iy),#0x00
;demo.c:204: void (*scenepointers[12])() = {
	ld	hl,#_scenepointers
	ld	(hl),#<_waiter
	inc	hl
	ld	(hl),#>_waiter
	ld	hl, #_scenepointers + 2
	ld	(hl),#<_logoeffu
	inc	hl
	ld	(hl),#>_logoeffu
	ld	bc,#_scenepointers + 4
	ld	l,c
	ld	h,b
	ld	(hl),#<_bulbs
	inc	hl
	ld	(hl),#>_bulbs
	ld	hl, #_scenepointers + 6
	ld	(hl),#<_twister
	inc	hl
	ld	(hl),#>_twister
	ld	bc,#_scenepointers + 8
	ld	l,c
	ld	h,b
	ld	(hl),#<_boxes
	inc	hl
	ld	(hl),#>_boxes
	ld	hl, #_scenepointers + 10
	ld	(hl),#<_thewave
	inc	hl
	ld	(hl),#>_thewave
	ld	hl, #_scenepointers + 12
	ld	(hl),#<_tritiles
	inc	hl
	ld	(hl),#>_tritiles
	ld	hl, #_scenepointers + 14
	ld	(hl),#<_points
	inc	hl
	ld	(hl),#>_points
	ld	bc,#_scenepointers + 16
	ld	l,c
	ld	h,b
	ld	(hl),#<_bigtext
	inc	hl
	ld	(hl),#>_bigtext
	ld	bc,#_scenepointers + 18
	ld	l,c
	ld	h,b
	ld	(hl),#<_credits
	inc	hl
	ld	(hl),#>_credits
	ld	bc,#_scenepointers + 20
	ld	l,c
	ld	h,b
	ld	(hl),#<_do_quit
	inc	hl
	ld	(hl),#>_do_quit
;demo.c:218: int scenetimings[24] = {
	ld	hl,#_scenetimings
	call	__initrleblock
	.db	48
	.db	0x00, 0x00, 0xAA, 0x00, 0xAA, 0x00, 0x5E, 0x01
	.db	0xEE, 0x02, 0x14, 0x05, 0x14, 0x05, 0xFC, 0x08
	.db	0xFC, 0x08, 0x10, 0x0E, 0x10, 0x0E, 0x04, 0x10
	.db	0x04, 0x10, 0xAE, 0x15, 0xAE, 0x15, 0xD4, 0x17
	.db	0xD4, 0x17, 0xD5, 0x20, 0xD5, 0x20, 0x74, 0x27
	.db	0x74, 0x27, 0xA0, 0x86, 0x00, 0x00, 0x00, 0x00
	.db	0
;demo.c:378: uint8_t yofff = 0;
	ld	iy,#_yofff
	ld	0 (iy),#0x00
;demo.c:379: uint8_t cc = 0;
	ld	iy,#_cc
	ld	0 (iy),#0x00
;demo.c:380: static int flipper = 0;
	ld	iy,#_flipper
	ld	0 (iy),#0x00
	ld	iy,#_flipper
	ld	1 (iy),#0x00
;demo.c:381: static int ymmmf = 0;
	ld	iy,#_ymmmf
	ld	0 (iy),#0x00
	ld	iy,#_ymmmf
	ld	1 (iy),#0x00
;demo.c:386: char block_init = 0;
	ld	iy,#_block_init
	ld	0 (iy),#0x00
;demo.c:388: int bsx = 0;
	ld	iy,#_bsx
	ld	0 (iy),#0x00
	ld	iy,#_bsx
	ld	1 (iy),#0x00
;demo.c:389: int bsy = 0;
	ld	iy,#_bsy
	ld	0 (iy),#0x00
	ld	iy,#_bsy
	ld	1 (iy),#0x00
;demo.c:390: int btx = 0;
	ld	iy,#_btx
	ld	0 (iy),#0x00
	ld	iy,#_btx
	ld	1 (iy),#0x00
;demo.c:391: int bty = 0;
	ld	iy,#_bty
	ld	0 (iy),#0x00
	ld	iy,#_bty
	ld	1 (iy),#0x00
;demo.c:393: int btab[16] = {0};
	ld	hl,#_btab
	call	__initrleblock
	.db	#-32,#0x00
	.db	0
;demo.c:395: int flof = 0;
	ld	iy,#_flof
	ld	0 (iy),#0x00
	ld	iy,#_flof
	ld	1 (iy),#0x00
;demo.c:400: int linenum = 0;
	ld	iy,#_linenum
	ld	0 (iy),#0x00
	ld	iy,#_linenum
	ld	1 (iy),#0x00
;demo.c:430: uint8_t lx = 0;
	ld	iy,#_lx
	ld	0 (iy),#0x00
;demo.c:431: uint8_t ly = 0;
	ld	iy,#_ly
	ld	0 (iy),#0x00
;demo.c:516: int ltrpointer = 0;
	ld	iy,#_ltrpointer
	ld	0 (iy),#0x00
	ld	iy,#_ltrpointer
	ld	1 (iy),#0x00
;demo.c:517: int slowend = 128;
	ld	iy,#_slowend
	ld	0 (iy),#0x80
	ld	iy,#_slowend
	ld	1 (iy),#0x00
;demo.c:576: int ff = 0;
	ld	iy,#_ff
	ld	0 (iy),#0x00
	ld	iy,#_ff
	ld	1 (iy),#0x00
;demo.c:577: int twinited = 0;
	ld	iy,#_twinited
	ld	0 (iy),#0x00
	ld	iy,#_twinited
	ld	1 (iy),#0x00
;demo.c:578: int twialku = 2;
	ld	iy,#_twialku
	ld	0 (iy),#0x02
	ld	iy,#_twialku
	ld	1 (iy),#0x00
;demo.c:652: int bulbflipper = 1;
	ld	iy,#_bulbflipper
	ld	0 (iy),#0x01
	ld	iy,#_bulbflipper
	ld	1 (iy),#0x00
;demo.c:654: int ff1,ff2 = 0;
	ld	iy,#_ff2
	ld	0 (iy),#0x00
	ld	iy,#_ff2
	ld	1 (iy),#0x00
;demo.c:655: int ender = 212;
	ld	iy,#_ender
	ld	0 (iy),#0xD4
	ld	iy,#_ender
	ld	1 (iy),#0x00
;demo.c:656: int enderdir = -1;
	ld	iy,#_enderdir
	ld	0 (iy),#0xFF
	ld	iy,#_enderdir
	ld	1 (iy),#0xFF
;demo.c:657: int sy = 16;
	ld	iy,#_sy
	ld	0 (iy),#0x10
	ld	iy,#_sy
	ld	1 (iy),#0x00
;demo.c:713: static int xo = 0;
	ld	iy,#_xo
	ld	0 (iy),#0x00
	ld	iy,#_xo
	ld	1 (iy),#0x00
;demo.c:714: static int yo = 0;
	ld	iy,#_yo
	ld	0 (iy),#0x00
	ld	iy,#_yo
	ld	1 (iy),#0x00
;demo.c:715: static int po = 0;
	ld	iy,#_po
	ld	0 (iy),#0x00
	ld	iy,#_po
	ld	1 (iy),#0x00
;demo.c:716: static int frames = 0;
	ld	iy,#_frames
	ld	0 (iy),#0x00
	ld	iy,#_frames
	ld	1 (iy),#0x00
;demo.c:718: int anim_init = 0;
	ld	iy,#_anim_init
	ld	0 (iy),#0x00
	ld	iy,#_anim_init
	ld	1 (iy),#0x00
;demo.c:724: uint8_t boxes_init = 0;
	ld	iy,#_boxes_init
	ld	0 (iy),#0x00
;demo.c:725: int buffer = 1;
	ld	iy,#_buffer
	ld	0 (iy),#0x01
	ld	iy,#_buffer
	ld	1 (iy),#0x00
;demo.c:726: int prevx = -1;
	ld	iy,#_prevx
	ld	0 (iy),#0xFF
	ld	iy,#_prevx
	ld	1 (iy),#0xFF
;demo.c:728: uint8_t boxes_x[5] = {0,36,0,36,0};
	ld	hl,#_boxes_x
	call	__initrleblock
	.db	5
	.db	0x00, 0x24, 0x00, 0x24, 0x00
	.db	0
;demo.c:729: int boxes_y[5] = {768,768,768+36,768+36,0};
	ld	hl,#_boxes_y
	call	__initrleblock
	.db	10
	.db	0x00, 0x03, 0x00, 0x03, 0x24, 0x03, 0x24, 0x03
	.db	0x00, 0x00
	.db	0
;demo.c:730: uint8_t boxi = 0;
	ld	iy,#_boxi
	ld	0 (iy),#0x00
;demo.c:731: int bx = 220;
	ld	iy,#_bx
	ld	0 (iy),#0xDC
	ld	iy,#_bx
	ld	1 (iy),#0x00
;demo.c:732: int by = 84;
	ld	iy,#_by
	ld	0 (iy),#0x54
	ld	iy,#_by
	ld	1 (iy),#0x00
;demo.c:750: int bt = 0;
	ld	iy,#_bt
	ld	0 (iy),#0x00
	ld	iy,#_bt
	ld	1 (iy),#0x00
;demo.c:751: int bo = 0;
	ld	iy,#_bo
	ld	0 (iy),#0x00
	ld	iy,#_bo
	ld	1 (iy),#0x00
;demo.c:753: int bonc = 0;
	ld	iy,#_bonc
	ld	0 (iy),#0x00
	ld	iy,#_bonc
	ld	1 (iy),#0x00
;demo.c:754: int pbx = 0;
	ld	iy,#_pbx
	ld	0 (iy),#0x00
	ld	iy,#_pbx
	ld	1 (iy),#0x00
;demo.c:755: int pbt = 0;
	ld	iy,#_pbt
	ld	0 (iy),#0x00
	ld	iy,#_pbt
	ld	1 (iy),#0x00
;demo.c:757: int boxes_of[5] = {0,0,6,0,0};
	ld	hl,#_boxes_of
	call	__initrleblock
	.db	5
	.db	0x00, 0x00, 0x00, 0x00, 0x06
	.db	#-5,#0x00
	.db	0
;demo.c:758: uint8_t prevbox_of = 0;
	ld	iy,#_prevbox_of
	ld	0 (iy),#0x00
;demo.c:759: int boxticks = 0;
	ld	iy,#_boxticks
	ld	0 (iy),#0x00
	ld	iy,#_boxticks
	ld	1 (iy),#0x00
;demo.c:879: uint8_t initwave = 0;
	ld	iy,#_initwave
	ld	0 (iy),#0x00
;demo.c:880: int buf = -1;
	ld	iy,#_buf
	ld	0 (iy),#0xFF
	ld	iy,#_buf
	ld	1 (iy),#0xFF
;demo.c:881: int ffa = 0;
	ld	iy,#_ffa
	ld	0 (iy),#0x00
	ld	iy,#_ffa
	ld	1 (iy),#0x00
;demo.c:1002: uint8_t tri_inited = 0;
	ld	iy,#_tri_inited
	ld	0 (iy),#0x00
;demo.c:1017: int tilei = 0;
	ld	iy,#_tilei
	ld	0 (iy),#0x00
	ld	iy,#_tilei
	ld	1 (iy),#0x00
;demo.c:1018: int tilex = 0;
	ld	iy,#_tilex
	ld	0 (iy),#0x00
	ld	iy,#_tilex
	ld	1 (iy),#0x00
;demo.c:1019: int tiley = 0;
	ld	iy,#_tiley
	ld	0 (iy),#0x00
	ld	iy,#_tiley
	ld	1 (iy),#0x00
;demo.c:1020: uint8_t tiletick = 0;
	ld	iy,#_tiletick
	ld	0 (iy),#0x00
;demo.c:1050: char tripal[9] = {
	ld	hl,#_tripal
	call	__initrleblock
	.db	9
	.db	0x02, 0x02, 0x01, 0x01, 0x02, 0x03, 0x00, 0x04
	.db	0x02
	.db	0
;demo.c:1056: uint8_t tripaltick = 0;
	ld	iy,#_tripaltick
	ld	0 (iy),#0x00
;demo.c:1057: uint8_t tripaltick2 = 0;
	ld	iy,#_tripaltick2
	ld	0 (iy),#0x00
;demo.c:1059: int triframes = 0;
	ld	iy,#_triframes
	ld	0 (iy),#0x00
	ld	iy,#_triframes
	ld	1 (iy),#0x00
;demo.c:1224: int powatick = 0;
	ld	iy,#_powatick
	ld	0 (iy),#0x00
	ld	iy,#_powatick
	ld	1 (iy),#0x00
;demo.c:1225: int powa = 0;
	ld	iy,#_powa
	ld	0 (iy),#0x00
	ld	iy,#_powa
	ld	1 (iy),#0x00
;demo.c:1226: uint8_t onceclear = 255;
	ld	iy,#_onceclear
	ld	0 (iy),#0xFF
;demo.c:1271: uint8_t initpoints = 0;
	ld	iy,#_initpoints
	ld	0 (iy),#0x00
;demo.c:1272: int pointframe = 0;
	ld	iy,#_pointframe
	ld	0 (iy),#0x00
	ld	iy,#_pointframe
	ld	1 (iy),#0x00
;demo.c:1275: int greetindex = 0;
	ld	iy,#_greetindex
	ld	0 (iy),#0x00
	ld	iy,#_greetindex
	ld	1 (iy),#0x00
;demo.c:1370: int bigtextp = 0;
	ld	iy,#_bigtextp
	ld	0 (iy),#0x00
	ld	iy,#_bigtextp
	ld	1 (iy),#0x00
;demo.c:1553: int initcredits = 0;
	ld	iy,#_initcredits
	ld	0 (iy),#0x00
	ld	iy,#_initcredits
	ld	1 (iy),#0x00
;demo.c:1554: int credittimer = 0;
	ld	iy,#_credittimer
	ld	0 (iy),#0x00
	ld	iy,#_credittimer
	ld	1 (iy),#0x00
;demo.c:1555: int musicstopped = 0;
	ld	iy,#_musicstopped
	ld	0 (iy),#0x00
	ld	iy,#_musicstopped
	ld	1 (iy),#0x00
;demo.c:1556: int flipo = 0;
	ld	iy,#_flipo
	ld	0 (iy),#0x00
	ld	iy,#_flipo
	ld	1 (iy),#0x00
;demo.c:1557: int curpage = 0;
	ld	iy,#_curpage
	ld	0 (iy),#0x00
	ld	iy,#_curpage
	ld	1 (iy),#0x00
;demo.c:1558: int myoffs = 0;
	ld	iy,#_myoffs
	ld	0 (iy),#0x00
	ld	iy,#_myoffs
	ld	1 (iy),#0x00
;demo.c:1687: int sceneindex = 0;
	ld	iy,#_sceneindex
	ld	0 (iy),#0x00
	ld	iy,#_sceneindex
	ld	1 (iy),#0x00
;demo.c:1688: int timeindex = 0;
	ld	iy,#_timeindex
	ld	0 (iy),#0x00
	ld	iy,#_timeindex
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
;demo.c:234: int isNthBitSet (unsigned char c, int n) {
;	---------------------------------
; Function isNthBitSet
; ---------------------------------
_isNthBitSet_start::
_isNthBitSet:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:236: return ((c & mask[n]) != 0);
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
	.db #0x78
	.db #0x7A
	.db #0x7D
	.db #0x80
	.db #0x83
	.db #0x86
	.db #0x89
	.db #0x8C
	.db #0x8F
	.db #0x92
	.db #0x95
	.db #0x98
	.db #0x9A
	.db #0x9D
	.db #0xA0
	.db #0xA3
	.db #0xA5
	.db #0xA8
	.db #0xAB
	.db #0xAD
	.db #0xB0
	.db #0xB3
	.db #0xB5
	.db #0xB8
	.db #0xBA
	.db #0xBD
	.db #0xBF
	.db #0xC1
	.db #0xC4
	.db #0xC6
	.db #0xC8
	.db #0xCA
	.db #0xCC
	.db #0xCE
	.db #0xD0
	.db #0xD2
	.db #0xD4
	.db #0xD6
	.db #0xD8
	.db #0xDA
	.db #0xDB
	.db #0xDD
	.db #0xDE
	.db #0xE0
	.db #0xE1
	.db #0xE3
	.db #0xE4
	.db #0xE5
	.db #0xE6
	.db #0xE7
	.db #0xE8
	.db #0xE9
	.db #0xEA
	.db #0xEB
	.db #0xEC
	.db #0xED
	.db #0xED
	.db #0xEE
	.db #0xEE
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xF0
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEF
	.db #0xEE
	.db #0xEE
	.db #0xED
	.db #0xED
	.db #0xEC
	.db #0xEB
	.db #0xEA
	.db #0xE9
	.db #0xE8
	.db #0xE7
	.db #0xE6
	.db #0xE5
	.db #0xE4
	.db #0xE3
	.db #0xE1
	.db #0xE0
	.db #0xDE
	.db #0xDD
	.db #0xDB
	.db #0xDA
	.db #0xD8
	.db #0xD6
	.db #0xD4
	.db #0xD2
	.db #0xD0
	.db #0xCE
	.db #0xCC
	.db #0xCA
	.db #0xC8
	.db #0xC6
	.db #0xC4
	.db #0xC1
	.db #0xBF
	.db #0xBD
	.db #0xBA
	.db #0xB8
	.db #0xB5
	.db #0xB3
	.db #0xB0
	.db #0xAD
	.db #0xAB
	.db #0xA8
	.db #0xA5
	.db #0xA3
	.db #0xA0
	.db #0x9D
	.db #0x9A
	.db #0x98
	.db #0x95
	.db #0x92
	.db #0x8F
	.db #0x8C
	.db #0x89
	.db #0x86
	.db #0x83
	.db #0x80
	.db #0x7D
	.db #0x7A
	.db #0x78
	.db #0x75
	.db #0x72
	.db #0x6F
	.db #0x6C
	.db #0x69
	.db #0x66
	.db #0x63
	.db #0x60
	.db #0x5D
	.db #0x5A
	.db #0x57
	.db #0x55
	.db #0x52
	.db #0x4F
	.db #0x4C
	.db #0x4A
	.db #0x47
	.db #0x44
	.db #0x42
	.db #0x3F
	.db #0x3C
	.db #0x3A
	.db #0x37
	.db #0x35
	.db #0x32
	.db #0x30
	.db #0x2E
	.db #0x2B
	.db #0x29
	.db #0x27
	.db #0x25
	.db #0x23
	.db #0x21
	.db #0x1F
	.db #0x1D
	.db #0x1B
	.db #0x19
	.db #0x17
	.db #0x15
	.db #0x14
	.db #0x12
	.db #0x11
	.db #0x0F
	.db #0x0E
	.db #0x0C
	.db #0x0B
	.db #0x0A
	.db #0x09
	.db #0x08
	.db #0x07
	.db #0x06
	.db #0x05
	.db #0x04
	.db #0x03
	.db #0x02
	.db #0x02
	.db #0x01
	.db #0x01
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x01
	.db #0x01
	.db #0x02
	.db #0x02
	.db #0x03
	.db #0x04
	.db #0x05
	.db #0x06
	.db #0x07
	.db #0x08
	.db #0x09
	.db #0x0A
	.db #0x0B
	.db #0x0C
	.db #0x0E
	.db #0x0F
	.db #0x11
	.db #0x12
	.db #0x14
	.db #0x15
	.db #0x17
	.db #0x19
	.db #0x1B
	.db #0x1D
	.db #0x1F
	.db #0x21
	.db #0x23
	.db #0x25
	.db #0x27
	.db #0x29
	.db #0x2B
	.db #0x2E
	.db #0x30
	.db #0x32
	.db #0x35
	.db #0x37
	.db #0x3A
	.db #0x3C
	.db #0x3F
	.db #0x42
	.db #0x44
	.db #0x47
	.db #0x4A
	.db #0x4C
	.db #0x4F
	.db #0x52
	.db #0x55
	.db #0x57
	.db #0x5A
	.db #0x5D
	.db #0x60
	.db #0x63
	.db #0x66
	.db #0x69
	.db #0x6C
	.db #0x6F
	.db #0x72
	.db #0x75
_tri_center:
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x13
	.db #0x03
	.db #0x01
	.db #0x0B
	.db #0x0A
	.db #0x00
	.db #0x02
	.db #0x12
	.db #0x10
	.db #0x08
	.db #0x0A
	.db #0x00
	.db #0x03
	.db #0x01
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x13
	.db #0x03
	.db #0x01
	.db #0x00
	.db #0x02
	.db #0x12
	.db #0x10
	.db #0x08
	.db #0x0A
	.db #0x00
	.db #0x02
	.db #0x13
	.db #0x03
	.db #0x01
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x13
	.db #0x03
	.db #0x02
	.db #0x12
	.db #0x10
	.db #0x08
	.db #0x0A
	.db #0x00
	.db #0x02
	.db #0x12
	.db #0x11
	.db #0x13
	.db #0x03
	.db #0x01
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x13
	.db #0x12
	.db #0x10
	.db #0x08
	.db #0x0A
	.db #0x00
	.db #0x02
	.db #0x12
	.db #0x10
	.db #0x09
	.db #0x11
	.db #0x13
	.db #0x03
	.db #0x01
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x10
	.db #0x08
	.db #0x0A
	.db #0x00
	.db #0x02
	.db #0x12
	.db #0x10
	.db #0x08
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x13
	.db #0x03
	.db #0x01
	.db #0x0B
	.db #0x09
	.db #0x08
	.db #0x0A
	.db #0x00
	.db #0x02
	.db #0x12
	.db #0x10
	.db #0x08
	.db #0x0A
_tri_up:
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x0B
	.db #0x09
	.db #0x03
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
_tri_dia:
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x0F
	.db #0x1D
	.db #0x15
	.db #0x19
	.db #0x05
	.db #0x1B
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
	.db #0x19
	.db #0x0F
	.db #0x1B
	.db #0x15
	.db #0x1D
	.db #0x05
_tri_side1:
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
	.db #0x00
	.db #0x02
	.db #0x08
	.db #0x0A
	.db #0x12
	.db #0x10
_tri_side2:
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
	.db #0x02
	.db #0x00
	.db #0x10
	.db #0x12
	.db #0x0A
	.db #0x08
_tri_inva1:
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x11
	.db #0x13
	.db #0x1E
	.db #0x08
	.db #0x0A
	.db #0x00
	.db #0x0E
	.db #0x10
	.db #0x1E
	.db #0x1C
	.db #0x1E
	.db #0x08
	.db #0x0A
	.db #0x1F
	.db #0x1F
	.db #0x1E
	.db #0x1E
	.db #0x15
	.db #0x17
	.db #0x0A
	.db #0x00
	.db #0x02
	.db #0x11
	.db #0x13
	.db #0x1F
	.db #0x1C
	.db #0x08
	.db #0x0A
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x08
	.db #0x1B
	.db #0x1A
	.db #0x11
	.db #0x13
	.db #0x1C
	.db #0x1E
	.db #0x1F
	.db #0x19
	.db #0x1E
	.db #0x06
	.db #0x04
	.db #0x1C
	.db #0x1C
	.db #0x1E
	.db #0x08
	.db #0x16
	.db #0x18
	.db #0x1B
	.db #0x1E
	.db #0x19
	.db #0x1D
	.db #0x1F
	.db #0x1E
	.db #0x19
	.db #0x08
	.db #0x1B
	.db #0x1E
	.db #0x12
	.db #0x10
	.db #0x08
	.db #0x16
	.db #0x10
	.db #0x11
	.db #0x17
	.db #0x09
	.db #0x11
	.db #0x0F
	.db #0x01
	.db #0x1E
	.db #0x14
	.db #0x16
	.db #0x17
	.db #0x15
	.db #0x10
	.db #0x1E
	.db #0x0A
	.db #0x18
	.db #0x1F
	.db #0x1E
	.db #0x19
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x0F
	.db #0x1C
	.db #0x05
	.db #0x09
	.db #0x1E
	.db #0x0B
	.db #0x09
	.db #0x1F
	.db #0x1E
	.db #0x19
	.db #0x1E
	.db #0x1F
	.db #0x19
	.db #0x1E
	.db #0x0B
	.db #0x1B
	.db #0x15
	.db #0x19
	.db #0x1D
	.db #0x19
	.db #0x19
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x1E
	.db #0x15
	.db #0x13
	.db #0x1E
	.db #0x0C
	.db #0x01
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1E
	.db #0x1C
	.db #0x1D
	.db #0x01
	.db #0x11
	.db #0x13
	.db #0x0B
	.db #0x09
	.db #0x1A
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x07
	.db #0x01
	.db #0x1E
	.db #0x1F
	.db #0x00
	.db #0x02
	.db #0x1E
	.db #0x03
	.db #0x01
	.db #0x0C
	.db #0x06
	.db #0x0B
	.db #0x1B
	.db #0x04
	.db #0x0E
	.db #0x19
	.db #0x17
	.db #0x07
	.db #0x1D
	.db #0x1C
	.db #0x02
	.db #0x1F
	.db #0x1E
	.db #0x08
	.db #0x07
	.db #0x06
	.db #0x1E
	.db #0x08
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x09
	.db #0x11
	.db #0x17
	.db #0x07
	.db #0x1D
	.db #0x1F
	.db #0x1E
	.db #0x08
	.db #0x0A
	.db #0x1E
	.db #0x1F
	.db #0x1F
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x0A
	.db #0x0B
	.db #0x09
	.db #0x11
	.db #0x17
	.db #0x07
	.db #0x01
	.db #0x08
	.db #0x0A
	.db #0x1E
	.db #0x1F
	.db #0x1F
	.db #0x1E
_tri_inva2:
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x1A
	.db #0x1B
	.db #0x15
	.db #0x0F
	.db #0x05
	.db #0x15
	.db #0x0F
	.db #0x05
	.db #0x15
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x04
	.db #0x1C
	.db #0x1D
	.db #0x05
	.db #0x15
	.db #0x0F
	.db #0x05
	.db #0x15
	.db #0x0F
	.db #0x05
	.db #0x0E
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x18
	.db #0x19
	.db #0x0F
	.db #0x05
	.db #0x15
	.db #0x0F
	.db #0x05
	.db #0x15
	.db #0x0F
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x18
	.db #0x19
	.db #0x19
	.db #0x1D
	.db #0x1B
	.db #0x19
	.db #0x1D
	.db #0x1B
	.db #0x19
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x18
	.db #0x0D
	.db #0x19
	.db #0x1D
	.db #0x1B
	.db #0x19
	.db #0x1D
	.db #0x1B
	.db #0x19
	.db #0x19
	.db #0x1B
	.db #0x1D
	.db #0x19
	.db #0x1B
	.db #0x1D
	.db #0x19
	.db #0x0C
	.db #0x0E
	.db #0x18
	.db #0x1C
	.db #0x1A
	.db #0x18
	.db #0x1C
	.db #0x1A
	.db #0x18
	.db #0x19
	.db #0x1B
	.db #0x1D
	.db #0x19
	.db #0x1B
	.db #0x1D
	.db #0x19
	.db #0x0F
	.db #0x0D
	.db #0x18
	.db #0x1C
	.db #0x1A
	.db #0x18
	.db #0x1C
	.db #0x1A
	.db #0x18
	.db #0x0D
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x0C
	.db #0x0E
	.db #0x0C
	.db #0x06
	.db #0x16
	.db #0x0C
	.db #0x06
	.db #0x16
	.db #0x0C
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x02
	.db #0x1A
	.db #0x1A
	.db #0x03
	.db #0x16
	.db #0x0C
	.db #0x06
	.db #0x16
	.db #0x0C
	.db #0x06
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x07
	.db #0x10
	.db #0x1F
	.db #0x1A
	.db #0x1A
	.db #0x1F
	.db #0x11
	.db #0x06
	.db #0x16
	.db #0x0C
	.db #0x06
	.db #0x16
	.db #0x0D
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x0A
	.db #0x1F
	.db #0x1F
	.db #0x1A
	.db #0x1A
	.db #0x1F
	.db #0x1F
	.db #0x0B
	.db #0x0C
	.db #0x06
	.db #0x16
	.db #0x0C
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x02
	.db #0x1F
	.db #0x1F
	.db #0x1F
	.db #0x1F
	.db #0x1F
	.db #0x1F
	.db #0x1F
	.db #0x1F
	.db #0x03
	.db #0x16
	.db #0x0C
	.db #0x06
_tri_inva3:
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1E
	.db #0x00
	.db #0x1C
	.db #0x1C
	.db #0x1D
	.db #0x1C
	.db #0x1C
	.db #0x1D
	.db #0x1C
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1F
	.db #0x1C
	.db #0x18
	.db #0x1F
	.db #0x1C
	.db #0x1D
	.db #0x1D
	.db #0x1C
	.db #0x1D
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x0A
	.db #0x1E
	.db #0x1C
	.db #0x0D
	.db #0x18
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1E
	.db #0x00
	.db #0x1C
	.db #0x1D
	.db #0x1C
	.db #0x1C
	.db #0x1D
	.db #0x18
	.db #0x0F
	.db #0x1C
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1F
	.db #0x1C
	.db #0x1D
	.db #0x02
	.db #0x1C
	.db #0x02
	.db #0x1D
	.db #0x1F
	.db #0x18
	.db #0x1C
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1F
	.db #0x03
	.db #0x1C
	.db #0x1D
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1D
	.db #0x1C
	.db #0x0E
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x0A
	.db #0x1E
	.db #0x00
	.db #0x0B
	.db #0x0A
	.db #0x0B
	.db #0x0A
	.db #0x0B
	.db #0x0A
	.db #0x1D
	.db #0x1C
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x14
	.db #0x0A
	.db #0x1F
	.db #0x1E
	.db #0x1C
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1D
	.db #0x1C
	.db #0x1A
	.db #0x1C
	.db #0x18
	.db #0x1A
	.db #0x1F
	.db #0x12
	.db #0x18
	.db #0x18
	.db #0x19
	.db #0x19
	.db #0x13
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1D
	.db #0x1C
	.db #0x1B
	.db #0x1D
	.db #0x19
	.db #0x1B
	.db #0x1E
	.db #0x18
	.db #0x18
	.db #0x18
	.db #0x19
	.db #0x19
	.db #0x19
	.db #0x13
	.db #0x1F
	.db #0x00
	.db #0x1C
	.db #0x1C
	.db #0x1B
	.db #0x1D
	.db #0x19
	.db #0x1B
	.db #0x1F
	.db #0x18
	.db #0x18
	.db #0x0C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x09
	.db #0x1E
	.db #0x1F
	.db #0x1D
	.db #0x1D
	.db #0x1D
	.db #0x1C
	.db #0x1D
	.db #0x1C
	.db #0x1C
	.db #0x1C
	.db #0x1C
_tri_inva4:
	.db #0x1E
	.db #0x00
	.db #0x05
	.db #0x0A
	.db #0x1E
	.db #0x00
	.db #0x06
	.db #0x16
	.db #0x0F
	.db #0x01
	.db #0x1F
	.db #0x11
	.db #0x0C
	.db #0x01
	.db #0x1F
	.db #0x1F
	.db #0x12
	.db #0x0F
	.db #0x02
	.db #0x1E
	.db #0x12
	.db #0x0F
	.db #0x05
	.db #0x15
	.db #0x0C
	.db #0x06
	.db #0x09
	.db #0x1F
	.db #0x03
	.db #0x06
	.db #0x09
	.db #0x1F
	.db #0x15
	.db #0x10
	.db #0x1E
	.db #0x08
	.db #0x15
	.db #0x10
	.db #0x1E
	.db #0x1F
	.db #0x1F
	.db #0x0B
	.db #0x16
	.db #0x13
	.db #0x1F
	.db #0x0B
	.db #0x16
	.db #0x13
	.db #0x05
	.db #0x1E
	.db #0x00
	.db #0x05
	.db #0x0A
	.db #0x1E
	.db #0x08
	.db #0x15
	.db #0x13
	.db #0x1F
	.db #0x11
	.db #0x0D
	.db #0x01
	.db #0x1F
	.db #0x0C
	.db #0x0D
	.db #0x02
	.db #0x1E
	.db #0x0E
	.db #0x0F
	.db #0x1E
	.db #0x00
	.db #0x05
	.db #0x15
	.db #0x0C
	.db #0x01
	.db #0x1F
	.db #0x07
	.db #0x07
	.db #0x1F
	.db #0x06
	.db #0x07
	.db #0x1E
	.db #0x1E
	.db #0x15
	.db #0x15
	.db #0x1E
	.db #0x0F
	.db #0x02
	.db #0x1E
	.db #0x07
	.db #0x06
	.db #0x1F
	.db #0x17
	.db #0x17
	.db #0x1E
	.db #0x17
	.db #0x16
	.db #0x1F
	.db #0x1F
	.db #0x04
	.db #0x05
	.db #0x1F
	.db #0x14
	.db #0x09
	.db #0x11
	.db #0x17
	.db #0x0A
	.db #0x1E
	.db #0x0D
	.db #0x0D
	.db #0x1E
	.db #0x0D
	.db #0x0C
	.db #0x09
	.db #0x1F
	.db #0x0E
	.db #0x0F
	.db #0x1F
	.db #0x04
	.db #0x04
	.db #0x1F
	.db #0x1F
	.db #0x1E
	.db #0x08
	.db #0x06
	.db #0x07
	.db #0x1E
	.db #0x07
	.db #0x06
	.db #0x04
	.db #0x1F
	.db #0x11
	.db #0x14
	.db #0x1F
	.db #0x03
	.db #0x0E
	.db #0x14
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x0A
	.db #0x1E
	.db #0x12
	.db #0x17
	.db #0x0A
	.db #0x0E
	.db #0x1F
	.db #0x1F
	.db #0x04
	.db #0x01
	.db #0x1F
	.db #0x11
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x10
	.db #0x1E
	.db #0x00
	.db #0x0D
	.db #0x10
	.db #0x1E
	.db #0x14
	.db #0x09
	.db #0x1F
	.db #0x03
	.db #0x0E
	.db #0x13
	.db #0x1F
	.db #0x1F
	.db #0x1F
	.db #0x1E
	.db #0x1E
	.db #0x08
	.db #0x07
	.db #0x02
	.db #0x1E
	.db #0x1E
	.db #0x0B
	.db #0x04
	.db #0x01
	.db #0x1F
	.db #0x11
	.db #0x14
	.db #0x04
	.db #0x0E
	.db #0x17
	.db #0x07
	.db #0x0D
	.db #0x17
	.db #0x0A
	.db #0x1E
	.db #0x1E
	.db #0x1E
;demo.c:243: void my_isr(void) interrupt
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
;demo.c:245: DI;
		di 
;demo.c:247: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:249: PLY_Play();
	call	_PLY_Play
;demo.c:250: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:252: vbicount+=1;
	ld	iy,#_vbicount
	inc	0 (iy)
	jr	NZ,00103$
	ld	iy,#_vbicount
	inc	1 (iy)
00103$:
;demo.c:253: tick++;
	ld	iy,#_tick
	inc	0 (iy)
	jr	NZ,00104$
	ld	iy,#_tick
	inc	1 (iy)
00104$:
;demo.c:255: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_my_isr_end::
;demo.c:263: void scratch_clear() {
;	---------------------------------
; Function scratch_clear
; ---------------------------------
_scratch_clear_start::
_scratch_clear:
;demo.c:264: memset((uint8_t *) &scratch, 0, 128);
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
;demo.c:267: uint8_t pal_load(char *file_name, uint8_t ss, int debugprint) {
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
;demo.c:270: if(debugprint == 1) {
	ld	a,7 (ix)
	sub	a,#0x01
	jr	NZ,00115$
	ld	a,8 (ix)
	or	a,a
	jr	Z,00116$
00115$:
	jr	00102$
00116$:
;demo.c:271: puts("loading palfile: ");
	ld	hl,#__str_0
	push	hl
	call	_puts
	pop	af
;demo.c:272: puts(file_name);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_puts
	pop	af
;demo.c:273: puts("\r\n");
	ld	hl,#__str_1
	push	hl
	call	_puts
	pop	af
00102$:
;demo.c:276: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:277: scratch_clear();
	call	_scratch_clear
;demo.c:279: f.record_size = ss;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,6 (ix)
	ld	(de),a
;demo.c:280: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:282: memcpy(f.name, file_name, 11);
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
;demo.c:284: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00104$
	ld	l,#0x00
	jr	00109$
00104$:
;demo.c:285: if (block_set_data_ptr(scratch) != 0) return 0;
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00106$
	ld	l,#0x00
	jr	00109$
00106$:
;demo.c:286: if (block_read(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_block_read
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00108$
	ld	l,#0x00
	jr	00109$
00108$:
;demo.c:288: memcpy(cur_palette, scratch+7, ss);
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
;demo.c:290: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:291: return 1;
	ld	l,#0x01
00109$:
	ld	sp,ix
	pop	ix
	ret
_pal_load_end::
__str_0:
	.ascii "loading palfile: "
	.db 0x00
__str_1:
	.db 0x0D
	.db 0x0A
	.db 0x00
;demo.c:295: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;demo.c:296: uint8_t i,j,k = 0;
;demo.c:297: for (i = 0; i < 255; i++) {	
	ld	bc,#0x0000
00104$:
	ld	a,b
	sub	a,#0xFF
	ret	NC
;demo.c:298: for (j = 0; j < 255; j++) {
	ld	e,c
	ld	d,#0xFF
00103$:
;demo.c:299: k++;
	inc	e
	dec	d
;demo.c:298: for (j = 0; j < 255; j++) {
	xor	a,a
	or	a,d
	jr	NZ,00103$
;demo.c:297: for (i = 0; i < 255; i++) {	
	ld	c,e
	inc	b
	jr	00104$
_pause_end::
;demo.c:305: uint8_t raw_load(char *file_name, int size, char* buffer, int debugprint) {
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
;demo.c:310: if(debugprint == 1) {
	ld	a,10 (ix)
	sub	a,#0x01
	jr	NZ,00120$
	ld	a,11 (ix)
	or	a,a
	jr	Z,00121$
00120$:
	jr	00102$
00121$:
;demo.c:311: puts("loading rawfile: ");
	ld	hl,#__str_2
	push	hl
	call	_puts
	pop	af
;demo.c:312: puts(file_name);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_puts
	pop	af
;demo.c:313: puts("\r\n");
	ld	hl,#__str_3
	push	hl
	call	_puts
	pop	af
00102$:
;demo.c:316: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:317: scratch_clear();
	call	_scratch_clear
;demo.c:319: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:320: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:322: memcpy(f.name, file_name, 11);
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
;demo.c:324: if (open(&f) != 0) return 0;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_open
	pop	af
	xor	a,a
	or	a,l
	jr	Z,00119$
	ld	l,#0x00
	jp	00112$
;demo.c:326: while(total < size) {
00119$:
	ld	bc,#0x0000
00109$:
	ld	a,c
	sub	a,6 (ix)
	ld	a,b
	sbc	a,7 (ix)
	jp	P,00111$
;demo.c:327: if (block_set_data_ptr(scratch) != 0) return 0;
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	ld	e,l
	pop	bc
	xor	a,a
	or	a,e
	jr	Z,00106$
	ld	l,#0x00
	jr	00112$
00106$:
;demo.c:328: if (block_read(&f) != 0) return 0;
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
	jr	Z,00108$
	ld	l,#0x00
	jr	00112$
00108$:
;demo.c:330: memcpy(buffer+total,scratch,incr);
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
;demo.c:332: total+=incr;
	ld	hl,#0x0080
	add	hl,bc
	ld	c,l
	ld	b,h
	jp	00109$
00111$:
;demo.c:335: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:337: return 1;
	ld	l,#0x01
00112$:
	ld	sp,ix
	pop	ix
	ret
_raw_load_end::
__str_2:
	.ascii "loading rawfile: "
	.db 0x00
__str_3:
	.db 0x0D
	.db 0x0A
	.db 0x00
;demo.c:340: void pck_load(char *file_name, int size, uint16_t address, int vram_offset, int debugprint) {
;	---------------------------------
; Function pck_load
; ---------------------------------
_pck_load_start::
_pck_load:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:341: if(debugprint == 1) {
	ld	a,12 (ix)
	sub	a,#0x01
	jr	NZ,00106$
	ld	a,13 (ix)
	or	a,a
	jr	Z,00107$
00106$:
	jr	00102$
00107$:
;demo.c:342: puts("loading pckfile: ");
	ld	hl,#__str_4
	push	hl
	call	_puts
	pop	af
;demo.c:343: puts(file_name);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_puts
	pop	af
;demo.c:344: puts("\r\n");
	ld	hl,#__str_5
	push	hl
	call	_puts
	pop	af
00102$:
;demo.c:346: memset((uint8_t *) &packbuffer, 0, size);
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	push	bc
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
;demo.c:347: raw_load(file_name, size, packbuffer,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	af
;demo.c:348: bitbuster(packbuffer,address,vram_offset);
	ld	a,10 (ix)
	push	af
	inc	sp
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
	pop	ix
	ret
_pck_load_end::
__str_4:
	.ascii "loading pckfile: "
	.db 0x00
__str_5:
	.db 0x0D
	.db 0x0A
	.db 0x00
;demo.c:351: void fadein() {
;	---------------------------------
; Function fadein
; ---------------------------------
_fadein_start::
_fadein:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:354: if (tick < 8) return;
	ld	a,(#_tick+0)
	sub	a,#0x08
	ld	a,(#_tick+1)
	sbc	a,#0x00
	jp	P,00102$
	jp	00113$
00102$:
;demo.c:356: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:358: for(i = 0; i < 32; i+=2) {
	ld	c,#0x00
00109$:
	ld	a,c
	sub	a,#0x20
	jp	NC,00112$
;demo.c:359: uint8_t r = scratch[i] >> 4;
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
;demo.c:360: uint8_t b = scratch[i] & 0xf;
	ld	a,b
	and	a,#0x0F
	ld	-1 (ix),a
;demo.c:361: uint8_t g = scratch[i+1];
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
;demo.c:363: if (r < (cur_palette[i] >> 4)) r++;
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
;demo.c:364: if (b < (cur_palette[i] & 0xf)) b++;
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
;demo.c:366: scratch[i] = (r << 4) | b;
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
;demo.c:367: if (g < cur_palette[i+1]) scratch[i+1]++;
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
;demo.c:358: for(i = 0; i < 32; i+=2) {
	inc	c
	inc	c
	jp	00109$
00112$:
;demo.c:371: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00113$:
	ld	sp,ix
	pop	ix
	ret
_fadein_end::
;demo.c:383: void do_ymmm() {
;	---------------------------------
; Function do_ymmm
; ---------------------------------
_do_ymmm_start::
_do_ymmm:
;demo.c:384: }
	ret
_do_ymmm_end::
;demo.c:397: void do_blocks() {
;	---------------------------------
; Function do_blocks
; ---------------------------------
_do_blocks_start::
_do_blocks:
;demo.c:398: }
	ret
_do_blocks_end::
;demo.c:402: void raster_effu() {
;	---------------------------------
; Function raster_effu
; ---------------------------------
_raster_effu_start::
_raster_effu:
;demo.c:403: }
	ret
_raster_effu_end::
;demo.c:434: void do_2xletter(char cc) {
;	---------------------------------
; Function do_2xletter
; ---------------------------------
_do_2xletter_start::
_do_2xletter:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;demo.c:435: int cidx = cc - 65;
	ld	c,4 (ix)
	ld	a,4 (ix)
	rla	
	sbc	a,a
	ld	b,a
	ld	a,c
	add	a,#0xBF
	ld	-2 (ix),a
	ld	a,b
	adc	a,#0xFF
	ld	-1 (ix),a
;demo.c:438: for (y=0;y<8;y++) {
	ld	a,#<_font_w
	add	a,-2 (ix)
	ld	e,a
	ld	a,#>_font_w
	adc	a,-1 (ix)
	ld	d,a
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
	ld	-10 (ix),#0x00
	ld	-9 (ix),#0x00
00105$:
	ld	a,-6 (ix)
	sub	a,#0x08
	ld	a,-5 (ix)
	sbc	a,#0x00
	jp	P,00108$
;demo.c:439: for (x=0;x<font_w[cidx];x++) {
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	-12 (ix),#0x00
	ld	-11 (ix),#0x00
00101$:
	ld	a,(de)
	ld	c,a
	ld	b,#0x00
	ld	a,-4 (ix)
	sub	a,c
	ld	a,-3 (ix)
	sbc	a,b
	jp	P,00115$
;demo.c:440: cmd.source_x = 127+font_x[cidx]+x;
	ld	a,#<_font_x
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_font_x
	adc	a,-1 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	ld	hl,#0x007F
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,c
	add	a,-4 (ix)
	ld	c,a
	ld	a,b
	adc	a,-3 (ix)
	ld	b,a
	ld	hl,#_cmd
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:441: cmd.source_y = 512+font_y[cidx]+y;
	inc	hl
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	a,#<_font_y
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_font_y
	adc	a,-1 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	ld	hl,#0x0200
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,c
	add	a,-6 (ix)
	ld	c,a
	ld	a,b
	adc	a,-5 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:442: cmd.size_x = 1;
	ld	hl, #_cmd + 8
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:443: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:444: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:445: cmd.command = 0x40; // get pixel
	ld	a,#0x40
	ld	(#_cmd + 14),a
;demo.c:446: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:448: col = vdp2_status(7);
	push	de
	ld	a,#0x07
	push	af
	inc	sp
	call	_vdp2_status
	inc	sp
	ld	c,l
	pop	de
	ld	-8 (ix),c
	ld	-7 (ix),#0x00
;demo.c:450: cmd.data = col;
	ld	bc,#_cmd + 12
	ld	a,-8 (ix)
	ld	(bc),a
;demo.c:451: cmd.dest_x = lx+x*3;
	ld	hl,#_cmd + 4
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_lx + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-12 (ix)
	ld	c,a
	ld	a,b
	adc	a,-11 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:452: cmd.dest_y = ly+y*3;
	ld	hl,#_cmd + 6
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_ly + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-10 (ix)
	ld	c,a
	ld	a,b
	adc	a,-9 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:455: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:456: cmd.command = 0x50; // rect
	ld	a,#0x50
	ld	(#_cmd + 14),a
;demo.c:457: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:458: cmd.dest_x = 1+lx+x*3;
	ld	hl,#_cmd + 4
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_lx + 0
	ld	c,(hl)
	ld	b,#0x00
	inc	bc
	ld	a,c
	add	a,-12 (ix)
	ld	c,a
	ld	a,b
	adc	a,-11 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:459: cmd.dest_y = ly+y*3;
	ld	hl,#_cmd + 6
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_ly + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-10 (ix)
	ld	c,a
	ld	a,b
	adc	a,-9 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:460: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:461: cmd.dest_x = 1+lx+x*3;
	ld	hl,#_cmd + 4
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_lx + 0
	ld	c,(hl)
	ld	b,#0x00
	inc	bc
	ld	a,c
	add	a,-12 (ix)
	ld	c,a
	ld	a,b
	adc	a,-11 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:462: cmd.dest_y = 1+ly+y*3;
	ld	hl,#_cmd + 6
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_ly + 0
	ld	c,(hl)
	ld	b,#0x00
	inc	bc
	ld	a,c
	add	a,-10 (ix)
	ld	c,a
	ld	a,b
	adc	a,-9 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:463: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:464: cmd.dest_x = lx+x*3;
	ld	hl,#_cmd + 4
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_lx + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-12 (ix)
	ld	c,a
	ld	a,b
	adc	a,-11 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:465: cmd.dest_y = 1+ly+y*3;
	ld	hl,#_cmd + 6
	ld	-14 (ix),l
	ld	-13 (ix),h
	ld	hl,#_ly + 0
	ld	c,(hl)
	ld	b,#0x00
	inc	bc
	ld	a,c
	add	a,-10 (ix)
	ld	c,a
	ld	a,b
	adc	a,-9 (ix)
	ld	b,a
	ld	l,-14 (ix)
	ld	h,-13 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:466: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:439: for (x=0;x<font_w[cidx];x++) {
	ld	a,-12 (ix)
	add	a,#0x03
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a,#0x00
	ld	-11 (ix),a
	inc	-4 (ix)
	jr	NZ,00117$
	inc	-3 (ix)
00117$:
	jp	00101$
00115$:
	ld	a,-4 (ix)
	ld	-14 (ix),a
	ld	a,-3 (ix)
	ld	-13 (ix),a
;demo.c:468: waitVB();
		halt 
;demo.c:438: for (y=0;y<8;y++) {
	ld	a,-10 (ix)
	add	a,#0x03
	ld	-10 (ix),a
	ld	a,-9 (ix)
	adc	a,#0x00
	ld	-9 (ix),a
	inc	-6 (ix)
	jr	NZ,00118$
	inc	-5 (ix)
00118$:
	jp	00105$
00108$:
;demo.c:471: lx+=font_w[cidx]-1+(x*4);
	ld	a,#<_font_w
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_font_w
	adc	a,-1 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	dec	c
	ld	b,-14 (ix)
	sla	b
	sla	b
	ld	a,c
	add	a,b
	ld	c,a
	ld	hl,#_lx + 0
	ld	b,(hl)
	ld	hl,#_lx
	ld	a,b
	add	a,c
	ld	(hl),a
	ld	sp,ix
	pop	ix
	ret
_do_2xletter_end::
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
;demo.c:475: void do_letter(char cc) {
;	---------------------------------
; Function do_letter
; ---------------------------------
_do_letter_start::
_do_letter:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:476: int cidx = cc - 65;
	ld	c,4 (ix)
	ld	a,4 (ix)
	rla	
	sbc	a,a
	ld	b,a
	ld	a,c
	add	a,#0xBF
	ld	-2 (ix),a
	ld	a,b
	adc	a,#0xFF
	ld	-1 (ix),a
;demo.c:477: cmd.source_x = 127+font_x[cidx];
	ld	a,#<_font_x
	add	a,-2 (ix)
	ld	e,a
	ld	a,#>_font_x
	adc	a,-1 (ix)
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	hl,#0x007F
	add	hl,de
	ex	de,hl
	ld	hl,#_cmd
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:478: cmd.source_y = 512+font_y[cidx];
	ld	de,#_cmd + 2
	ld	a,#<_font_y
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_font_y
	adc	a,-1 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	ld	hl,#0x0200
	add	hl,bc
	ld	c,l
	ld	b,h
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:479: cmd.dest_x = lx;
	ld	bc,#_cmd + 4
	ld	hl,#_lx + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:480: cmd.dest_y = ly;
	ld	bc,#_cmd + 6
	ld	hl,#_ly + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:481: cmd.size_x = font_w[cidx];
	ld	bc,#_cmd + 8
	ld	a,#<_font_w
	add	a,-2 (ix)
	ld	e,a
	ld	a,#>_font_w
	adc	a,-1 (ix)
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:482: cmd.size_y = 8;
	ld	hl, #_cmd + 10
	ld	(hl),#0x08
	inc	hl
	ld	(hl),#0x00
;demo.c:483: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:484: cmd.command = 0x90; // logical vram to vram
	ld	a,#0x90
	ld	(#_cmd + 14),a
;demo.c:485: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:486: lx+=font_w[cidx]-1;
	ld	a,#<_font_w
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_font_w
	adc	a,-1 (ix)
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
;demo.c:490: void do_letter_tall(char cc) {
;	---------------------------------
; Function do_letter_tall
; ---------------------------------
_do_letter_tall_start::
_do_letter_tall:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:491: int cidx = cc - 65;
	ld	c,4 (ix)
	ld	a,4 (ix)
	rla	
	sbc	a,a
	ld	b,a
	ld	a,c
	add	a,#0xBF
	ld	-2 (ix),a
	ld	a,b
	adc	a,#0xFF
	ld	-1 (ix),a
;demo.c:492: cmd.source_x = 127+font_x[cidx];
	ld	a,#<_font_x
	add	a,-2 (ix)
	ld	e,a
	ld	a,#>_font_x
	adc	a,-1 (ix)
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	hl,#0x007F
	add	hl,de
	ex	de,hl
	ld	hl,#_cmd
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:493: cmd.source_y = 512+font_y[cidx];
	ld	de,#_cmd + 2
	ld	a,#<_font_y
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_font_y
	adc	a,-1 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	ld	hl,#0x0200
	add	hl,bc
	ld	c,l
	ld	b,h
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:494: cmd.dest_x = lx;
	ld	bc,#_cmd + 4
	ld	hl,#_lx + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:495: cmd.dest_y = ly;
	ld	bc,#_cmd + 6
	ld	hl,#_ly + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:496: cmd.size_x = font_w[cidx];
	ld	bc,#_cmd + 8
	ld	a,#<_font_w
	add	a,-2 (ix)
	ld	e,a
	ld	a,#>_font_w
	adc	a,-1 (ix)
	ld	d,a
	ld	a,(de)
	ld	e,a
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:497: cmd.size_y = 8;
	ld	hl, #_cmd + 10
	ld	(hl),#0x08
	inc	hl
	ld	(hl),#0x00
;demo.c:498: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:499: cmd.command = 0x90; // logical vram to vram
	ld	a,#0x90
	ld	(#_cmd + 14),a
;demo.c:500: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:501: lx+=font_w[cidx]-1;
	ld	a,#<_font_w
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_font_w
	adc	a,-1 (ix)
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
_do_letter_tall_end::
;demo.c:504: void drawstr(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstr
; ---------------------------------
_drawstr_start::
_drawstr:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:505: char* c = str;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:506: lx = x;
	ld	e,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), e
;demo.c:507: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:508: while (*c) {
00107$:
	ld	a,(bc)
	ld	d,a
	or	a,a
	jr	Z,00110$
;demo.c:509: char ltr = *c++; 
	inc	bc
;demo.c:510: if (ltr == ' ') lx+=4;
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
;demo.c:511: else if (ltr == '_') { ly+=9; lx = x; }
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
;demo.c:512: else do_letter(ltr);
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
;demo.c:519: void drawstrslow(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstrslow
; ---------------------------------
_drawstrslow_start::
_drawstrslow:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:520: char* c = str+ltrpointer;
	ld	hl,#_ltrpointer
	ld	a,4 (ix)
	add	a,(hl)
	ld	c,a
	ld	a,5 (ix)
	inc	hl
	adc	a,(hl)
	ld	b,a
;demo.c:521: if (ltrpointer > slowend) return;
	ld	hl,#_slowend
	ld	a,(hl)
	ld	iy,#_ltrpointer
	sub	a,0 (iy)
	inc	hl
	ld	a,(hl)
	ld	iy,#_ltrpointer
	sbc	a,1 (iy)
	jp	P,00102$
	jp	00114$
00102$:
;demo.c:522: if (ltrpointer == 0) {
	ld	a,(#_ltrpointer+0)
	ld	hl,#_ltrpointer + 1
	or	a,(hl)
	jr	NZ,00111$
;demo.c:523: lx = x;
	ld	a,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), a
;demo.c:524: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:526: while (*c) {
00111$:
	ld	a,(bc)
	ld	c,a
	or	a,a
	jr	Z,00113$
;demo.c:527: char ltr = *c++; 
;demo.c:528: if (ltr == ' ') lx+=4;
	ld	a,c
	sub	a,#0x20
	jr	NZ,00109$
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	jr	00113$
00109$:
;demo.c:529: else if (ltr == '_') { ly+=9; lx = x; }
	ld	a,c
	sub	a,#0x5F
	jr	NZ,00106$
	ld	hl,#_ly
	ld	a,(hl)
	add	a,#0x09
	ld	(hl),a
	ld	a,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), a
	jr	00113$
00106$:
;demo.c:530: else do_letter(ltr);
	ld	a,c
	push	af
	inc	sp
	call	_do_letter
	inc	sp
;demo.c:531: break;
00113$:
;demo.c:534: ltrpointer++;
	ld	iy,#_ltrpointer
	inc	0 (iy)
	jr	NZ,00125$
	ld	iy,#_ltrpointer
	inc	1 (iy)
00125$:
00114$:
	pop	ix
	ret
_drawstrslow_end::
;demo.c:537: void drawstr2x(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstr2x
; ---------------------------------
_drawstr2x_start::
_drawstr2x:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:538: char* c = str;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:539: lx = x;
	ld	e,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), e
;demo.c:540: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:541: while (*c) {
00107$:
	ld	a,(bc)
	ld	d,a
	or	a,a
	jr	Z,00110$
;demo.c:542: char ltr = *c++; 
	inc	bc
;demo.c:543: if (ltr == ' ') lx+=4*4;
	ld	a,d
	sub	a,#0x20
	jr	NZ,00105$
	ld	hl,#_lx
	ld	a,(hl)
	add	a,#0x10
	ld	(hl),a
	jr	00107$
00105$:
;demo.c:544: else if (ltr == '_') { ly+=9*4; lx = x; }
	ld	a,d
	sub	a,#0x5F
	jr	NZ,00102$
	ld	hl,#_ly
	ld	a,(hl)
	add	a,#0x24
	ld	(hl),a
	ld	hl,#_lx + 0
	ld	(hl), e
	jr	00107$
00102$:
;demo.c:545: else do_2xletter(ltr);
	push	bc
	push	de
	push	de
	inc	sp
	call	_do_2xletter
	inc	sp
	pop	de
	pop	bc
	jr	00107$
00110$:
	pop	ix
	ret
_drawstr2x_end::
;demo.c:550: void drawsine(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawsine
; ---------------------------------
_drawsine_start::
_drawsine:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:551: char* c = str+ltrpointer;
	ld	hl,#_ltrpointer
	ld	a,4 (ix)
	add	a,(hl)
	ld	c,a
	ld	a,5 (ix)
	inc	hl
	adc	a,(hl)
	ld	b,a
;demo.c:552: if (ltrpointer > slowend) return;
	ld	hl,#_slowend
	ld	a,(hl)
	ld	iy,#_ltrpointer
	sub	a,0 (iy)
	inc	hl
	ld	a,(hl)
	ld	iy,#_ltrpointer
	sbc	a,1 (iy)
	jp	P,00102$
	jp	00114$
00102$:
;demo.c:553: if (ltrpointer == 0) {
	ld	a,(#_ltrpointer+0)
	ld	hl,#_ltrpointer + 1
	or	a,(hl)
	jr	NZ,00111$
;demo.c:554: lx = x;
	ld	a,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), a
;demo.c:556: while (*c) {
00111$:
	ld	a,(bc)
	ld	c,a
	or	a,a
	jp	Z,00113$
;demo.c:557: char ltr = *c++; 
;demo.c:558: ly = y+(sintabx[(lx+10>>1) & 255]>>4);
	ld	hl,#_lx + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#0x000A
	add	hl,de
	ex	de,hl
	sra	d
	rr	e
	ld	d,#0x00
	ld	hl,#_sintabx
	add	hl,de
	ld	a,(hl)
	ld	b,a
	srl	b
	srl	b
	srl	b
	srl	b
	ld	hl,#_ly
	ld	a,7 (ix)
	add	a,b
	ld	(hl),a
;demo.c:560: if (ltr == ' ') lx+=4;
	ld	a,c
	sub	a,#0x20
	jr	NZ,00109$
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	ld	iy,#_lx
	inc	0 (iy)
	jr	00113$
00109$:
;demo.c:561: else if (ltr == '_') { ly+=9; lx = x; }
	ld	a,c
	sub	a,#0x5F
	jr	NZ,00106$
	ld	hl,#_ly
	ld	a,(hl)
	add	a,#0x09
	ld	(hl),a
	ld	a,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), a
	jr	00113$
00106$:
;demo.c:562: else do_letter_tall(ltr);
	ld	a,c
	push	af
	inc	sp
	call	_do_letter_tall
	inc	sp
;demo.c:563: break;
00113$:
;demo.c:566: ltrpointer++;
	ld	iy,#_ltrpointer
	inc	0 (iy)
	jr	NZ,00126$
	ld	iy,#_ltrpointer
	inc	1 (iy)
00126$:
00114$:
	pop	ix
	ret
_drawsine_end::
;demo.c:569: void font() {
;	---------------------------------
; Function font
; ---------------------------------
_font_start::
_font:
;demo.c:570: slowend = 128;
	ld	hl,#_slowend + 0
	ld	(hl), #0x80
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:571: drawstrslow("DIGITAL SOUNDS SYSTEM__ IN THE HOUSE__  ON MSX__   AT REVISION__    OLDSKOOL_     DEMO_      COMPO__MAKE SOME NOISE PARTY PEOPLE",74,60);
	ld	hl,#0x3C4A
	push	hl
	ld	hl,#__str_6
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
	ret
_font_end::
__str_6:
	.ascii "DIGITAL SOUNDS SYSTEM__ IN THE HOUSE__  ON MSX__   AT REVISI"
	.ascii "ON__    OLDSKOOL_     DEMO_      COMPO__MAKE SOME NOISE PART"
	.ascii "Y PEOPLE"
	.db 0x00
;demo.c:579: void twister() {
;	---------------------------------
; Function twister
; ---------------------------------
_twister_start::
_twister:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;demo.c:583: if (twinited == 0) {
	ld	a,(#_twinited+0)
	ld	iy,#_twinited
	or	a,1 (iy)
	jp	NZ,00102$
;demo.c:584: cmd.size_x = 74;
	ld	hl, #_cmd + 8
	ld	(hl),#0x4A
	inc	hl
	ld	(hl),#0x00
;demo.c:585: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:586: cmd.data = 0;
;demo.c:587: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:588: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:589: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:590: cmd.source_y = 0;
	ld	bc,#_cmd + 2
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:592: for (y = 0; y < 106; y+=1) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00105$:
	ld	a,-2 (ix)
	sub	a,#0x6A
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00108$
;demo.c:593: waitVB();
		halt 
;demo.c:594: cmd.dest_x = 0;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:595: cmd.dest_y = 106+y;
	ld	de,#_cmd + 6
	ld	a,-2 (ix)
	add	a,#0x6A
	ld	c,a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	b,a
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:596: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:597: cmd.dest_x = 256-74;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:598: cmd.dest_y = 106+y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:599: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:601: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:602: cmd.dest_y = 106-y;
	ld	bc,#_cmd + 6
	ld	a,#0x6A
	sub	a,-2 (ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-1 (ix)
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:603: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:604: cmd.dest_x = 256-74;
	ld	hl, #_cmd + 4
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:605: cmd.dest_y = 106-y;
	ld	hl, #_cmd + 6
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:606: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:592: for (y = 0; y < 106; y+=1) {
	inc	-2 (ix)
	jr	NZ,00130$
	inc	-1 (ix)
00130$:
	jp	00105$
00108$:
;demo.c:610: cmd.dest_x = 72;
	ld	hl, #_cmd + 4
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:611: cmd.size_x = 140;
	ld	hl, #_cmd + 8
	ld	(hl),#0x8C
	inc	hl
	ld	(hl),#0x00
;demo.c:612: cmd.size_y = 2;
	ld	hl, #_cmd + 10
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:613: for (y = 212-2; y >= 0; y-=2) {
	ld	bc,#0x00D2
00109$:
	ld	a,b
	bit	7,a
	jr	NZ,00112$
;demo.c:614: waitVB();
		halt 
;demo.c:615: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:616: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:613: for (y = 212-2; y >= 0; y-=2) {
	dec	bc
	dec	bc
	jr	00109$
00112$:
;demo.c:619: twinited = 1;
	ld	hl,#_twinited + 0
	ld	(hl), #0x01
	ld	hl,#_twinited + 1
	ld	(hl), #0x00
;demo.c:620: vdp_load_palette(twister_palette);
	ld	hl,#_twister_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:621: drawstr2x("DSS",80,15);
	ld	hl,#0x0F50
	push	hl
	ld	hl,#__str_7
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
00102$:
;demo.c:625: cmd.size_x = 70;
	ld	hl, #_cmd + 8
	ld	(hl),#0x46
	inc	hl
	ld	(hl),#0x00
;demo.c:626: cmd.size_y = 2;
	ld	hl, #_cmd + 10
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:627: cmd.data = 0;
	ld	a,#0x00
	ld	(#_cmd + 12),a
;demo.c:628: cmd.argument = 0x04; // from 70xY to left
	ld	a,#0x04
	ld	(#_cmd + 13),a
;demo.c:629: cmd.command = 0xe0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xE0
	ld	(bc),a
;demo.c:630: cmd.source_x = 70;
	ld	hl,#_cmd
	ld	(hl),#0x46
	inc	hl
	ld	(hl),#0x00
;demo.c:631: cmd.dest_x = 70;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x46
	inc	hl
	ld	(hl),#0x00
;demo.c:633: twialku++;
	ld	iy,#_twialku
	inc	0 (iy)
	jr	NZ,00131$
	ld	iy,#_twialku
	inc	1 (iy)
00131$:
;demo.c:635: if (twialku > 212) twialku = 212;
	ld	a,#0xD4
	ld	iy,#_twialku
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_twialku
	sbc	a,1 (iy)
	jp	P,00104$
	ld	hl,#_twialku + 0
	ld	(hl), #0xD4
	ld	hl,#_twialku + 1
	ld	(hl), #0x00
00104$:
;demo.c:637: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(bc),a
;demo.c:638: for (y = 104-(twialku>>1); y < 106+(twialku>>1); y+=2) {
	ld	hl,#_twialku + 0
	ld	c,(hl)
	ld	hl,#_twialku + 1
	ld	b,(hl)
	sra	b
	rr	c
	ld	a,#0x68
	sub	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
00113$:
	ld	hl,#_twialku + 0
	ld	e,(hl)
	ld	hl,#_twialku + 1
	ld	d,(hl)
	sra	d
	rr	e
	ld	hl,#0x006A
	add	hl,de
	ex	de,hl
	ld	a,c
	sub	a,e
	ld	a,b
	sbc	a,d
	jp	P,00116$
;demo.c:639: cmd.source_y = ((sintab[(ff+(y>>1)) & 255])>>1)+512+80;
	ld	hl,#_cmd + 2
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	e,c
	ld	d,b
	sra	d
	rr	e
	ld	a,(#_ff+0)
	add	a,e
	ld	e,a
	ld	a,(#_ff+1)
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
	ld	hl,#0x0250
	add	hl,de
	ex	de,hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:640: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:641: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:638: for (y = 104-(twialku>>1); y < 106+(twialku>>1); y+=2) {
	inc	bc
	inc	bc
	jp	00113$
00116$:
;demo.c:644: msx2_palette(4,PLY_PSGReg8+ff>>2,PLY_PSGReg9+ff>>3,ff>>2);
	ld	hl,#_ff + 0
	ld	c,(hl)
	ld	hl,#_ff + 1
	ld	b,(hl)
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl,#_PLY_PSGReg9 + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#_ff
	ld	a,e
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	d,a
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	b,e
	ld	hl,#_PLY_PSGReg8 + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#_ff
	ld	a,e
	add	a,(hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a,(hl)
	ld	d,a
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
;demo.c:646: font();
	call	_font
;demo.c:648: ff+=4;
	ld	hl,#_ff
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
	ld	sp,ix
	pop	ix
	ret
_twister_end::
__str_7:
	.ascii "DSS"
	.db 0x00
;demo.c:659: void bulbs() {
;	---------------------------------
; Function bulbs
; ---------------------------------
_bulbs_start::
_bulbs:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;demo.c:663: ender+=enderdir;
	ld	hl,#_enderdir
	push	de
	ld	iy,#_ender
	push	iy
	pop	de
	ld	a,(de)
	add	a,(hl)
	inc	de
	dec	de
	push	bc
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
	ld	a, c
	dec	de
	ld	(de), a
	ld	a, b
	pop	bc
	inc	hl
	adc	a,(hl)
	inc	de
	ld	(de),a
	pop	de
;demo.c:664: if (ender < 2) { enderdir = -enderdir; }
	ld	a,(#_ender+0)
	sub	a,#0x02
	ld	a,(#_ender+1)
	sbc	a,#0x00
	jp	P,00102$
	xor	a,a
	ld	iy,#_enderdir
	ld	a,#0x00
	sbc	a,0 (iy)
	ld	iy,#_enderdir
	ld	0 (iy),a
	ld	iy,#_enderdir
	ld	a,#0x00
	sbc	a,1 (iy)
	ld	iy,#_enderdir
	ld	1 (iy),a
00102$:
;demo.c:665: if (ender >= 212) { enderdir = -enderdir;  sy -= 2; }
	ld	a,(#_ender+0)
	sub	a,#0xD4
	ld	a,(#_ender+1)
	sbc	a,#0x00
	jp	M,00104$
	xor	a,a
	ld	iy,#_enderdir
	ld	a,#0x00
	sbc	a,0 (iy)
	ld	hl,#_enderdir + 0
	ld	(hl), a
	ld	iy,#_enderdir
	ld	a,#0x00
	sbc	a,1 (iy)
	ld	hl,#_enderdir + 1
	ld	(hl), a
	ld	hl,(_sy)
	dec	hl
	dec	hl
	ld	(_sy),hl
00104$:
;demo.c:667: enderend = ender + 92;
	ld	a,(#_ender+0)
	add	a,#0x5C
	ld	-2 (ix),a
	ld	a,(#_ender+1)
	adc	a,#0x00
	ld	-1 (ix),a
;demo.c:669: if (enderend > 212) enderend = 212;
	ld	a,#0xD4
	sub	a,-2 (ix)
	ld	a,#0x00
	sbc	a,-1 (ix)
	jp	P,00106$
	ld	-2 (ix),#0xD4
	ld	-1 (ix),#0x00
00106$:
;demo.c:670: if (enderend > 212-16) sy = 16-(212-enderend);
	ld	a,#0xC4
	sub	a,-2 (ix)
	ld	a,#0x00
	sbc	a,-1 (ix)
	jp	P,00108$
	ld	a,#0xD4
	sub	a,-2 (ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-1 (ix)
	ld	d,a
	ld	hl,#_sy
	ld	a,#0x10
	sub	a,e
	ld	(hl),a
	ld	a,#0x00
	sbc	a,d
	inc	hl
	ld	(hl),a
00108$:
;demo.c:672: if(bulbflipper == 1) {
	ld	a,(#_bulbflipper+0)
	sub	a,#0x01
	jr	NZ,00133$
	ld	a,(#_bulbflipper+1)
	or	a,a
	jr	Z,00134$
00133$:
	jp	00110$
00134$:
;demo.c:673: cmd.size_x = 72;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:674: cmd.size_y = sy;
	ld	de,#_cmd + 10
	ld	bc,(_sy)
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:675: cmd.data = 0;
	ld	a,#0x00
	ld	(#_cmd + 12),a
;demo.c:676: cmd.argument = 0x04; // from 72xY to left
	ld	a,#0x04
	ld	(#_cmd + 13),a
;demo.c:677: cmd.command = 0xe0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xE0
	ld	(bc),a
;demo.c:678: cmd.source_x = 72;
	ld	hl,#_cmd
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:679: cmd.dest_x = 72;
	ld	hl, #_cmd + 4
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:681: for (y = ender; y < enderend; y+=16) {
	ld	bc,(_ender)
	ld	-4 (ix),c
	ld	-3 (ix),b
00112$:
	ld	a,-4 (ix)
	sub	a,-2 (ix)
	ld	a,-3 (ix)
	sbc	a,-1 (ix)
	jp	P,00115$
;demo.c:682: cmd.source_y = ((sintab[(ff1+(y)) & 255])>>1)+320;
	ld	bc,#_cmd + 2
	ld	a,(#_ff1+0)
	add	a,-4 (ix)
	ld	e,a
	ld	a,(#_ff1+1)
	adc	a,-3 (ix)
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
	ex	de,hl
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:683: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	a,-4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-3 (ix)
	ld	(hl),a
;demo.c:684: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:681: for (y = ender; y < enderend; y+=16) {
	ld	a,-4 (ix)
	add	a,#0x10
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a,#0x00
	ld	-3 (ix),a
	jp	00112$
00115$:
;demo.c:686: ff1+=4;
	ld	hl,#_ff1
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
	jp	00111$
00110$:
;demo.c:690: cmd.size_x = 72;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:691: cmd.size_y = sy;
	ld	bc,#_cmd + 10
	ld	de,(_sy)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:692: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:693: cmd.argument = 0x00; // from 182xY to right
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:694: cmd.command = 0xe0; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0xE0
	ld	(de),a
;demo.c:695: cmd.source_x = 182;
	ld	hl,#_cmd
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:696: cmd.dest_x = 182;
	ld	de,#_cmd + 4
	ld	l,e
	ld	h,d
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:698: for (y = ender; y < enderend; y+=16) {
	ld	bc,(_ender)
00116$:
	ld	a,c
	sub	a,-2 (ix)
	ld	a,b
	sbc	a,-1 (ix)
	jp	P,00119$
;demo.c:699: cmd.source_y = ((sintab[(ff2+(y)) & 255])>>1)+320;
	ld	hl,#_cmd + 2
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,(#_ff2+0)
	add	a,c
	ld	e,a
	ld	a,(#_ff2+1)
	adc	a,b
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
	ex	de,hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:700: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:701: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:698: for (y = ender; y < enderend; y+=16) {
	ld	hl,#0x0010
	add	hl,bc
	ld	c,l
	ld	b,h
	jp	00116$
00119$:
;demo.c:703: ff2+=4;
	ld	hl,#_ff2
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
00111$:
;demo.c:706: bulbflipper = -bulbflipper;
	xor	a,a
	ld	iy,#_bulbflipper
	ld	a,#0x00
	sbc	a,0 (iy)
	ld	hl,#_bulbflipper + 0
	ld	(hl), a
	ld	iy,#_bulbflipper
	ld	a,#0x00
	sbc	a,1 (iy)
	ld	hl,#_bulbflipper + 1
	ld	(hl), a
	ld	sp,ix
	pop	ix
	ret
_bulbs_end::
;demo.c:720: void animplay() {
;	---------------------------------
; Function animplay
; ---------------------------------
_animplay_start::
_animplay:
;demo.c:721: }
	ret
_animplay_end::
;demo.c:734: void drawbox(uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawbox
; ---------------------------------
_drawbox_start::
_drawbox:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:735: cmd.source_x = boxes_x[boxi];
	ld	hl,#_boxi
	ld	a,#<_boxes_x
	add	a,(hl)
	ld	c,a
	ld	a,#>_boxes_x
	adc	a,#0x00
	ld	b,a
	ld	a,(bc)
	ld	c,a
	ld	b,#0x00
	ld	hl,#_cmd
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:736: cmd.source_y = boxes_y[boxi];
	ld	bc,#_cmd + 2
	ld	a,(#_boxi+0)
	add	a,a
	add	a,#<_boxes_y
	ld	l,a
	ld	a,#>_boxes_y
	adc	a,#0x00
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:737: cmd.dest_x = x;
	ld	bc,#_cmd + 4
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:738: cmd.dest_y = y;
	ld	bc,#_cmd + 6
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:739: cmd.size_x = 36;
	ld	hl, #_cmd + 8
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:740: cmd.size_y = 36;
	ld	hl, #_cmd + 10
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:741: cmd.data = 0;
;demo.c:742: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:743: cmd.command = 0x98; // TIMP sprite
	ld	a,#0x98
	ld	(#_cmd + 14),a
;demo.c:744: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:746: prevx = x;
	ld	a,4 (ix)
	ld	hl,#_prevx + 0
	ld	(hl), a
	ld	hl,#_prevx + 1
	ld	(hl), #0x00
;demo.c:747: prevy = y;
	ld	a,5 (ix)
	ld	hl,#_prevy + 0
	ld	(hl), a
	ld	hl,#_prevy + 1
	ld	(hl), #0x00
	pop	ix
	ret
_drawbox_end::
;demo.c:761: void boxes() {
;	---------------------------------
; Function boxes
; ---------------------------------
_boxes_start::
_boxes:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:765: if (bx < 0) return;
	ld	iy,#_bx
	bit	7,1 (iy)
	jp	NZ,00151$
;demo.c:767: if (bonc == 1) {
	ld	a,(#_bonc+0)
	sub	a,#0x01
	jr	NZ,00181$
	ld	a,(#_bonc+1)
	or	a,a
	jr	Z,00182$
00181$:
	jr	00104$
00182$:
;demo.c:769: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:770: cmd.source_y = 256;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:771: cmd.dest_x = pbx;
	ld	bc,#_cmd + 4
	ld	de,(_pbx)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:772: cmd.dest_y = pbt;
	ld	bc,#_cmd + 6
	ld	de,(_pbt)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:773: cmd.size_x = 36;
	ld	hl, #_cmd + 8
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:774: cmd.size_y = 36;
	ld	hl, #_cmd + 10
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:775: cmd.data = 0;
;demo.c:776: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:777: cmd.command = 0xD0; // HMMM
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:778: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
00104$:
;demo.c:781: if (boxes_init == 0) {
	xor	a,a
	ld	hl,#_boxes_init + 0
	or	a,(hl)
	jp	NZ,00106$
;demo.c:782: boxes_init = 1;
	ld	iy,#_boxes_init
	ld	0 (iy),#0x01
;demo.c:784: cmd.size_x = 8;
	ld	hl, #_cmd + 8
	ld	(hl),#0x08
	inc	hl
	ld	(hl),#0x00
;demo.c:785: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:786: cmd.data = 0;
;demo.c:787: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:788: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:789: cmd.source_x = 248;
	ld	hl,#_cmd
	ld	(hl),#0xF8
	inc	hl
	ld	(hl),#0x00
;demo.c:790: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:791: cmd.dest_y = 0;
	ld	bc,#_cmd + 6
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:793: for (x = 248; x >= 0; x-=8) {
	ld	-2 (ix),#0xF8
	ld	-1 (ix),#0x00
00139$:
	bit	7,-1 (ix)
	jp	NZ,00142$
;demo.c:794: msx2_palette(4,ff>>2,ff>>3,ff>>2);
	ld	hl,#_ff + 0
	ld	e,(hl)
	ld	hl,#_ff + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	hl,#_ff + 0
	ld	d,(hl)
	ld	hl,#_ff + 1
	ld	c,(hl)
	sra	c
	rr	d
	sra	c
	rr	d
	sra	c
	rr	d
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d,e
	ld	e,#0x04
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:795: ff+=2;
	ld	hl,#_ff
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
;demo.c:796: waitVB();
		halt 
;demo.c:797: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:798: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:799: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:800: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:801: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:793: for (x = 248; x >= 0; x-=8) {
	ld	a,-2 (ix)
	add	a,#0xF8
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	jp	00139$
00142$:
;demo.c:804: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:806: for (x=0;x < 8;x++) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00147$:
	ld	a,-2 (ix)
	sub	a,#0x08
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00150$
;demo.c:808: for (y=0;y < 9;y++) {
	ld	de,#0x0000
00143$:
	ld	a,e
	sub	a,#0x09
	ld	a,d
	sbc	a,#0x00
	jp	P,00149$
;demo.c:809: boxes_x[4] = 0;
	ld	bc,#_boxes_x + 4
	ld	a,#0x00
	ld	(bc),a
;demo.c:810: boxes_y[4] = 768+2*36;
	ld	hl, #_boxes_y + 8
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x03
;demo.c:811: boxi = 4;
	ld	hl,#_boxi + 0
	ld	(hl), #0x04
;demo.c:812: drawbox((x*36),y*18);
	ld	c,e
	push	de
	ld	a,c
	ld	e,a
	add	a,a
	add	a,a
	add	a,a
	add	a,e
	add	a,a
	pop	de
	ld	c,a
	ld	b,-2 (ix)
	push	de
	ld	a,b
	ld	e,a
	add	a,a
	add	a,a
	add	a,a
	add	a,e
	add	a,a
	add	a,a
	pop	de
	ld	b,a
	push	de
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_drawbox
	pop	af
	pop	de
;demo.c:813: boxi = 0;
	ld	hl,#_boxi + 0
	ld	(hl), #0x00
;demo.c:808: for (y=0;y < 9;y++) {
	inc	de
	jp	00143$
00149$:
;demo.c:806: for (x=0;x < 8;x++) {
	inc	-2 (ix)
	jr	NZ,00185$
	inc	-1 (ix)
00185$:
	jp	00147$
00150$:
;demo.c:817: slowend = 43;
	ld	hl,#_slowend + 0
	ld	(hl), #0x2B
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:818: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00106$:
;demo.c:821: if (bt >= 80) bt+=8;
	ld	a,(#_bt+0)
	sub	a,#0x50
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	M,00108$
	ld	hl,#_bt
	ld	a,(hl)
	add	a,#0x08
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
00108$:
;demo.c:822: if (bt < 80 && bt >= 60) bt+=7;
	ld	a,(#_bt+0)
	sub	a,#0x50
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	P,00110$
	ld	a,(#_bt+0)
	sub	a,#0x3C
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	M,00110$
	ld	hl,#_bt
	ld	a,(hl)
	add	a,#0x07
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
00110$:
;demo.c:823: if (bt < 60 && bt >= 40) bt+=6;
	ld	a,(#_bt+0)
	sub	a,#0x3C
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	P,00113$
	ld	a,(#_bt+0)
	sub	a,#0x28
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	M,00113$
	ld	hl,#_bt
	ld	a,(hl)
	add	a,#0x06
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
00113$:
;demo.c:824: if (bt < 40 && bt >= 10) bt+=5;
	ld	a,(#_bt+0)
	sub	a,#0x28
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	P,00116$
	ld	a,(#_bt+0)
	sub	a,#0x0A
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	M,00116$
	ld	hl,#_bt
	ld	a,(hl)
	add	a,#0x05
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
00116$:
;demo.c:825: if (bt < 10 ) bt+=4;
	ld	a,(#_bt+0)
	sub	a,#0x0A
	ld	a,(#_bt+1)
	sbc	a,#0x00
	jp	P,00119$
	ld	hl,#_bt
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
00119$:
;demo.c:828: cmd.source_x = bx;
	ld	bc,(_bx)
	ld	hl,#_cmd
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:829: cmd.source_y = bt;
	ld	bc,#_cmd + 2
	ld	de,(_bt)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:830: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:831: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:832: cmd.size_x = 36;
	ld	hl, #_cmd + 8
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:833: cmd.size_y = 36;
	ld	hl, #_cmd + 10
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:834: cmd.data = 0;
;demo.c:835: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:836: cmd.command = 0xD0; // HMMM
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:837: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:839: pbx = bx;
	ld	hl,(_bx)
	ld	iy,#_pbx
	ld	0 (iy),l
	ld	iy,#_pbx
	ld	1 (iy),h
;demo.c:840: pbt = bt;
	ld	hl,(_bt)
	ld	iy,#_pbt
	ld	0 (iy),l
	ld	iy,#_pbt
	ld	1 (iy),h
;demo.c:842: boxticks++;
	ld	iy,#_boxticks
	inc	0 (iy)
	jr	NZ,00186$
	ld	iy,#_boxticks
	inc	1 (iy)
00186$:
;demo.c:843: if (boxticks > 8) {
	ld	a,#0x08
	ld	iy,#_boxticks
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_boxticks
	sbc	a,1 (iy)
	jp	P,00121$
;demo.c:844: drawsine("Let us stop   We are building walls between",8,182);
	ld	hl,#0xB608
	push	hl
	ld	hl,#__str_8
	push	hl
	call	_drawsine
	pop	af
	pop	af
;demo.c:845: boxticks  = 0;
	ld	hl,#_boxticks + 0
	ld	(hl), #0x00
	ld	hl,#_boxticks + 1
	ld	(hl), #0x00
00121$:
;demo.c:848: bonc = 1;
	ld	hl,#_bonc + 0
	ld	(hl), #0x01
	ld	hl,#_bonc + 1
	ld	(hl), #0x00
;demo.c:849: if (bt > by) {
	ld	hl,#_by
	ld	a,(hl)
	ld	iy,#_bt
	sub	a,0 (iy)
	inc	hl
	ld	a,(hl)
	ld	iy,#_bt
	sbc	a,1 (iy)
	jp	P,00137$
;demo.c:850: bt = by;
	ld	hl,(_by)
	ld	iy,#_bt
	ld	0 (iy),l
	ld	iy,#_bt
	ld	1 (iy),h
;demo.c:851: drawbox(bx,bt);
	ld	hl,#_bt + 0
	ld	c,(hl)
	ld	hl,#_bx + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_drawbox
	pop	af
;demo.c:852: bt = 0;
	ld	hl,#_bt + 0
	ld	(hl), #0x00
	ld	hl,#_bt + 1
	ld	(hl), #0x00
;demo.c:853: if (by > 48) {
	ld	a,#0x30
	ld	iy,#_by
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_by
	sbc	a,1 (iy)
	jp	P,00125$
;demo.c:854: bonc = 0;
	ld	hl,#_bonc + 0
	ld	(hl), #0x00
	ld	hl,#_bonc + 1
	ld	(hl), #0x00
;demo.c:855: by-=16;
	ld	hl,#_by
	ld	a,(hl)
	add	a,#0xF0
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a,#0xFF
	ld	(hl),a
;demo.c:856: prevbox_of = boxes_of[boxi];
	ld	a,(#_boxi+0)
	add	a,a
	add	a,#<_boxes_of
	ld	l,a
	ld	a,#>_boxes_of
	adc	a,#0x00
	ld	h,a
	ld	c,(hl)
	inc	hl
	ld	hl,#_prevbox_of + 0
	ld	(hl), c
;demo.c:857: by+=prevbox_of;
	ld	hl,#_prevbox_of + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#_by
	ld	a,(hl)
	add	a,c
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
	adc	a,b
	inc	hl
	ld	(hl),a
;demo.c:858: boxi++;
	ld	iy,#_boxi
	inc	0 (iy)
;demo.c:859: if (boxi >= 4) boxi = 0;
	ld	a,(#_boxi+0)
	sub	a,#0x04
	jr	C,00125$
	ld	hl,#_boxi + 0
	ld	(hl), #0x00
00125$:
;demo.c:862: if (by <= 48) {
	ld	a,#0x30
	ld	iy,#_by
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_by
	sbc	a,1 (iy)
	jp	M,00151$
;demo.c:863: bx-=16;
	ld	hl,#_bx
	ld	a,(hl)
	add	a,#0xF0
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a,#0xFF
	ld	(hl),a
;demo.c:865: if (bx>128)bo+=8;
	ld	a,#0x80
	ld	iy,#_bx
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_bx
	sbc	a,1 (iy)
	rlca
	and	a,#0x01
	ld	c,a
	or	a,a
	jr	Z,00127$
	ld	hl,#_bo
	ld	a,(hl)
	add	a,#0x08
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
	jr	00128$
00127$:
;demo.c:866: else bo-=8;
	ld	hl,#_bo
	ld	a,(hl)
	add	a,#0xF8
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a,#0xFF
	ld	(hl),a
00128$:
;demo.c:867: if (bo > 192) bo = 0;
	ld	a,#0xC0
	ld	iy,#_bo
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_bo
	sbc	a,1 (iy)
	jp	P,00130$
	ld	hl,#_bo + 0
	ld	(hl), #0x00
	ld	hl,#_bo + 1
	ld	(hl), #0x00
00130$:
;demo.c:868: if (bx>128)by=84+bo;
	xor	a,a
	or	a,c
	jr	Z,00132$
	ld	hl,#_by
	ld	a,(#_bo+0)
	add	a,#0x54
	ld	(hl),a
	ld	a,(#_bo+1)
	adc	a,#0x00
	inc	hl
	ld	(hl),a
	jr	00151$
00132$:
;demo.c:869: else by=36+36+84+bo;
	ld	hl,#_by
	ld	a,(#_bo+0)
	add	a,#0x9C
	ld	(hl),a
	ld	a,(#_bo+1)
	adc	a,#0x00
	inc	hl
	ld	(hl),a
	jr	00151$
00137$:
;demo.c:872: drawbox(bx,bt);
	ld	hl,#_bt + 0
	ld	c,(hl)
	ld	hl,#_bx + 0
	ld	b,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_drawbox
	pop	af
00151$:
	ld	sp,ix
	pop	ix
	ret
_boxes_end::
__str_8:
	.ascii "Let us stop   We are building walls between"
	.db 0x00
;demo.c:883: void thewave() {
;	---------------------------------
; Function thewave
; ---------------------------------
_thewave_start::
_thewave:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-11
	add	hl,sp
	ld	sp,hl
;demo.c:892: if (initwave == 0) {
	xor	a,a
	ld	hl,#_initwave + 0
	or	a,(hl)
	jp	NZ,00113$
;demo.c:893: initwave = 1;
	ld	hl,#_initwave + 0
	ld	(hl), #0x01
;demo.c:894: for (y = 0; y < 212; y++) {
	ld	-2 (ix),#0x00
00128$:
	ld	a,-2 (ix)
	sub	a,#0xD4
	jp	NC,00131$
;demo.c:895: cmd.size_x = 256;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:896: cmd.size_y = 2;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:897: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:898: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:899: cmd.command = 0xd0; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0xD0
	ld	(de),a
;demo.c:901: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:902: cmd.source_y = 0;
	ld	de,#_cmd + 2
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:903: cmd.dest_x = 0;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:904: cmd.dest_y = 0+y;
	ld	de,#_cmd + 6
	ld	c,-2 (ix)
	ld	b,#0x00
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:905: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:906: cmd.dest_y = 256+y;
	ld	de,#_cmd + 6
	ld	hl,#0x0100
	add	hl,bc
	ld	c,l
	ld	b,h
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:907: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:908: waitVB();
		halt 
;demo.c:894: for (y = 0; y < 212; y++) {
	inc	-2 (ix)
	jp	00128$
00131$:
;demo.c:911: for (y = 9; y < 15; y+=1) {
	ld	-2 (ix),#0x09
00132$:
	ld	a,-2 (ix)
	sub	a,#0x0F
	jp	NC,00113$
;demo.c:912: for (x = 0; x < 21; x+=1) {
	ld	a,-2 (ix)
	add	a,a
	ld	-9 (ix),a
	ld	-1 (ix),#0x00
00108$:
	ld	a,-1 (ix)
	sub	a,#0x15
	jp	NC,00134$
;demo.c:913: if (x > 6 && x < 13) continue; 
	ld	a,#0x06
	sub	a,-1 (ix)
	jr	NC,00102$
	ld	a,-1 (ix)
	sub	a,#0x0D
	jp	C,00110$
00102$:
;demo.c:915: if (x <= 6) px=7 + (sintab[(105 + (x<<3) + (y<<3)) & 255]>>4);
	ld	a,#0x06
	sub	a,-1 (ix)
	jp	C,00105$
	ld	d,-1 (ix)
	ld	c,#0x00
	sla	d
	rl	c
	sla	d
	rl	c
	sla	d
	rl	c
	ld	a,d
	add	a,#0x69
	ld	d,a
	ld	a,c
	adc	a,#0x00
	ld	b,a
	ld	e,-2 (ix)
	ld	c,#0x00
	sla	e
	rl	c
	sla	e
	rl	c
	sla	e
	rl	c
	ld	a,d
	add	a,e
	ld	e,a
	ld	a,b
	adc	a,c
	ld	c,#0x00
	ld	a,#<_sintab
	add	a,e
	ld	e,a
	ld	a,#>_sintab
	adc	a,c
	ld	l,e
	ld	h,a
	ld	e,(hl)
	sra	e
	sra	e
	sra	e
	sra	e
	ld	a,e
	rla	
	sbc	a,a
	ld	c,a
	ld	a,e
	add	a,#0x07
	ld	-4 (ix),a
	ld	a,c
	adc	a,#0x00
	ld	-3 (ix),a
00105$:
;demo.c:916: if (x >= 13) px=7 + (sintab[(105 + ((23+x)<<3) + ((19+y)<<3)) & 255]>>4);
	ld	a,-1 (ix)
	sub	a,#0x0D
	jp	C,00107$
	ld	e,-1 (ix)
	ld	d,#0x00
	ld	hl,#0x0017
	add	hl,de
	ex	de,hl
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	ld	hl,#0x0069
	add	hl,de
	ld	b,l
	ld	d,h
	ld	c,-2 (ix)
	ld	e,#0x00
	ld	a,c
	add	a,#0x13
	ld	c,a
	ld	a,e
	adc	a,#0x00
	ld	e,a
	sla	c
	rl	e
	sla	c
	rl	e
	sla	c
	rl	e
	ld	a,b
	add	a,c
	ld	c,a
	ld	a,d
	adc	a,e
	ld	e,#0x00
	ld	a,#<_sintab
	add	a,c
	ld	c,a
	ld	a,#>_sintab
	adc	a,e
	ld	l,c
	ld	h,a
	ld	c,(hl)
	sra	c
	sra	c
	sra	c
	sra	c
	ld	a,c
	rla	
	sbc	a,a
	ld	e,a
	ld	a,c
	add	a,#0x07
	ld	-4 (ix),a
	ld	a,e
	adc	a,#0x00
	ld	-3 (ix),a
00107$:
;demo.c:918: cmd.size_x = 11;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x0B
	inc	hl
	ld	(hl),#0x00
;demo.c:919: cmd.size_y = 28-(14-px);
	ld	hl,#_cmd + 10
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,-3 (ix)
	ld	e,a
	ld	a,#0x1C
	sub	a,c
	ld	d,a
	ld	a,#0x00
	sbc	a,e
	ld	b,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),b
;demo.c:920: cmd.data = 0;
	ld	hl,#_cmd + 12
	ld	(hl),#0x00
;demo.c:921: cmd.argument = 0x00; // from 70xY to left
	ld	hl,#_cmd + 13
	ld	(hl),#0x00
;demo.c:922: cmd.command = 0x98; // vram to vram, y only
	ld	hl,#_cmd + 14
	ld	(hl),#0x98
;demo.c:924: cmd.source_x = twelvetimes[px];
	ld	b,-4 (ix)
	ld	d,-3 (ix)
	sla	b
	rl	d
	ld	a,#<_twelvetimes
	add	a,b
	ld	b,a
	ld	a,#>_twelvetimes
	adc	a,d
	ld	l,b
	ld	h,a
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#_cmd
	ld	(hl),b
	inc	hl
	ld	(hl),d
;demo.c:925: cmd.source_y = 768+183+(15-px);
	inc	hl
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,#0xC6
	sub	a,-4 (ix)
	ld	b,a
	ld	a,#0x03
	sbc	a,-3 (ix)
	ld	d,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),d
;demo.c:926: cmd.dest_x = 0+twelvetimes[x];
	ld	hl,#_cmd + 4
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,-1 (ix)
	add	a,a
	add	a,#<_twelvetimes
	ld	l,a
	ld	a,#>_twelvetimes
	adc	a,#0x00
	ld	h,a
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),d
;demo.c:927: cmd.dest_y = 0+bo+(eighttimes[y]+4)+(14-px);
	ld	hl,#_cmd + 6
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,#<_eighttimes
	add	a,-9 (ix)
	ld	l,a
	ld	a,#>_eighttimes
	adc	a,#0x00
	ld	h,a
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,b
	add	a,#0x04
	ld	b,a
	ld	a,d
	adc	a,#0x00
	ld	d,a
	ld	a,b
	add	a,c
	ld	b,a
	ld	a,d
	adc	a,e
	ld	d,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),d
;demo.c:928: vdp_copier(&cmd);
	push	bc
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
	pop	bc
;demo.c:929: cmd.dest_y = 256+bo+(eighttimes[y]+4)+(14-px);
	ld	hl,#_cmd + 6
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,#<_eighttimes
	add	a,-9 (ix)
	ld	l,a
	ld	a,#>_eighttimes
	adc	a,#0x00
	ld	h,a
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,b
	add	a,#0x04
	ld	b,a
	ld	a,d
	adc	a,#0x00
	add	a,#0x01
	ld	d,a
	ld	a,b
	add	a,c
	ld	c,a
	ld	a,d
	adc	a,e
	ld	e,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),e
;demo.c:930: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
00110$:
;demo.c:912: for (x = 0; x < 21; x+=1) {
	inc	-1 (ix)
	jp	00108$
00134$:
;demo.c:911: for (y = 9; y < 15; y+=1) {
	inc	-2 (ix)
	jp	00132$
00113$:
;demo.c:936: if (buf == -1) { bo = 0; ya = 0; }
	ld	a,(#_buf+0)
	inc	a
	jr	NZ,00188$
	ld	a,(#_buf+1)
	inc	a
	jr	Z,00189$
00188$:
	jr	00115$
00189$:
	ld	bc,#0x0000
	jr	00116$
00115$:
;demo.c:937: else { bo = 256; ya = 6;}
	ld	bc,#0x0100
00116$:
;demo.c:939: cmd.size_x = 72;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:940: cmd.size_y = 80;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x50
	inc	hl
	ld	(hl),#0x00
;demo.c:941: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:942: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:943: cmd.command = 0xd0; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0xD0
	ld	(de),a
;demo.c:944: cmd.source_x = 178;
	ld	hl,#_cmd
	ld	(hl),#0xB2
	inc	hl
	ld	(hl),#0x00
;demo.c:945: cmd.source_y = 0;
	ld	de,#_cmd + 2
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:946: cmd.dest_x = 84;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x54
	inc	hl
	ld	(hl),#0x00
;demo.c:947: cmd.dest_y = 72+bo;
	ld	de,#_cmd + 6
	ld	hl,#0x0048
	add	hl,bc
	ld	c,l
	ld	b,h
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:948: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:950: lukema = ffa;
	ld	hl,(_ffa)
	ld	-6 (ix),l
	ld	-5 (ix),h
;demo.c:951: for (y = 0; y < 5; y+=1) {
	ld	-2 (ix),#0x00
00140$:
	ld	a,-2 (ix)
	sub	a,#0x05
	jp	NC,00143$
;demo.c:952: for (x = 0; x < 6; x+=1) {
	ld	a,-2 (ix)
	add	a,a
	ld	-9 (ix),a
	ld	-1 (ix),#0x00
00136$:
	ld	a,-1 (ix)
	sub	a,#0x06
	jp	NC,00142$
;demo.c:954: px=7 + (sintab[(lukema + (x<<3) + (y<<2)) & 255]>>4);
	ld	e,-1 (ix)
	ld	d,#0x00
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	ld	a,-6 (ix)
	add	a,e
	ld	-8 (ix),a
	ld	a,-5 (ix)
	adc	a,d
	ld	-7 (ix),a
	ld	e,-2 (ix)
	ld	d,#0x00
	sla	e
	rl	d
	sla	e
	rl	d
	ld	a,-8 (ix)
	add	a,e
	ld	e,a
	ld	a,-7 (ix)
	adc	a,d
	ld	d,#0x00
	ld	hl,#_sintab
	add	hl,de
	ld	e,(hl)
	sra	e
	sra	e
	sra	e
	sra	e
	ld	a,e
	rla	
	sbc	a,a
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ld	-4 (ix),l
;demo.c:955: if (px < 0) px = 0; 
	ld	-3 (ix),h
	ld	a, h
	bit	7,a
	jr	Z,00118$
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
00118$:
;demo.c:956: if (px > 14) px = 14; 
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	a,#0x00
	sbc	a,-3 (ix)
	jp	P,00120$
	ld	-4 (ix),#0x0E
	ld	-3 (ix),#0x00
00120$:
;demo.c:958: cmd.size_x = 12;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:959: cmd.size_y = 11;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x0B
	inc	hl
	ld	(hl),#0x00
;demo.c:960: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:961: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:962: cmd.command = 0x98; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0x98
	ld	(de),a
;demo.c:964: cmd.source_x = twelvetimes[px];
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	sla	e
	rl	d
	ld	hl,#_twelvetimes
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#_cmd
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:965: cmd.source_y = 768+183+16-px;
	inc	hl
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,#0xC7
	sub	a,-4 (ix)
	ld	e,a
	ld	a,#0x03
	sbc	a,-3 (ix)
	ld	d,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:966: cmd.dest_x = 84+twelvetimes[x];
	ld	hl,#_cmd + 4
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,-1 (ix)
	add	a,a
	add	a,#<_twelvetimes
	ld	l,a
	ld	a,#>_twelvetimes
	adc	a,#0x00
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0054
	add	hl,de
	ex	de,hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:967: cmd.dest_y = 72+bo+(eighttimes[y]+4)+(14-px);
	ld	hl,#_cmd + 6
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	a,#<_eighttimes
	add	a,-9 (ix)
	ld	l,a
	ld	a,#>_eighttimes
	adc	a,#0x00
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,c
	add	a,e
	ld	-11 (ix),a
	ld	a,b
	adc	a,d
	ld	-10 (ix),a
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-3 (ix)
	ld	d,a
	ld	a,-11 (ix)
	add	a,e
	ld	e,a
	ld	a,-10 (ix)
	adc	a,d
	ld	d,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:968: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:952: for (x = 0; x < 6; x+=1) {
	inc	-1 (ix)
	jp	00136$
00142$:
;demo.c:951: for (y = 0; y < 5; y+=1) {
	inc	-2 (ix)
	jp	00140$
00143$:
;demo.c:973: for (x = 0; x < 6; x+=1) {
	ld	-1 (ix),#0x00
00144$:
	ld	a,-1 (ix)
	sub	a,#0x06
	jp	NC,00147$
;demo.c:974: px=7 + (sintab[(lukema + (x<<3) + (y<<2)) & 255]>>4);
	ld	e,-1 (ix)
	ld	d,#0x00
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	ld	a,-6 (ix)
	add	a,e
	ld	e,a
	ld	a,-5 (ix)
	adc	a,d
	ld	d,a
	ld	hl,#0x0014
	add	hl,de
	ld	e,l
	ld	d,#0x00
	ld	hl,#_sintab
	add	hl,de
	ld	e,(hl)
	sra	e
	sra	e
	sra	e
	sra	e
	ld	a,e
	rla	
	sbc	a,a
	ld	d,a
	ld	hl,#0x0007
	add	hl,de
	ld	-4 (ix),l
;demo.c:975: if (px < 0) px = 0; 
	ld	-3 (ix),h
	ld	a, h
	bit	7,a
	jr	Z,00122$
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
00122$:
;demo.c:976: if (px > 14) px = 14; 
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	a,#0x00
	sbc	a,-3 (ix)
	jp	P,00124$
	ld	-4 (ix),#0x0E
	ld	-3 (ix),#0x00
00124$:
;demo.c:978: cmd.size_x = 12;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:979: cmd.size_y = 27-(14-px);
	ld	hl,#_cmd + 10
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	-8 (ix),a
	ld	a,#0x00
	sbc	a,-3 (ix)
	ld	-7 (ix),a
	ld	a,#0x1B
	sub	a,-8 (ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-7 (ix)
	ld	d,a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:980: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:981: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:982: cmd.command = 0x98; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0x98
	ld	(de),a
;demo.c:984: cmd.source_x = twelvetimes[px];
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	sla	e
	rl	d
	ld	hl,#_twelvetimes
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#_cmd
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:985: cmd.source_y = 768+183+ 16-px;
	inc	hl
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	a,#0xC7
	sub	a,-4 (ix)
	ld	e,a
	ld	a,#0x03
	sbc	a,-3 (ix)
	ld	d,a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:986: cmd.dest_x = 84+twelvetimes[x];
	ld	hl,#_cmd + 4
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	a,-1 (ix)
	add	a,a
	add	a,#<_twelvetimes
	ld	l,a
	ld	a,#>_twelvetimes
	adc	a,#0x00
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0054
	add	hl,de
	ex	de,hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:987: cmd.dest_y = 72+bo+(eighttimes[y]+4)+(14-px);
	ld	hl,#_cmd + 6
	ld	-11 (ix),l
	ld	-10 (ix),h
	ld	de,#_eighttimes + 10
	ex	de,hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,c
	add	a,e
	ld	e,a
	ld	a,b
	adc	a,d
	ld	d,a
	ld	a,e
	add	a,-8 (ix)
	ld	e,a
	ld	a,d
	adc	a,-7 (ix)
	ld	d,a
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:988: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:973: for (x = 0; x < 6; x+=1) {
	inc	-1 (ix)
	jp	00144$
00147$:
;demo.c:992: if (buf == -1) vdp_register(2, 0x1F);
	ld	a,(#_buf+0)
	inc	a
	jr	NZ,00200$
	ld	a,(#_buf+1)
	inc	a
	jr	Z,00201$
00200$:
	jr	00126$
00201$:
	ld	hl,#0x1F02
	push	hl
	call	_vdp_register
	pop	af
	jr	00127$
00126$:
;demo.c:993: else vdp_register(2, 0x3F);
	ld	hl,#0x3F02
	push	hl
	call	_vdp_register
	pop	af
00127$:
;demo.c:996: buf = -buf;
	xor	a,a
	ld	iy,#_buf
	ld	a,#0x00
	sbc	a,0 (iy)
	ld	hl,#_buf + 0
	ld	(hl), a
	ld	iy,#_buf
	ld	a,#0x00
	sbc	a,1 (iy)
	ld	hl,#_buf + 1
	ld	(hl), a
;demo.c:998: ffa+=8;
	ld	hl,#_ffa
	ld	a,(hl)
	add	a,#0x08
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
	ld	sp,ix
	pop	ix
	ret
_thewave_end::
;demo.c:1004: void drawtritile(uint8_t tx, int ty, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawtritile
; ---------------------------------
_drawtritile_start::
_drawtritile:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:1005: cmd.source_x = tx;
	ld	c,4 (ix)
	ld	b,#0x00
	ld	hl,#_cmd
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1006: cmd.source_y = ty-1;
	ld	bc,#_cmd + 2
	ld	e,5 (ix)
	ld	d,6 (ix)
	dec	de
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1007: cmd.dest_x = x;
	ld	bc,#_cmd + 4
	ld	e,7 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1008: cmd.dest_y = y;
	ld	bc,#_cmd + 6
	ld	e,8 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1009: cmd.size_x = 16;
	ld	hl, #_cmd + 8
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:1010: cmd.size_y = 16;
	ld	hl, #_cmd + 10
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:1011: cmd.data = 0;
;demo.c:1012: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1013: cmd.command = 0xd0; // HMMM
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1014: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	ix
	ret
_drawtritile_end::
;demo.c:1021: void drawtilescreen(char* tripic) {
;	---------------------------------
; Function drawtilescreen
; ---------------------------------
_drawtilescreen_start::
_drawtilescreen:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;demo.c:1023: if(tilei >= 192) return;
	ld	a,(#_tilei+0)
	sub	a,#0xC0
	ld	a,(#_tilei+1)
	sbc	a,#0x00
	jp	M,00102$
	jp	00112$
00102$:
;demo.c:1025: tiletick++;
	ld	iy,#_tiletick
	inc	0 (iy)
;demo.c:1026: if (tiletick > 6) { tiletick = 0;}
	ld	a,#0x06
	ld	iy,#_tiletick
	sub	a,0 (iy)
	jr	NC,00104$
	ld	iy,#_tiletick
	ld	0 (iy),#0x00
	jr	00118$
00104$:
;demo.c:1027: else return;
	jp	00112$
;demo.c:1028: for (i=0;i<20;i++) {
00118$:
	ld	-1 (ix),#0x00
00108$:
	ld	a,-1 (ix)
	sub	a,#0x14
	jp	NC,00112$
;demo.c:1029: drawtritile(tri_lookup_x[tripic[tilei]],tri_lookup_y[tripic[tilei]],tilex,tiley);
	ld	a,(#_tiley+0)
	ld	-3 (ix),a
	ld	a,(#_tilex+0)
	ld	-2 (ix),a
	ld	hl,#_tilei
	ld	a,4 (ix)
	add	a,(hl)
	ld	d,a
	ld	a,5 (ix)
	inc	hl
	adc	a,(hl)
	ld	l,d
	ld	h,a
	ld	d,(hl)
	ld	a,d
	add	a,a
	add	a,#<_tri_lookup_y
	ld	l,a
	ld	a,#>_tri_lookup_y
	adc	a,#0x00
	ld	h,a
	ld	c,(hl)
	inc	hl
	ld	e,(hl)
	ld	a,#<_tri_lookup_x
	add	a,d
	ld	l,a
	ld	a,#>_tri_lookup_x
	adc	a,#0x00
	ld	h,a
	ld	d,(hl)
	ld	h,-3 (ix)
	ld	l,-2 (ix)
	push	hl
	ld	l,c
	ld	h,e
	push	hl
	push	de
	inc	sp
	call	_drawtritile
	pop	af
	pop	af
	inc	sp
;demo.c:1030: tilex+=16;
	ld	hl,#_tilex
	ld	a,(hl)
	add	a,#0x10
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
;demo.c:1031: tilei++;
	ld	iy,#_tilei
	inc	0 (iy)
	jr	NZ,00119$
	ld	iy,#_tilei
	inc	1 (iy)
00119$:
;demo.c:1032: if (tilex >= 256) {tilex = 0; tiley+=16; return; }
	ld	a,(#_tilex+0)
	sub	a,#0x00
	ld	a,(#_tilex+1)
	sbc	a,#0x01
	jp	M,00110$
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley
	ld	a,(hl)
	add	a,#0x10
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
	jr	00112$
00110$:
;demo.c:1028: for (i=0;i<20;i++) {
	inc	-1 (ix)
	jp	00108$
00112$:
	ld	sp,ix
	pop	ix
	ret
_drawtilescreen_end::
;demo.c:1037: void drawtilescreen_full(char* tripic) {
;	---------------------------------
; Function drawtilescreen_full
; ---------------------------------
_drawtilescreen_full_start::
_drawtilescreen_full:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;demo.c:1038: int x = 0;
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
;demo.c:1041: while(i < 192) {
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
00103$:
	ld	a,-6 (ix)
	sub	a,#0xC0
	ld	a,-5 (ix)
	sbc	a,#0x00
	jp	P,00106$
;demo.c:1042: drawtritile(tri_lookup_x[tripic[i]],tri_lookup_y[tripic[i]],x,y);
	ld	a,-4 (ix)
	ld	-8 (ix),a
	ld	a,-2 (ix)
	ld	-7 (ix),a
	ld	a,4 (ix)
	add	a,-6 (ix)
	ld	c,a
	ld	a,5 (ix)
	adc	a,-5 (ix)
	ld	b,a
	ld	a,(bc)
	ld	c,a
	add	a,a
	add	a,#<_tri_lookup_y
	ld	l,a
	ld	a,#>_tri_lookup_y
	adc	a,#0x00
	ld	h,a
	ld	b,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,#<_tri_lookup_x
	add	a,c
	ld	l,a
	ld	a,#>_tri_lookup_x
	adc	a,#0x00
	ld	h,a
	ld	c,(hl)
	ld	h,-8 (ix)
	ld	l,-7 (ix)
	push	hl
	ld	e,b
	push	de
	ld	a,c
	push	af
	inc	sp
	call	_drawtritile
	pop	af
	pop	af
	inc	sp
;demo.c:1043: x+=16;
	ld	a,-2 (ix)
	add	a,#0x10
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
;demo.c:1044: if (x >= 256) {x = 0; y+=16;}
	ld	a,-2 (ix)
	sub	a,#0x00
	ld	a,-1 (ix)
	sbc	a,#0x01
	jp	M,00102$
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
	ld	a,-4 (ix)
	add	a,#0x10
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a,#0x00
	ld	-3 (ix),a
00102$:
;demo.c:1045: i++;
	inc	-6 (ix)
	jr	NZ,00112$
	inc	-5 (ix)
00112$:
	jp	00103$
00106$:
	ld	sp,ix
	pop	ix
	ret
_drawtilescreen_full_end::
;demo.c:1061: void tritiles() {
;	---------------------------------
; Function tritiles
; ---------------------------------
_tritiles_start::
_tritiles:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-5
	add	hl,sp
	ld	sp,hl
;demo.c:1068: if (tri_inited == 0 || tri_inited == 2) {
	xor	a,a
	ld	iy,#_tri_inited
	or	a,0 (iy)
	jr	Z,00106$
	ld	iy,#_tri_inited
	ld	a,0 (iy)
	sub	a,#0x02
	jp	NZ,00107$
00106$:
;demo.c:1070: cmd.size_x = 2;
	ld	hl, #_cmd + 8
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:1071: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1072: cmd.data = 0;
;demo.c:1073: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1074: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1075: cmd.source_x = 255;
	ld	hl,#_cmd
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;demo.c:1076: cmd.source_y = 0;
	ld	bc,#_cmd + 2
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1078: for (x = 0; x < 128; x+=2) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00167$:
	ld	a,-2 (ix)
	sub	a,#0x80
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00170$
;demo.c:1079: waitVB();
		halt 
;demo.c:1080: cmd.dest_y = 256;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1081: cmd.dest_x = 128-x;
	ld	de,#_cmd + 4
	ld	a,#0x80
	sub	a,-2 (ix)
	ld	c,a
	ld	a,#0x00
	sbc	a,-1 (ix)
	ld	b,a
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1082: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1083: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1084: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1085: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1086: cmd.dest_x = 128+x;
	ld	bc,#_cmd + 4
	ld	a,-2 (ix)
	add	a,#0x80
	ld	e,a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1087: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1088: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1089: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1078: for (x = 0; x < 128; x+=2) {
	ld	a,-2 (ix)
	add	a,#0x02
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
	jp	00167$
00170$:
;demo.c:1092: scratch_clear();
	call	_scratch_clear
;demo.c:1093: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1095: tri_inited++;
	ld	iy,#_tri_inited
	inc	0 (iy)
;demo.c:1096: vdp_register(9,2); // 50hz,192
	ld	hl,#0x0209
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1100: vdp_register(2, 0x1f);
	ld	hl,#0x1F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1101: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:1104: if (tri_inited == 0) vdp_load_palette(boxes_palette);
	xor	a,a
	ld	hl,#_tri_inited + 0
	or	a,(hl)
	jr	NZ,00104$
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
	jr	00105$
00104$:
;demo.c:1105: else if (tri_inited == 2) { 
	ld	a,(#_tri_inited+0)
	sub	a,#0x02
	jr	NZ,00105$
;demo.c:1106: vdp_load_palette(boxes_palette); 
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1107: triframes = 0; 
	ld	hl,#_triframes + 0
	ld	(hl), #0x00
	ld	hl,#_triframes + 1
	ld	(hl), #0x00
;demo.c:1109: tripal[0] = 4;
	ld	hl,#_tripal
	ld	(hl),#0x04
;demo.c:1110: tripal[1] = 4;
	ld	a,#0x04
	ld	(#_tripal + 1),a
;demo.c:1111: tripal[2] = 3;
	ld	a,#0x03
	ld	(#_tripal + 2),a
;demo.c:1113: tripal[3] = 2;
	ld	a,#0x02
	ld	(#_tripal + 3),a
;demo.c:1114: tripal[4] = 3;
	ld	a,#0x03
	ld	(#_tripal + 4),a
;demo.c:1115: tripal[5] = 4;
	ld	a,#0x04
	ld	(#_tripal + 5),a
;demo.c:1117: tripal[6] = 1;
	ld	a,#0x01
	ld	(#_tripal + 6),a
;demo.c:1118: tripal[7] = 3;
	ld	a,#0x03
	ld	(#_tripal + 7),a
;demo.c:1119: tripal[8] = 1;
	ld	a,#0x01
	ld	(#_tripal + 8),a
00105$:
;demo.c:1122: msx2_palette(15,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x0F
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1123: triframes = 1350;
	ld	hl,#_triframes + 0
	ld	(hl), #0x46
	ld	hl,#_triframes + 1
	ld	(hl), #0x05
00107$:
;demo.c:1127: if (tri_inited == 1) triframes++;
	ld	a,(#_tri_inited+0)
	sub	a,#0x01
	jr	NZ,00110$
	ld	iy,#_triframes
	inc	0 (iy)
	jr	NZ,00225$
	ld	iy,#_triframes
	inc	1 (iy)
00225$:
00110$:
;demo.c:1129: if (triframes == 150) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0x96
	jr	NZ,00226$
	ld	a,(#_triframes+1)
	or	a,a
	jr	Z,00227$
00226$:
	jr	00112$
00227$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00112$:
;demo.c:1130: if (triframes >= 150 && triframes < 300) {
	ld	a,(#_triframes+0)
	sub	a,#0x96
	ld	a,(#_triframes+1)
	sbc	a,#0x00
	jp	M,00114$
	ld	a,(#_triframes+0)
	sub	a,#0x2C
	ld	a,(#_triframes+1)
	sbc	a,#0x01
	jp	P,00114$
;demo.c:1131: drawtilescreen(tri_up);
	ld	hl,#_tri_up
	push	hl
	call	_drawtilescreen
	pop	af
00114$:
;demo.c:1134: if (triframes == 300) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0x2C
	jr	NZ,00228$
	ld	a,(#_triframes+1)
	sub	a,#0x01
	jr	Z,00229$
00228$:
	jr	00117$
00229$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00117$:
;demo.c:1135: if (triframes >= 300 && triframes < 450) {
	ld	a,(#_triframes+0)
	sub	a,#0x2C
	ld	a,(#_triframes+1)
	sbc	a,#0x01
	jp	M,00119$
	ld	a,(#_triframes+0)
	sub	a,#0xC2
	ld	a,(#_triframes+1)
	sbc	a,#0x01
	jp	P,00119$
;demo.c:1136: drawtilescreen(tri_dia);
	ld	hl,#_tri_dia
	push	hl
	call	_drawtilescreen
	pop	af
00119$:
;demo.c:1139: if (triframes == 450) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0xC2
	jr	NZ,00230$
	ld	a,(#_triframes+1)
	sub	a,#0x01
	jr	Z,00231$
00230$:
	jr	00122$
00231$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00122$:
;demo.c:1140: if (triframes >= 450 && triframes < 600) {
	ld	a,(#_triframes+0)
	sub	a,#0xC2
	ld	a,(#_triframes+1)
	sbc	a,#0x01
	jp	M,00124$
	ld	a,(#_triframes+0)
	sub	a,#0x58
	ld	a,(#_triframes+1)
	sbc	a,#0x02
	jp	P,00124$
;demo.c:1141: drawtilescreen(tri_side1);
	ld	hl,#_tri_side1
	push	hl
	call	_drawtilescreen
	pop	af
00124$:
;demo.c:1144: if (triframes == 600) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0x58
	jr	NZ,00232$
	ld	a,(#_triframes+1)
	sub	a,#0x02
	jr	Z,00233$
00232$:
	jr	00127$
00233$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00127$:
;demo.c:1145: if (triframes >= 600 && triframes < 750) {
	ld	a,(#_triframes+0)
	sub	a,#0x58
	ld	a,(#_triframes+1)
	sbc	a,#0x02
	jp	M,00129$
	ld	a,(#_triframes+0)
	sub	a,#0xEE
	ld	a,(#_triframes+1)
	sbc	a,#0x02
	jp	P,00129$
;demo.c:1146: drawtilescreen(tri_side2);
	ld	hl,#_tri_side2
	push	hl
	call	_drawtilescreen
	pop	af
00129$:
;demo.c:1149: if (triframes == 750) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0xEE
	jr	NZ,00234$
	ld	a,(#_triframes+1)
	sub	a,#0x02
	jr	Z,00235$
00234$:
	jr	00132$
00235$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00132$:
;demo.c:1150: if (triframes >= 750 && triframes < 900) {
	ld	a,(#_triframes+0)
	sub	a,#0xEE
	ld	a,(#_triframes+1)
	sbc	a,#0x02
	jp	M,00134$
	ld	a,(#_triframes+0)
	sub	a,#0x84
	ld	a,(#_triframes+1)
	sbc	a,#0x03
	jp	P,00134$
;demo.c:1151: drawtilescreen(tri_inva1);
	ld	hl,#_tri_inva1
	push	hl
	call	_drawtilescreen
	pop	af
00134$:
;demo.c:1154: if (triframes == 900) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0x84
	jr	NZ,00236$
	ld	a,(#_triframes+1)
	sub	a,#0x03
	jr	Z,00237$
00236$:
	jr	00137$
00237$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00137$:
;demo.c:1155: if (triframes >= 900 && triframes < 1050) {
	ld	a,(#_triframes+0)
	sub	a,#0x84
	ld	a,(#_triframes+1)
	sbc	a,#0x03
	jp	M,00139$
	ld	a,(#_triframes+0)
	sub	a,#0x1A
	ld	a,(#_triframes+1)
	sbc	a,#0x04
	jp	P,00139$
;demo.c:1156: drawtilescreen(tri_inva2);
	ld	hl,#_tri_inva2
	push	hl
	call	_drawtilescreen
	pop	af
00139$:
;demo.c:1159: if (triframes == 1050) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0x1A
	jr	NZ,00238$
	ld	a,(#_triframes+1)
	sub	a,#0x04
	jr	Z,00239$
00238$:
	jr	00142$
00239$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00142$:
;demo.c:1160: if (triframes >= 1050 && triframes < 1200) {
	ld	a,(#_triframes+0)
	sub	a,#0x1A
	ld	a,(#_triframes+1)
	sbc	a,#0x04
	jp	M,00144$
	ld	a,(#_triframes+0)
	sub	a,#0xB0
	ld	a,(#_triframes+1)
	sbc	a,#0x04
	jp	P,00144$
;demo.c:1161: drawtilescreen(tri_inva3);
	ld	hl,#_tri_inva3
	push	hl
	call	_drawtilescreen
	pop	af
00144$:
;demo.c:1164: if (triframes == 1200) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0xB0
	jr	NZ,00240$
	ld	a,(#_triframes+1)
	sub	a,#0x04
	jr	Z,00241$
00240$:
	jr	00147$
00241$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00147$:
;demo.c:1165: if (triframes >= 1200 && triframes < 1350) {
	ld	a,(#_triframes+0)
	sub	a,#0xB0
	ld	a,(#_triframes+1)
	sbc	a,#0x04
	jp	M,00149$
	ld	a,(#_triframes+0)
	sub	a,#0x46
	ld	a,(#_triframes+1)
	sbc	a,#0x05
	jp	P,00149$
;demo.c:1166: drawtilescreen(tri_inva4);
	ld	hl,#_tri_inva4
	push	hl
	call	_drawtilescreen
	pop	af
00149$:
;demo.c:1169: if (triframes == 1350) { tilei = 0; tilex = 0; tiley = 0; }
	ld	a,(#_triframes+0)
	sub	a,#0x46
	jr	NZ,00242$
	ld	a,(#_triframes+1)
	sub	a,#0x05
	jr	Z,00243$
00242$:
	jr	00152$
00243$:
	ld	hl,#_tilei + 0
	ld	(hl), #0x00
	ld	hl,#_tilei + 1
	ld	(hl), #0x00
	ld	hl,#_tilex + 0
	ld	(hl), #0x00
	ld	hl,#_tilex + 1
	ld	(hl), #0x00
	ld	hl,#_tiley + 0
	ld	(hl), #0x00
	ld	hl,#_tiley + 1
	ld	(hl), #0x00
00152$:
;demo.c:1170: if (triframes >= 1350 && triframes < 1500) {
	ld	a,(#_triframes+0)
	sub	a,#0x46
	ld	a,(#_triframes+1)
	sbc	a,#0x05
	jp	M,00154$
	ld	a,(#_triframes+0)
	sub	a,#0xDC
	ld	a,(#_triframes+1)
	sbc	a,#0x05
	jp	P,00154$
;demo.c:1171: drawtilescreen(tri_center);
	ld	hl,#_tri_center
	push	hl
	call	_drawtilescreen
	pop	af
00154$:
;demo.c:1174: if (triframes > 1500) triframes = 149;
	ld	a,#0xDC
	ld	iy,#_triframes
	sub	a,0 (iy)
	ld	a,#0x05
	ld	iy,#_triframes
	sbc	a,1 (iy)
	jp	P,00157$
	ld	hl,#_triframes + 0
	ld	(hl), #0x95
	ld	hl,#_triframes + 1
	ld	(hl), #0x00
00157$:
;demo.c:1177: msx2_palette(2,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x02
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1178: msx2_palette(11,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x0B
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1180: if (PLY_PSGReg10 > 4) {
	ld	a,#0x04
	ld	iy,#_PLY_PSGReg10
	sub	a,0 (iy)
	jp	NC,00159$
;demo.c:1181: vdp_register(VDP_VOFFSET,192-sintabx[(PLY_PSGReg10 + tripaltick) & 255]>>3);
	ld	hl,#_PLY_PSGReg10 + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#_tripaltick + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	a,c
	add	a,e
	ld	c,a
	ld	a,b
	adc	a,d
	ld	b,#0x00
	ld	hl,#_sintabx
	add	hl,bc
	ld	a,(hl)
	ld	c,a
	ld	b,#0x00
	ld	a,#0xC0
	sub	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	b,c
	ld	c,#0x17
	push	bc
	call	_vdp_register
	pop	af
;demo.c:1183: msx2_palette(3,tripal[0]+PLY_PSGReg10,tripal[1],tripal[2]);
	ld	hl,#_tripal + 2
	ld	c,(hl)
	ld	de,#_tripal + 1
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal
	ld	e,(hl)
	ld	hl,#_PLY_PSGReg10 + 0
	ld	d,(hl)
	ld	a,e
	add	a,d
	ld	e,a
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x03
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1184: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
	ld	hl,#_tripal + 5
	ld	c,(hl)
	ld	de,#_tripal + 4
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 3
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x0E
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1185: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
	ld	hl,#_tripal + 8
	ld	c,(hl)
	ld	de,#_tripal + 7
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 6
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x06
	push	de
	call	_msx2_palette
	pop	af
	pop	af
	jp	00160$
00159$:
;demo.c:1188: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1190: msx2_palette(3,tripal[0],tripal[1],tripal[2]);
	ld	hl,#_tripal + 2
	ld	c,(hl)
	ld	de,#_tripal + 1
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x03
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1191: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
	ld	hl,#_tripal + 5
	ld	c,(hl)
	ld	de,#_tripal + 4
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 3
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x0E
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1192: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
	ld	hl,#_tripal + 8
	ld	c,(hl)
	ld	de,#_tripal + 7
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 6
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x06
	push	de
	call	_msx2_palette
	pop	af
	pop	af
00160$:
;demo.c:1196: if (tick > 28) tick = 0;
	ld	a,#0x1C
	ld	iy,#_tick
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_tick
	sbc	a,1 (iy)
	jp	P,00162$
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
00162$:
;demo.c:1198: tripaltick++;
	ld	iy,#_tripaltick
	inc	0 (iy)
;demo.c:1199: if (tripaltick > 6) {
	ld	a,#0x06
	ld	iy,#_tripaltick
	sub	a,0 (iy)
	jp	NC,00175$
;demo.c:1200: tripaltick2++;
	ld	iy,#_tripaltick2
	inc	0 (iy)
;demo.c:1201: if (tripaltick2 > 6) tripaltick2 = 0;
	ld	a,#0x06
	ld	iy,#_tripaltick2
	sub	a,0 (iy)
	jr	NC,00164$
	ld	hl,#_tripaltick2 + 0
	ld	(hl), #0x00
00164$:
;demo.c:1203: r = tripal[0];
	ld	hl,#_tripal
	ld	c,(hl)
	ld	-3 (ix),c
;demo.c:1204: g = tripal[1];
	ld	de,#_tripal + 1
	ld	a,(de)
	ld	-4 (ix),a
;demo.c:1205: b = tripal[2];
	ld	hl,#_tripal + 2
	ld	e,(hl)
	ld	-5 (ix),e
;demo.c:1207: for (x = 0; x < 6; x++) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00171$:
	ld	a,-2 (ix)
	sub	a,#0x06
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00174$
;demo.c:1208: tripal[x] = tripal[x+3];
	ld	a,#<_tripal
	add	a,-2 (ix)
	ld	c,a
	ld	a,#>_tripal
	adc	a,-1 (ix)
	ld	b,a
	ld	e,-2 (ix)
	inc	e
	inc	e
	inc	e
	ld	a,#<_tripal
	add	a,e
	ld	e,a
	ld	a,#>_tripal
	adc	a,#0x00
	ld	d,a
	ld	a,(de)
	ld	(bc),a
;demo.c:1207: for (x = 0; x < 6; x++) {
	inc	-2 (ix)
	jr	NZ,00245$
	inc	-1 (ix)
00245$:
	jr	00171$
00174$:
;demo.c:1211: tripal[6] = r;
	ld	bc,#_tripal + 6
	ld	a,-3 (ix)
	ld	(bc),a
;demo.c:1212: tripal[7] = g;
	ld	bc,#_tripal + 7
	ld	a,-4 (ix)
	ld	(bc),a
;demo.c:1213: tripal[8] = b;
	ld	bc,#_tripal + 8
	ld	a,-5 (ix)
	ld	(bc),a
;demo.c:1214: tripaltick = 0;
	ld	hl,#_tripaltick + 0
	ld	(hl), #0x00
00175$:
	ld	sp,ix
	pop	ix
	ret
_tritiles_end::
;demo.c:1219: int abs (int n) {
;	---------------------------------
; Function abs
; ---------------------------------
_abs_start::
_abs:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;demo.c:1220: const int ret[2] = { n, -n };
	ld	hl,#0x0002
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	a,4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,5 (ix)
	ld	(hl),a
	ld	hl,#0x0002
	add	hl,bc
	ld	-6 (ix),l
	ld	-5 (ix),h
	xor	a,a
	sbc	a,4 (ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,5 (ix)
	ld	d,a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1221: return ret [n<0];
	ld	a,5 (ix)
	rlca
	and	a,#0x01
	ld	e,a
	sla	e
	ld	a,c
	add	a,e
	ld	l,a
	ld	a,b
	adc	a,#0x00
	ld	h,a
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	ld	l,e
	ld	h,c
	ld	sp,ix
	pop	ix
	ret
_abs_end::
;demo.c:1227: void logoeffu() {
;	---------------------------------
; Function logoeffu
; ---------------------------------
_logoeffu_start::
_logoeffu:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;demo.c:1231: fadein();
	call	_fadein
;demo.c:1233: v = abs(sintabx[(vbicount) & 255]>>4);
	ld	hl,#_vbicount + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#_sintabx
	add	hl,bc
	ld	a,(hl)
	ld	c,a
	srl	c
	srl	c
	srl	c
	srl	c
	ld	b,#0x00
	push	bc
	call	_abs
	pop	af
	ld	b,h
	ld	-4 (ix),l
	ld	-3 (ix),b
;demo.c:1235: for (y = 0; y < 116; y+=2) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00108$:
	ld	a,-2 (ix)
	sub	a,#0x74
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00111$
;demo.c:1236: cmd.size_x = 108;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x6C
	inc	hl
	ld	(hl),#0x00
;demo.c:1237: cmd.size_y = 2;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:1238: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:1239: cmd.argument = 0x00;
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:1240: cmd.command = 0xd0; 
	ld	de,#_cmd + 14
	ld	a,#0xD0
	ld	(de),a
;demo.c:1241: cmd.source_x = 74;
	ld	hl,#_cmd
	ld	(hl),#0x4A
	inc	hl
	ld	(hl),#0x00
;demo.c:1242: cmd.source_y = 256+y;
	ld	de,#_cmd + 2
	ld	a,-2 (ix)
	add	a,#0x00
	ld	c,a
	ld	a,-1 (ix)
	adc	a,#0x01
	ld	b,a
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1243: v+=y;
	ld	a,-4 (ix)
	add	a,-2 (ix)
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a,-1 (ix)
	ld	-3 (ix),a
;demo.c:1244: v -= powa;
	ld	hl,#_powa
	ld	a,-4 (ix)
	sub	a,(hl)
	ld	-4 (ix),a
	ld	a,-3 (ix)
	inc	hl
	sbc	a,(hl)
;demo.c:1245: if (v<0) v = 0;
	ld	-3 (ix),a
	bit	7,a
	jr	Z,00102$
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
00102$:
;demo.c:1246: if (v>150) v = 150;
	ld	a,#0x96
	sub	a,-4 (ix)
	ld	a,#0x00
	sbc	a,-3 (ix)
	jp	P,00104$
	ld	-4 (ix),#0x96
	ld	-3 (ix),#0x00
00104$:
;demo.c:1247: cmd.dest_x = 74+v;
	ld	bc,#_cmd + 4
	ld	a,-4 (ix)
	add	a,#0x4A
	ld	e,a
	ld	a,-3 (ix)
	adc	a,#0x00
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1248: cmd.dest_y = 50+y+1;
	ld	bc,#_cmd + 6
	ld	a,-2 (ix)
	add	a,#0x33
	ld	e,a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1249: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1235: for (y = 0; y < 116; y+=2) {
	ld	a,-2 (ix)
	add	a,#0x02
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
	jp	00108$
00111$:
;demo.c:1252: if (vbicount > scenetimings[2]+84 && onceclear > 182) {
	ld	hl, #_scenetimings + 4
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#0x0054
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,c
	ld	iy,#_vbicount
	sub	a,0 (iy)
	ld	a,b
	ld	iy,#_vbicount
	sbc	a,1 (iy)
	jp	P,00106$
	ld	a,#0xB6
	ld	iy,#_onceclear
	sub	a,0 (iy)
	jp	NC,00106$
;demo.c:1253: cmd.size_x = 4;
	ld	hl, #_cmd + 8
	ld	(hl),#0x04
	inc	hl
	ld	(hl),#0x00
;demo.c:1254: cmd.size_y = 116;
	ld	hl, #_cmd + 10
	ld	(hl),#0x74
	inc	hl
	ld	(hl),#0x00
;demo.c:1255: cmd.data = 0;
;demo.c:1256: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1257: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1258: cmd.source_x = 20;
	ld	hl,#_cmd
	ld	(hl),#0x14
	inc	hl
	ld	(hl),#0x00
;demo.c:1259: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1260: cmd.dest_x = onceclear;
	ld	bc,#_cmd + 4
	ld	hl,#_onceclear + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1261: cmd.dest_y = 68;
	ld	hl, #_cmd + 6
	ld	(hl),#0x44
	inc	hl
	ld	(hl),#0x00
;demo.c:1262: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1263: onceclear-=4;
	ld	hl,#_onceclear
	ld	a,(hl)
	add	a,#0xFC
	ld	(hl),a
00106$:
;demo.c:1267: powa+=2;
	ld	hl,#_powa
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
;demo.c:1268: powatick = 0;
	ld	hl,#_powatick + 0
	ld	(hl), #0x00
	ld	hl,#_powatick + 1
	ld	(hl), #0x00
	ld	sp,ix
	pop	ix
	ret
_logoeffu_end::
;demo.c:1277: void points() {
;	---------------------------------
; Function points
; ---------------------------------
_points_start::
_points:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;demo.c:1281: if (initpoints == 0) {
	xor	a,a
	ld	hl,#_initpoints + 0
	or	a,(hl)
	jp	NZ,00105$
;demo.c:1282: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1283: cmd.size_y = 4;
	ld	hl, #_cmd + 10
	ld	(hl),#0x04
	inc	hl
	ld	(hl),#0x00
;demo.c:1284: cmd.data = 0;
;demo.c:1285: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1286: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1287: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1288: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1290: for (y = 0; y < 212; y+=4) {
	ld	-1 (ix),#0x00
00116$:
	ld	a,-1 (ix)
	sub	a,#0xD4
	jp	NC,00119$
;demo.c:1291: if (PLY_PSGReg10 > 4) {
	ld	a,#0x04
	ld	iy,#_PLY_PSGReg10
	sub	a,0 (iy)
	jp	NC,00102$
;demo.c:1292: vdp_register(VDP_VOFFSET,192-sintabx[(PLY_PSGReg10 + tripaltick) & 255]>>3);
	ld	hl,#_PLY_PSGReg10 + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	hl,#_tripaltick + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,e
	add	a,c
	ld	c,a
	ld	a,d
	adc	a,b
	ld	b,#0x00
	ld	hl,#_sintabx
	add	hl,bc
	ld	a,(hl)
	ld	c,a
	ld	b,#0x00
	ld	a,#0xC0
	sub	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	b,c
	ld	c,#0x17
	push	bc
	call	_vdp_register
	pop	af
;demo.c:1294: msx2_palette(3,tripal[0]+PLY_PSGReg10,tripal[1],tripal[2]);
	ld	hl,#_tripal + 2
	ld	c,(hl)
	ld	de,#_tripal + 1
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal
	ld	e,(hl)
	ld	hl,#_PLY_PSGReg10 + 0
	ld	d,(hl)
	ld	a,e
	add	a,d
	ld	e,a
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x03
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1295: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
	ld	hl,#_tripal + 5
	ld	c,(hl)
	ld	de,#_tripal + 4
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 3
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x0E
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1296: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
	ld	hl,#_tripal + 8
	ld	c,(hl)
	ld	de,#_tripal + 7
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 6
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x06
	push	de
	call	_msx2_palette
	pop	af
	pop	af
	jp	00103$
00102$:
;demo.c:1299: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1301: msx2_palette(3,tripal[0],tripal[1],tripal[2]);
	ld	hl,#_tripal + 2
	ld	c,(hl)
	ld	de,#_tripal + 1
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x03
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1302: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
	ld	hl,#_tripal + 5
	ld	c,(hl)
	ld	de,#_tripal + 4
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 3
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x0E
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1303: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
	ld	hl,#_tripal + 8
	ld	c,(hl)
	ld	de,#_tripal + 7
	ld	a,(de)
	ld	b,a
	ld	hl,#_tripal + 6
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x06
	push	de
	call	_msx2_palette
	pop	af
	pop	af
00103$:
;demo.c:1306: waitVB();
		halt 
;demo.c:1307: cmd.source_y = 193;
	ld	hl, #_cmd + 2
	ld	(hl),#0xC1
	inc	hl
	ld	(hl),#0x00
;demo.c:1308: cmd.dest_y = y;
	ld	bc,#_cmd + 6
	ld	e,-1 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1309: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1290: for (y = 0; y < 212; y+=4) {
	inc	-1 (ix)
	inc	-1 (ix)
	inc	-1 (ix)
	inc	-1 (ix)
	jp	00116$
00119$:
;demo.c:1313: vdp_load_palette(bulbs_palette);
	ld	hl,#_bulbs_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1315: for (x = 0; x < 256; x+=1) {
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
00120$:
	ld	a,-3 (ix)
	sub	a,#0x00
	ld	a,-2 (ix)
	sbc	a,#0x01
	jp	P,00123$
;demo.c:1317: cmd.data = 1+((pointframe>>2) & 0xe);
	ld	de,#_cmd + 12
	ld	hl,#_pointframe + 0
	ld	c,(hl)
	ld	hl,#_pointframe + 1
	ld	b,(hl)
	sra	b
	rr	c
	sra	b
	rr	c
	ld	a,c
	and	a,#0x0E
	inc	a
	ld	(de),a
;demo.c:1318: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-3 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-2 (ix)
	ld	(hl),a
;demo.c:1319: cmd.dest_y = y;
	ld	hl, #_cmd + 6
	ld	(hl),#0x1D
	inc	hl
	ld	(hl),#0x00
;demo.c:1320: cmd.command = 0x50;
	ld	a,#0x50
	ld	(#_cmd + 14),a
;demo.c:1321: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1324: cmd.data = 1+((pointframe>>2) & 0xe);
	ld	bc,#_cmd + 12
	ld	hl,#_pointframe + 0
	ld	e,(hl)
	ld	hl,#_pointframe + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a,e
	and	a,#0x0E
	inc	a
	ld	(bc),a
;demo.c:1325: cmd.dest_y = y;
	ld	hl, #_cmd + 6
	ld	(hl),#0xA2
	inc	hl
	ld	(hl),#0x00
;demo.c:1326: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1328: pointframe+=1;
	ld	iy,#_pointframe
	inc	0 (iy)
	jr	NZ,00149$
	ld	iy,#_pointframe
	inc	1 (iy)
00149$:
;demo.c:1315: for (x = 0; x < 256; x+=1) {
	inc	-3 (ix)
	jr	NZ,00150$
	inc	-2 (ix)
00150$:
	jp	00120$
00123$:
;demo.c:1331: initpoints = 1;
	ld	hl,#_initpoints + 0
	ld	(hl), #0x01
;demo.c:1332: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00105$:
;demo.c:1335: cmd.argument = 0x0;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:1337: cmd.data = 1+((pointframe>>2) & 0xe);
	ld	bc,#_cmd + 12
	ld	hl,#_pointframe + 0
	ld	e,(hl)
	ld	hl,#_pointframe + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a,e
	and	a,#0x0E
	inc	a
	ld	(bc),a
;demo.c:1339: for (x = 30; x < 162; x+=1) {
	ld	-3 (ix),#0x1E
	ld	-2 (ix),#0x00
00124$:
	ld	a,-3 (ix)
	sub	a,#0xA2
	ld	a,-2 (ix)
	sbc	a,#0x00
	jp	P,00127$
;demo.c:1340: y = 64+(sintabx[(x+pointframe) & 255]>>1);
	ld	hl,#_pointframe
	ld	a,-3 (ix)
	add	a,(hl)
	ld	e,a
	ld	a,-2 (ix)
	inc	hl
	adc	a,(hl)
	ld	d,#0x00
	ld	hl,#_sintabx
	add	hl,de
	ld	a,(hl)
	srl	a
	add	a,#0x40
	ld	c,a
;demo.c:1341: cmd.dest_x = y;
	ld	de,#_cmd + 4
	ld	b,#0x00
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1342: cmd.dest_y = x;
	ld	hl, #_cmd + 6
	ld	a,-3 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-2 (ix)
	ld	(hl),a
;demo.c:1343: cmd.command = 0x53;
	ld	a,#0x53
	ld	(#_cmd + 14),a
;demo.c:1344: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1339: for (x = 30; x < 162; x+=1) {
	inc	-3 (ix)
	jr	NZ,00152$
	inc	-2 (ix)
00152$:
	jr	00124$
00127$:
;demo.c:1346: pointframe+=2;
	ld	hl,#_pointframe
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
;demo.c:1348: if (greetindex == 0) {
	ld	a,(#_greetindex+0)
	ld	hl,#_greetindex + 1
	or	a,(hl)
	jr	NZ,00107$
;demo.c:1349: slowend = 27;
	ld	hl,#_slowend + 0
	ld	(hl), #0x1B
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1350: drawstrslow("GREETINGS TO VARIOUS GROUPS",10,20);
	ld	hl,#0x140A
	push	hl
	ld	hl,#__str_9
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00107$:
;demo.c:1352: if (greetindex == 1) {
	ld	a,(#_greetindex+0)
	sub	a,#0x01
	jr	NZ,00153$
	ld	a,(#_greetindex+1)
	or	a,a
	jr	Z,00154$
00153$:
	jr	00109$
00154$:
;demo.c:1353: slowend = 33;
	ld	hl,#_slowend + 0
	ld	(hl), #0x21
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1354: drawstrslow("Trilobit  Prismbeings  Ivory Labs",10,164);
	ld	hl,#0xA40A
	push	hl
	ld	hl,#__str_10
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00109$:
;demo.c:1356: if (greetindex == 2) {
	ld	a,(#_greetindex+0)
	sub	a,#0x02
	jr	NZ,00155$
	ld	a,(#_greetindex+1)
	or	a,a
	jr	Z,00156$
00155$:
	jr	00111$
00156$:
;demo.c:1357: slowend = 29;
	ld	hl,#_slowend + 0
	ld	(hl), #0x1D
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1358: drawstrslow("PWP  Dekadence  Paraguay  ISO",18,174);
	ld	hl,#0xAE12
	push	hl
	ld	hl,#__str_11
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00111$:
;demo.c:1360: if (greetindex == 3) {
	ld	a,(#_greetindex+0)
	sub	a,#0x03
	jr	NZ,00157$
	ld	a,(#_greetindex+1)
	or	a,a
	jr	Z,00158$
00157$:
	jr	00113$
00158$:
;demo.c:1361: slowend = 17;
	ld	hl,#_slowend + 0
	ld	(hl), #0x11
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1362: drawstrslow("Furry Trash Group",26,184);
	ld	hl,#0xB81A
	push	hl
	ld	hl,#__str_12
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00113$:
;demo.c:1364: if (ltrpointer >= slowend) { greetindex++; ltrpointer = 0; }
	ld	hl,#_slowend
	ld	a,(#_ltrpointer+0)
	sub	a,(hl)
	ld	a,(#_ltrpointer+1)
	inc	hl
	sbc	a,(hl)
	jp	M,00115$
	ld	iy,#_greetindex
	inc	0 (iy)
	jr	NZ,00159$
	ld	iy,#_greetindex
	inc	1 (iy)
00159$:
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00115$:
;demo.c:1366: msx2_palette(4,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x04
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
	ld	sp,ix
	pop	ix
	ret
_points_end::
__str_9:
	.ascii "GREETINGS TO VARIOUS GROUPS"
	.db 0x00
__str_10:
	.ascii "Trilobit  Prismbeings  Ivory Labs"
	.db 0x00
__str_11:
	.ascii "PWP  Dekadence  Paraguay  ISO"
	.db 0x00
__str_12:
	.ascii "Furry Trash Group"
	.db 0x00
;demo.c:1371: void bigtext() {
;	---------------------------------
; Function bigtext
; ---------------------------------
_bigtext_start::
_bigtext:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:1373: if (bigtextp == 0) {
	ld	a,(#_bigtextp+0)
	ld	iy,#_bigtextp
	or	a,1 (iy)
	jp	NZ,00102$
;demo.c:1374: cmd.size_x = 2;
	ld	hl, #_cmd + 8
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:1375: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1376: cmd.data = 0;
;demo.c:1377: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1378: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1379: cmd.source_x = 255;
	ld	hl,#_cmd
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;demo.c:1380: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1382: for (x = 0; x < 256; x+=4) {
	ld	bc,#0x0000
00128$:
	ld	a,c
	sub	a,#0x00
	ld	a,b
	sbc	a,#0x01
	jp	P,00131$
;demo.c:1383: waitVB();
		halt 
;demo.c:1384: cmd.dest_y = 256;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1385: cmd.dest_x = x;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1386: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1387: cmd.dest_y = 0;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1388: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1382: for (x = 0; x < 256; x+=4) {
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	jr	00128$
00131$:
;demo.c:1391: for (x = 254; x > 0; x-=4) {
	ld	bc,#0x00FE
00132$:
	ld	a,#0x00
	sub	a,c
	ld	a,#0x00
	sbc	a,b
	jp	P,00135$
;demo.c:1392: waitVB();
		halt 
;demo.c:1393: cmd.dest_y = 256;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1394: cmd.dest_x = x;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1395: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1396: cmd.dest_y = 0;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1397: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1391: for (x = 254; x > 0; x-=4) {
	ld	a,c
	add	a,#0xFC
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	jr	00132$
00135$:
;demo.c:1400: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1401: drawstr2x("DIGITAL",26,44);
	ld	hl,#0x2C1A
	push	hl
	ld	hl,#__str_13
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1402: drawstr2x("SOUNDS",27,84);
	ld	hl,#0x541B
	push	hl
	ld	hl,#__str_14
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1403: drawstr2x("SYSTEM",25,124);
	ld	hl,#0x7C19
	push	hl
	ld	hl,#__str_15
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1404: bigtextp++;
	ld	iy,#_bigtextp
	inc	0 (iy)
	jr	NZ,00188$
	ld	iy,#_bigtextp
	inc	1 (iy)
00188$:
;demo.c:1405: tri_inited = 2;
	ld	hl,#_tri_inited + 0
	ld	(hl), #0x02
;demo.c:1406: ff = 0;
	ld	hl,#_ff + 0
	ld	(hl), #0x00
	ld	hl,#_ff + 1
	ld	(hl), #0x00
;demo.c:1407: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00102$:
;demo.c:1410: msx2_palette(4,ff>>2,ff>>3,ff>>2);
	ld	hl,#_ff + 0
	ld	c,(hl)
	ld	hl,#_ff + 1
	ld	b,(hl)
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl,#_ff + 0
	ld	e,(hl)
	ld	hl,#_ff + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	b,e
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	b,c
	ld	c,#0x04
	push	bc
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1411: ff+=2;
	ld	hl,#_ff
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
;demo.c:1413: if (ff == 600) {
	ld	a,(#_ff+0)
	sub	a,#0x58
	jr	NZ,00191$
	ld	a,(#_ff+1)
	sub	a,#0x02
	jr	Z,00192$
00191$:
	jp	00104$
00192$:
;demo.c:1414: cmd.size_x = 2;
	ld	hl, #_cmd + 8
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:1415: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1416: cmd.data = 0;
;demo.c:1417: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1418: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1419: cmd.source_x = 255;
	ld	hl,#_cmd
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;demo.c:1420: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1422: for (x = 254; x > 0; x-=4) {
	ld	-2 (ix),#0xFE
	ld	-1 (ix),#0x00
00136$:
	ld	a,#0x00
	sub	a,-2 (ix)
	ld	a,#0x00
	sbc	a,-1 (ix)
	jp	P,00139$
;demo.c:1423: msx2_palette(4,ff>>2,ff>>3,ff>>2);
	ld	hl,#_ff + 0
	ld	e,(hl)
	ld	hl,#_ff + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	hl,#_ff + 0
	ld	d,(hl)
	ld	hl,#_ff + 1
	ld	c,(hl)
	sra	c
	rr	d
	sra	c
	rr	d
	sra	c
	rr	d
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d,e
	ld	e,#0x04
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1424: ff+=2;
	ld	hl,#_ff
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
;demo.c:1425: waitVB();
		halt 
;demo.c:1426: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1427: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:1428: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1429: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1430: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1422: for (x = 254; x > 0; x-=4) {
	ld	a,-2 (ix)
	add	a,#0xFC
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	jp	00136$
00139$:
;demo.c:1434: for (x = 0; x < 256; x+=4) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00140$:
	ld	a,-2 (ix)
	sub	a,#0x00
	ld	a,-1 (ix)
	sbc	a,#0x01
	jp	P,00143$
;demo.c:1435: msx2_palette(4,ff>>2,ff>>3,ff>>2);
	ld	hl,#_ff + 0
	ld	e,(hl)
	ld	hl,#_ff + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	hl,#_ff + 0
	ld	d,(hl)
	ld	hl,#_ff + 1
	ld	c,(hl)
	sra	c
	rr	d
	sra	c
	rr	d
	sra	c
	rr	d
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d,e
	ld	e,#0x04
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1436: ff+=2;
	ld	hl,#_ff
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
;demo.c:1437: waitVB();
		halt 
;demo.c:1438: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1439: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:1440: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1441: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1442: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1434: for (x = 0; x < 256; x+=4) {
	ld	a,-2 (ix)
	add	a,#0x04
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
	jp	00140$
00143$:
;demo.c:1445: drawstr2x("COMMAND",4,44);
	ld	hl,#0x2C04
	push	hl
	ld	hl,#__str_16
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1446: drawstr2x("   THE  ",32,84);
	ld	hl,#0x5420
	push	hl
	ld	hl,#__str_17
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1447: drawstr2x("  BASS ",35,124);
	ld	hl,#0x7C23
	push	hl
	ld	hl,#__str_18
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
00104$:
;demo.c:1450: if (ff == 1200) {
	ld	a,(#_ff+0)
	sub	a,#0xB0
	jr	NZ,00197$
	ld	a,(#_ff+1)
	sub	a,#0x04
	jr	Z,00198$
00197$:
	jp	00106$
00198$:
;demo.c:1451: cmd.size_x = 3;
	ld	hl, #_cmd + 8
	ld	(hl),#0x03
	inc	hl
	ld	(hl),#0x00
;demo.c:1452: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1453: cmd.data = 0;
;demo.c:1454: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1455: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1456: cmd.source_x = 255;
	ld	hl,#_cmd
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;demo.c:1457: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1459: for (x = 254; x > 0; x-=4) {
	ld	-2 (ix),#0xFE
	ld	-1 (ix),#0x00
00144$:
	ld	a,#0x00
	sub	a,-2 (ix)
	ld	a,#0x00
	sbc	a,-1 (ix)
	jp	P,00147$
;demo.c:1460: msx2_palette(4,ff>>2,ff>>3,ff>>2);
	ld	hl,#_ff + 0
	ld	e,(hl)
	ld	hl,#_ff + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	hl,#_ff + 0
	ld	d,(hl)
	ld	hl,#_ff + 1
	ld	c,(hl)
	sra	c
	rr	d
	sra	c
	rr	d
	sra	c
	rr	d
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d,e
	ld	e,#0x04
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1461: ff+=2;
	ld	hl,#_ff
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
;demo.c:1462: waitVB();
		halt 
;demo.c:1463: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1464: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:1465: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1466: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1467: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1459: for (x = 254; x > 0; x-=4) {
	ld	a,-2 (ix)
	add	a,#0xFC
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	jp	00144$
00147$:
;demo.c:1471: for (x = 0; x < 256; x+=4) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00148$:
	ld	a,-2 (ix)
	sub	a,#0x00
	ld	a,-1 (ix)
	sbc	a,#0x01
	jp	P,00151$
;demo.c:1472: msx2_palette(4,ff>>2,ff>>3,ff>>2);
	ld	hl,#_ff + 0
	ld	e,(hl)
	ld	hl,#_ff + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	hl,#_ff + 0
	ld	d,(hl)
	ld	hl,#_ff + 1
	ld	c,(hl)
	sra	c
	rr	d
	sra	c
	rr	d
	sra	c
	rr	d
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d,e
	ld	e,#0x04
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1473: ff+=2;
	ld	hl,#_ff
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
;demo.c:1474: waitVB();
		halt 
;demo.c:1475: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1476: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:1477: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1478: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1479: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1471: for (x = 0; x < 256; x+=4) {
	ld	a,-2 (ix)
	add	a,#0x04
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
	jp	00148$
00151$:
;demo.c:1482: drawstr2x("REVISION",10,44);
	ld	hl,#0x2C0A
	push	hl
	ld	hl,#__str_19
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1483: drawstr2x("   IS OUR",0,84);
	ld	hl,#0x5400
	push	hl
	ld	hl,#__str_20
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1484: drawstr2x("  PARTY",12,124);
	ld	hl,#0x7C0C
	push	hl
	ld	hl,#__str_21
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
00106$:
;demo.c:1487: if (ff >= 1600 && ff < 1700) {
	ld	a,(#_ff+0)
	sub	a,#0x40
	ld	a,(#_ff+1)
	sbc	a,#0x06
	jp	M,00108$
	ld	a,(#_ff+0)
	sub	a,#0xA4
	ld	a,(#_ff+1)
	sbc	a,#0x06
	jp	P,00108$
;demo.c:1488: slowend = 37;
	ld	hl,#_slowend + 0
	ld	(hl), #0x25
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1489: drawstrslow("Give a big hand to all the organizers",28,164+6);
	ld	hl,#0xAA1C
	push	hl
	ld	hl,#__str_22
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00108$:
;demo.c:1492: if (ff == 1700) {
	ld	a,(#_ff+0)
	sub	a,#0xA4
	jr	NZ,00203$
	ld	a,(#_ff+1)
	sub	a,#0x06
	jr	Z,00204$
00203$:
	jr	00111$
00204$:
;demo.c:1493: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00111$:
;demo.c:1496: if (ff > 1700 && ff < 1800) {
	ld	a,#0xA4
	ld	iy,#_ff
	sub	a,0 (iy)
	ld	a,#0x06
	ld	iy,#_ff
	sbc	a,1 (iy)
	jp	P,00113$
	ld	a,(#_ff+0)
	sub	a,#0x08
	ld	a,(#_ff+1)
	sbc	a,#0x07
	jp	P,00113$
;demo.c:1497: slowend = 21;
	ld	hl,#_slowend + 0
	ld	(hl), #0x15
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1498: drawstrslow("of this amazing party",64,164+16);
	ld	hl,#0xB440
	push	hl
	ld	hl,#__str_23
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00113$:
;demo.c:1501: if (ff >= 2000 && ff < 3890) {
	ld	a,(#_ff+0)
	sub	a,#0xD0
	ld	a,(#_ff+1)
	sbc	a,#0x07
	jp	M,00116$
	ld	a,(#_ff+0)
	sub	a,#0x32
	ld	a,(#_ff+1)
	sbc	a,#0x0F
	jp	P,00116$
;demo.c:1502: cmd.size_x = 1;
	ld	hl, #_cmd + 8
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:1503: cmd.size_y = 17;
	ld	hl, #_cmd + 10
	ld	(hl),#0x11
	inc	hl
	ld	(hl),#0x00
;demo.c:1504: cmd.data = 0;
;demo.c:1505: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1506: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1507: cmd.source_x = 128+20*(((ff-2001)>>3) % 6);
	ld	a,(#_ff+0)
	add	a,#0x2F
	ld	c,a
	ld	a,(#_ff+1)
	adc	a,#0xF8
	ld	b,a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	hl,#0x0006
	push	hl
	push	bc
	call	__modsint_rrx_s
	pop	af
	pop	af
	ld	b,h
	ld	c,l
	ld	e,c
	ld	d,b
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,hl
	add	hl,de
	add	hl,hl
	add	hl,hl
	ld	bc,#0x0080
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	hl,#_cmd
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1508: cmd.source_y = 768+30;
	ld	hl, #_cmd + 2
	ld	(hl),#0x1E
	inc	hl
	ld	(hl),#0x03
;demo.c:1509: cmd.dest_x = (255)-((ff-2000)>>3);
	ld	bc,#_cmd + 4
	ld	a,(#_ff+0)
	add	a,#0x30
	ld	e,a
	ld	a,(#_ff+1)
	adc	a,#0xF8
	ld	d,a
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a,#0xFF
	sub	a,e
	ld	e,a
	ld	a,#0x00
	sbc	a,d
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1510: cmd.dest_y = 12;
	ld	hl, #_cmd + 6
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:1511: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1514: cmd.size_x = 20;
	ld	hl, #_cmd + 8
	ld	(hl),#0x14
	inc	hl
	ld	(hl),#0x00
;demo.c:1515: cmd.size_y = 17;
	ld	hl, #_cmd + 10
	ld	(hl),#0x11
	inc	hl
	ld	(hl),#0x00
;demo.c:1516: cmd.data = 0;
;demo.c:1517: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1518: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1519: cmd.source_x = 128+20*(((ff-2000)>>3) % 6);
	ld	a,(#_ff+0)
	add	a,#0x30
	ld	c,a
	ld	a,(#_ff+1)
	adc	a,#0xF8
	ld	b,a
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	push	bc
	ld	hl,#0x0006
	push	hl
	push	bc
	call	__modsint_rrx_s
	pop	af
	pop	af
	ex	de,hl
	pop	bc
	ld	l,e
	ld	h,d
	add	hl,hl
	add	hl,hl
	add	hl,de
	add	hl,hl
	add	hl,hl
	ex	de,hl
	ld	hl,#0x0080
	add	hl,de
	ex	de,hl
	ld	hl,#_cmd
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1520: cmd.source_y = 768;
	ld	de,#_cmd + 2
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x03
;demo.c:1521: cmd.dest_x = (256-20)-((ff-2000)>>3);
	ld	de,#_cmd + 4
	ld	a,#0xEC
	sub	a,c
	ld	c,a
	ld	a,#0x00
	sbc	a,b
	ld	b,a
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1522: cmd.dest_y = 12;
	ld	hl, #_cmd + 6
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:1523: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
00116$:
;demo.c:1528: if (ff == 2800) {
	ld	a,(#_ff+0)
	sub	a,#0xF0
	jr	NZ,00208$
	ld	a,(#_ff+1)
	sub	a,#0x0A
	jr	Z,00209$
00208$:
	jr	00119$
00209$:
;demo.c:1529: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00119$:
;demo.c:1532: if (ff > 2800 && ff < 2900) {
	ld	a,#0xF0
	ld	iy,#_ff
	sub	a,0 (iy)
	ld	a,#0x0A
	ld	iy,#_ff
	sbc	a,1 (iy)
	jp	P,00121$
	ld	a,(#_ff+0)
	sub	a,#0x54
	ld	a,(#_ff+1)
	sbc	a,#0x0B
	jp	P,00121$
;demo.c:1533: slowend = 21;
	ld	hl,#_slowend + 0
	ld	(hl), #0x15
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1534: drawstrslow("Digital Sounds System",0,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#__str_24
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00121$:
;demo.c:1537: if (ff == 3400) {
	ld	a,(#_ff+0)
	sub	a,#0x48
	jr	NZ,00210$
	ld	a,(#_ff+1)
	sub	a,#0x0D
	jr	Z,00211$
00210$:
	jr	00124$
00211$:
;demo.c:1538: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00124$:
;demo.c:1541: if (ff > 3400 && ff < 3500) {
	ld	a,#0x48
	ld	iy,#_ff
	sub	a,0 (iy)
	ld	a,#0x0D
	ld	iy,#_ff
	sbc	a,1 (iy)
	jp	P,00152$
	ld	a,(#_ff+0)
	sub	a,#0xAC
	ld	a,(#_ff+1)
	sbc	a,#0x0D
	jp	P,00152$
;demo.c:1542: slowend = 19;
	ld	hl,#_slowend + 0
	ld	(hl), #0x13
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1543: drawstrslow("mew mew mew miu mou",134,0);
	ld	hl,#0x0086
	push	hl
	ld	hl,#__str_25
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00152$:
	ld	sp,ix
	pop	ix
	ret
_bigtext_end::
__str_13:
	.ascii "DIGITAL"
	.db 0x00
__str_14:
	.ascii "SOUNDS"
	.db 0x00
__str_15:
	.ascii "SYSTEM"
	.db 0x00
__str_16:
	.ascii "COMMAND"
	.db 0x00
__str_17:
	.ascii "   THE  "
	.db 0x00
__str_18:
	.ascii "  BASS "
	.db 0x00
__str_19:
	.ascii "REVISION"
	.db 0x00
__str_20:
	.ascii "   IS OUR"
	.db 0x00
__str_21:
	.ascii "  PARTY"
	.db 0x00
__str_22:
	.ascii "Give a big hand to all the organizers"
	.db 0x00
__str_23:
	.ascii "of this amazing party"
	.db 0x00
__str_24:
	.ascii "Digital Sounds System"
	.db 0x00
__str_25:
	.ascii "mew mew mew miu mou"
	.db 0x00
;demo.c:1548: void waiter() {
;	---------------------------------
; Function waiter
; ---------------------------------
_waiter_start::
_waiter:
;demo.c:1550: }
	ret
_waiter_end::
;demo.c:1559: void credits() {
;	---------------------------------
; Function credits
; ---------------------------------
_credits_start::
_credits:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;demo.c:1565: if (initcredits == 0) {
	ld	a,(#_initcredits+0)
	ld	hl,#_initcredits + 1
	or	a,(hl)
	jp	NZ,00102$
;demo.c:1566: scratch_clear();
	call	_scratch_clear
;demo.c:1567: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1569: vdp_register(0,8); // mode 512x212
	ld	hl,#0x0800
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1570: vdp_register(9,130); // 50hz,192
	ld	hl,#0x8209
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1572: uninstall_isr();
	call	_uninstall_isr
;demo.c:1573: PLY_Stop();
	call	_PLY_Stop
;demo.c:1574: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:1576: initcredits = 1;
	ld	hl,#_initcredits + 0
	ld	(hl), #0x01
	ld	hl,#_initcredits + 1
	ld	(hl), #0x00
;demo.c:1578: bitbuster(crebuffer2,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_crebuffer2
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1580: cmd.size_x = 512;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1581: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1582: cmd.data = 0;
;demo.c:1583: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1584: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1585: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1586: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1587: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1588: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1589: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1591: bitbuster(crebuffer3,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_crebuffer3
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1593: cmd.size_x = 512;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1594: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1595: cmd.data = 0;
;demo.c:1596: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1597: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1598: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1599: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1600: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1601: cmd.dest_y = 512;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1602: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1604: bitbuster(crebuffer1,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_crebuffer1
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1606: install_isr(my_isr);
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
;demo.c:1608: memcpy(cur_palette, credits_palette, 32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_credits_palette
	push	hl
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1610: scratch_clear();
	call	_scratch_clear
;demo.c:1611: pointframe = 0;
	ld	hl,#_pointframe + 0
	ld	(hl), #0x00
	ld	hl,#_pointframe + 1
	ld	(hl), #0x00
;demo.c:1612: curpage = 0;
	ld	hl,#_curpage + 0
	ld	(hl), #0x00
	ld	hl,#_curpage + 1
	ld	(hl), #0x00
;demo.c:1613: myoffs = 180;
	ld	hl,#_myoffs + 0
	ld	(hl), #0xB4
	ld	hl,#_myoffs + 1
	ld	(hl), #0x00
00102$:
;demo.c:1616: if (credittimer < 400) fadein();
	ld	a,(#_credittimer+0)
	sub	a,#0x90
	ld	a,(#_credittimer+1)
	sbc	a,#0x01
	jp	P,00104$
	call	_fadein
00104$:
;demo.c:1618: if(credittimer >= 1000 && curpage == 0) { vdp_register(2, 0x3f); curpage = 256; myoffs = 100; }
	ld	a,(#_credittimer+0)
	sub	a,#0xE8
	ld	a,(#_credittimer+1)
	sbc	a,#0x03
	jp	M,00106$
	ld	a,(#_curpage+0)
	ld	hl,#_curpage + 1
	or	a,(hl)
	jr	NZ,00106$
	ld	hl,#0x3F02
	push	hl
	call	_vdp_register
	pop	af
	ld	hl,#_curpage + 0
	ld	(hl), #0x00
	ld	hl,#_curpage + 1
	ld	(hl), #0x01
	ld	hl,#_myoffs + 0
	ld	(hl), #0x64
	ld	hl,#_myoffs + 1
	ld	(hl), #0x00
00106$:
;demo.c:1619: if(credittimer >= 1500 && curpage == 256) { vdp_register(2, 0x5f); curpage = 512; myoffs = 200; }
	ld	a,(#_credittimer+0)
	sub	a,#0xDC
	ld	a,(#_credittimer+1)
	sbc	a,#0x05
	jp	M,00109$
	ld	a,(#_curpage+0)
	or	a,a
	jr	NZ,00140$
	ld	a,(#_curpage+1)
	sub	a,#0x01
	jr	Z,00141$
00140$:
	jr	00109$
00141$:
	ld	hl,#0x5F02
	push	hl
	call	_vdp_register
	pop	af
	ld	hl,#_curpage + 0
	ld	(hl), #0x00
	ld	hl,#_curpage + 1
	ld	(hl), #0x02
	ld	hl,#_myoffs + 0
	ld	(hl), #0xC8
	ld	hl,#_myoffs + 1
	ld	(hl), #0x00
00109$:
;demo.c:1621: credittimer+=3;
	ld	hl,#_credittimer
	ld	a,(hl)
	add	a,#0x03
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
;demo.c:1622: if (credittimer == 1500) {
	ld	a,(#_credittimer+0)
	sub	a,#0xDC
	jr	NZ,00142$
	ld	a,(#_credittimer+1)
	sub	a,#0x05
	jr	Z,00143$
00142$:
	jr	00112$
00143$:
;demo.c:1623: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00112$:
;demo.c:1626: if (credittimer >= 300 && credittimer < 700 &&  flipo < 211) {
	ld	a,(#_credittimer+0)
	sub	a,#0x2C
	ld	a,(#_credittimer+1)
	sbc	a,#0x01
	jp	M,00114$
	ld	a,(#_credittimer+0)
	sub	a,#0xBC
	ld	a,(#_credittimer+1)
	sbc	a,#0x02
	jp	P,00114$
	ld	a,(#_flipo+0)
	sub	a,#0xD3
	ld	a,(#_flipo+1)
	sbc	a,#0x00
	jp	P,00114$
;demo.c:1627: cmd.size_x = 64;
	ld	hl, #_cmd + 8
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0x00
;demo.c:1628: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:1629: cmd.data = 0;
;demo.c:1630: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1631: cmd.command = 0x93; // vram to vram, y only
	ld	a,#0x93
	ld	(#_cmd + 14),a
;demo.c:1632: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1633: cmd.source_y = 211-flipo;
	ld	bc,#_cmd + 2
	ld	hl,#_flipo
	ld	a,#0xD3
	sub	a,(hl)
	ld	e,a
	ld	a,#0x00
	inc	hl
	sbc	a,(hl)
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1635: cmd.dest_x = flipo;
	ld	bc,#_cmd + 4
	ld	de,(_flipo)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1636: cmd.dest_y = flipo;
	ld	bc,#_cmd + 6
	ld	de,(_flipo)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1637: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1638: flipo+=2;
	ld	hl,#_flipo
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
00114$:
;demo.c:1641: if (credittimer > 700) {
	ld	a,#0xBC
	ld	iy,#_credittimer
	sub	a,0 (iy)
	ld	a,#0x02
	ld	iy,#_credittimer
	sbc	a,1 (iy)
	jp	P,00118$
;demo.c:1642: msx2_palette(0,PLY_PSGReg10,PLY_PSGReg10,PLY_PSGReg10);
	ld	hl,#_PLY_PSGReg10 + 0
	ld	c,(hl)
	ld	hl,#_PLY_PSGReg10 + 0
	ld	b,(hl)
	ld	hl,#_PLY_PSGReg10 + 0
	ld	e,(hl)
	ld	a,c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	d,e
	ld	e,#0x00
	push	de
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1644: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1645: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:1646: cmd.data = 0;
	ld	bc,#_cmd + 12
	ld	a,#0x00
	ld	(bc),a
;demo.c:1647: cmd.argument = 0x00; // from 70xY to left
	ld	hl,#_cmd + 13
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	(hl),#0x00
;demo.c:1648: cmd.command = 0xd0; // vram to vram, y only
	ld	hl,#_cmd + 14
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	(hl),#0xD0
;demo.c:1649: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1650: cmd.dest_x = 0;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1651: cmd.argument = 0x0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
;demo.c:1653: cmd.data = 1+((pointframe>>2) & 0xe);
	ld	hl,#_pointframe + 0
	ld	e,(hl)
	ld	hl,#_pointframe + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a,e
	and	a,#0x0E
	inc	a
	ld	(bc),a
;demo.c:1654: cmd.command = 0x53;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0x53
;demo.c:1655: for (x = 0; x < 212; x+=1) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00120$:
	ld	a,-2 (ix)
	sub	a,#0xD4
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00123$
;demo.c:1656: y = 64+(sintabx[(x+pointframe) & 255]>>1);
	ld	hl,#_pointframe
	ld	a,-2 (ix)
	add	a,(hl)
	ld	e,a
	ld	a,-1 (ix)
	inc	hl
	adc	a,(hl)
	ld	d,#0x00
	ld	hl,#_sintabx
	add	hl,de
	ld	a,(hl)
	srl	a
	add	a,#0x40
	ld	c,a
;demo.c:1657: cmd.dest_x = myoffs+y;
	ld	de,#_cmd + 4
	ld	b,#0x00
	ld	a,(#_myoffs+0)
	add	a,c
	ld	c,a
	ld	a,(#_myoffs+1)
	adc	a,b
	ld	b,a
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1658: cmd.dest_y = curpage+x;
	ld	bc,#_cmd + 6
	ld	a,(#_curpage+0)
	add	a,-2 (ix)
	ld	e,a
	ld	a,(#_curpage+1)
	adc	a,-1 (ix)
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1659: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1655: for (x = 0; x < 212; x+=1) {
	inc	-2 (ix)
	jr	NZ,00145$
	inc	-1 (ix)
00145$:
	jp	00120$
00123$:
;demo.c:1661: pointframe+=2;
	ld	hl,#_pointframe
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
	jr	00124$
00118$:
;demo.c:1664: msx2_palette(0,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x00
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
00124$:
	ld	sp,ix
	pop	ix
	ret
_credits_end::
;demo.c:1673: void do_quit() {
;	---------------------------------
; Function do_quit
; ---------------------------------
_do_quit_start::
_do_quit:
;demo.c:1674: waitVB();
		halt 
;demo.c:1675: uninstall_isr();
	call	_uninstall_isr
;demo.c:1676: PLY_Stop();
	call	_PLY_Stop
;demo.c:1677: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:1679: screen(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_screen
	inc	sp
;demo.c:1680: vdp_load_palette(twister_palette);
	ld	hl,#_twister_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1682: puts("bye friends.\r\n\r\n");
	ld	hl,#__str_26
	push	hl
	call	_puts
	pop	af
;demo.c:1684: exit(0);	
	ld	a,#0x00
	push	af
	inc	sp
	call	_exit
	inc	sp
	ret
_do_quit_end::
__str_26:
	.ascii "bye friends."
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
;demo.c:1690: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;demo.c:1691: unsigned char quit=0;
	ld	-1 (ix),#0x00
;demo.c:1697: spindown();
	call	_spindown
;demo.c:1699: puts("[starting DSS MSX demosystem]\r\n\r\n");
	ld	hl,#__str_27
	push	hl
	call	_puts
	pop	af
;demo.c:1701: for (y = 0; y < 2; y++) {
	ld	-5 (ix),#0x00
	ld	-4 (ix),#0x00
00118$:
	ld	a,-5 (ix)
	sub	a,#0x02
	ld	a,-4 (ix)
	sbc	a,#0x00
	jp	P,00121$
;demo.c:1702: for (x = 0; x < 16; x++) {
	ld	c,-5 (ix)
	ld	b,-4 (ix)
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x0381
	add	hl,bc
	ld	-7 (ix),l
	ld	-6 (ix),h
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
00114$:
	ld	a,-3 (ix)
	sub	a,#0x10
	ld	a,-2 (ix)
	sbc	a,#0x00
	jp	P,00120$
;demo.c:1703: tri_lookup_x[(y*16)+x] = x * 16;
	ld	a,-5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	e,a
	ld	d,-3 (ix)
	ld	a,e
	add	a,d
	ld	e, a
	add	a,#<_tri_lookup_x
	ld	c,a
	ld	a,#>_tri_lookup_x
	adc	a,#0x00
	ld	b,a
	ld	a,d
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	(bc),a
;demo.c:1704: tri_lookup_y[(y*16)+x] = (768+129)+(y * 16);
	sla	e
	ld	a,#<_tri_lookup_y
	add	a,e
	ld	l,a
	ld	a,#>_tri_lookup_y
	adc	a,#0x00
	ld	h,a
	ld	a,-7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-6 (ix)
	ld	(hl),a
;demo.c:1702: for (x = 0; x < 16; x++) {
	inc	-3 (ix)
	jr	NZ,00146$
	inc	-2 (ix)
00146$:
	jp	00114$
00120$:
;demo.c:1701: for (y = 0; y < 2; y++) {
	inc	-5 (ix)
	jr	NZ,00147$
	inc	-4 (ix)
00147$:
	jp	00118$
00121$:
;demo.c:1708: for (x = 0; x < 26; x++) {
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-7 (ix),#0x00
	ld	-6 (ix),#0x00
00122$:
	ld	a,-3 (ix)
	sub	a,#0x1A
	ld	a,-2 (ix)
	sbc	a,#0x00
	jp	P,00125$
;demo.c:1709: twelvetimes[x] = x * 12;
	ld	c,-3 (ix)
	ld	b,-2 (ix)
	sla	c
	rl	b
	ld	hl,#_twelvetimes
	add	hl,bc
	ld	a,-7 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-6 (ix)
	ld	(hl),a
;demo.c:1710: eighttimes[x] = x * 8;
	ld	hl,#_eighttimes
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e,-3 (ix)
	ld	d,-2 (ix)
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
;demo.c:1708: for (x = 0; x < 26; x++) {
	ld	a,-7 (ix)
	add	a,#0x0C
	ld	-7 (ix),a
	ld	a,-6 (ix)
	adc	a,#0x00
	ld	-6 (ix),a
	inc	-3 (ix)
	jr	NZ,00152$
	inc	-2 (ix)
00152$:
	jp	00122$
00125$:
;demo.c:1713: puts("init sweet PSG bleeps...");
	ld	hl,#__str_28
	push	hl
	call	_puts
	pop	af
;demo.c:1715: PLY_SongPtr = (char *)0x0103;
	ld	hl,#_PLY_SongPtr + 0
	ld	(hl), #0x03
	ld	hl,#_PLY_SongPtr + 1
	ld	(hl), #0x01
;demo.c:1716: PLY_Init();
	call	_PLY_Init
;demo.c:1717: puts("done.\r\n");
	ld	hl,#__str_29
	push	hl
	call	_puts
	pop	af
;demo.c:1719: puts("detecting ya vdp type...\r\n");
	ld	hl,#__str_30
	push	hl
	call	_puts
	pop	af
;demo.c:1720: if(isvdp2())
	call	_isvdp2
	xor	a,a
	or	a,l
	jr	Z,00102$
;demo.c:1722: puts("vdp2 found! setting 50hz...\r\n");
	ld	hl,#__str_31
	push	hl
	call	_puts
	pop	af
	jr	00103$
00102$:
;demo.c:1725: puts(" vdp1 found.\r\nSorry, this demo requires a VDP2 with 128k for VRAM.\r\n");
	ld	hl,#__str_32
	push	hl
	call	_puts
	pop	af
;demo.c:1726: do_quit();
	call	_do_quit
00103$:
;demo.c:1729: pal_load("TWISTER PL5",32,0);
	ld	hl,#0x0000
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_33
	push	hl
	call	_pal_load
	pop	af
	pop	af
	inc	sp
;demo.c:1730: memcpy(twister_palette, cur_palette, 32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_cur_palette
	push	hl
	ld	hl,#_twister_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1731: pal_load("LF      PL5",32,0);
	ld	hl,#0x0000
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_34
	push	hl
	call	_pal_load
	pop	af
	pop	af
	inc	sp
;demo.c:1732: memcpy(tf_palette, cur_palette, 32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_cur_palette
	push	hl
	ld	hl,#_tf_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1733: pal_load("BOXES   PL5",32,0);
	ld	hl,#0x0000
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_35
	push	hl
	call	_pal_load
	pop	af
	pop	af
	inc	sp
;demo.c:1734: memcpy(boxes_palette, cur_palette, 32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_cur_palette
	push	hl
	ld	hl,#_boxes_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1735: pal_load("BULBS   PL5",32,0);
	ld	hl,#0x0000
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_36
	push	hl
	call	_pal_load
	pop	af
	pop	af
	inc	sp
;demo.c:1736: memcpy(bulbs_palette, cur_palette, 32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_cur_palette
	push	hl
	ld	hl,#_bulbs_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1737: pal_load("CREDIT1 PL6",32,0);
	ld	hl,#0x0000
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_37
	push	hl
	call	_pal_load
	pop	af
	pop	af
	inc	sp
;demo.c:1738: memcpy(credits_palette, cur_palette, 32);
	ld	hl,#0x0020
	push	hl
	ld	hl,#_cur_palette
	push	hl
	ld	hl,#_credits_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1740: puts("all good, starting the demo!\r\n");
	ld	hl,#__str_38
	push	hl
	call	_puts
	pop	af
;demo.c:1742: pause();
	call	_pause
;demo.c:1743: pause();
	call	_pause
;demo.c:1744: pause();
	call	_pause
;demo.c:1745: pause();
	call	_pause
;demo.c:1746: pause();
	call	_pause
;demo.c:1747: pause();
	call	_pause
;demo.c:1749: scratch_clear();
	call	_scratch_clear
;demo.c:1750: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1752: vdp_set_screen5();
	call	_vdp_set_screen5
;demo.c:1754: pck_load("LOADING PCK",5489,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x1571
	push	hl
	ld	hl,#__str_39
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1755: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1756: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1757: cmd.data = 0;
;demo.c:1758: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1759: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1760: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1761: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1762: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1763: cmd.dest_y = 768;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x03
;demo.c:1764: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1766: vdp_register(2,0x7f);
	ld	hl,#0x7F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1767: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1771: pck_load("BULBS   PCK",2431,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x097F
	push	hl
	ld	hl,#__str_40
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1773: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1774: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1775: cmd.data = 0;
;demo.c:1776: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1777: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1778: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1779: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1780: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1781: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1782: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1784: pck_load("TWISTER PCK",4032,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x0FC0
	push	hl
	ld	hl,#__str_41
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1786: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1787: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1788: cmd.data = 0;
;demo.c:1789: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1790: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1791: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1792: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1793: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1794: cmd.dest_y = 512;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1795: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1797: memset((uint8_t *) &crebuffer1, 0, 3323);
	ld	hl,#0x0CFB
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_crebuffer1
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:1798: raw_load("CREDIT1 PCK", 3323, crebuffer1,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_crebuffer1
	push	hl
	ld	hl,#0x0CFB
	push	hl
	ld	hl,#__str_42
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	af
;demo.c:1799: memset((uint8_t *) &crebuffer2, 0, 4724);
	ld	hl,#0x1274
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_crebuffer2
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:1800: raw_load("CREDIT2 PCK", 4724, crebuffer2,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_crebuffer2
	push	hl
	ld	hl,#0x1274
	push	hl
	ld	hl,#__str_43
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	af
;demo.c:1801: memset((uint8_t *) &crebuffer3, 0, 3723);
	ld	hl,#0x0E8B
	push	hl
	ld	a,#0x00
	push	af
	inc	sp
	ld	hl,#_crebuffer3
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:1802: raw_load("CREDIT3 PCK", 3723, crebuffer3,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_crebuffer3
	push	hl
	ld	hl,#0x0E8B
	push	hl
	ld	hl,#__str_44
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	af
;demo.c:1804: scratch_clear();
	call	_scratch_clear
;demo.c:1805: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1807: vdp_register(2,0x1f);
	ld	hl,#0x1F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1809: pck_load("BOXES   PCK",3002,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x0BBA
	push	hl
	ld	hl,#__str_45
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1810: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1811: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1812: cmd.data = 0;
;demo.c:1813: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1814: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1815: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1816: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1817: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1818: cmd.dest_y = 768;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x03
;demo.c:1819: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1821: pck_load("DSSLOGO PCK",2154,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x086A
	push	hl
	ld	hl,#__str_46
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1823: cmd.size_x = 108;
	ld	hl, #_cmd + 8
	ld	(hl),#0x6C
	inc	hl
	ld	(hl),#0x00
;demo.c:1824: cmd.size_y = 116;
	ld	hl, #_cmd + 10
	ld	(hl),#0x74
	inc	hl
	ld	(hl),#0x00
;demo.c:1825: cmd.data = 0;
;demo.c:1826: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1827: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1828: cmd.source_x = 75;
	ld	hl,#_cmd
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1829: cmd.source_y = 50;
	ld	hl, #_cmd + 2
	ld	(hl),#0x32
	inc	hl
	ld	(hl),#0x00
;demo.c:1830: cmd.dest_x = 75;
	ld	hl, #_cmd + 4
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1831: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1832: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1834: cmd.size_x = 108;
	ld	hl, #_cmd + 8
	ld	(hl),#0x6C
	inc	hl
	ld	(hl),#0x00
;demo.c:1835: cmd.size_y = 60;
	ld	hl, #_cmd + 10
	ld	(hl),#0x3C
	inc	hl
	ld	(hl),#0x00
;demo.c:1836: cmd.data = 0;
;demo.c:1837: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1838: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1839: cmd.source_x = 75;
	ld	hl,#_cmd
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1840: cmd.source_y = 256+110;
	ld	hl, #_cmd + 2
	ld	(hl),#0x6E
	inc	hl
	ld	(hl),#0x01
;demo.c:1841: cmd.dest_x = 75;
	ld	hl, #_cmd + 4
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1842: cmd.dest_y = 40;
	ld	hl, #_cmd + 6
	ld	(hl),#0x28
	inc	hl
	ld	(hl),#0x00
;demo.c:1843: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1844: cmd.dest_x = 75;
	ld	hl, #_cmd + 4
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1845: cmd.dest_y = 100;
	ld	hl, #_cmd + 6
	ld	(hl),#0x64
	inc	hl
	ld	(hl),#0x00
;demo.c:1846: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1848: pal_load("DSSLOGO PL5",32,0);
	ld	hl,#0x0000
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	hl,#__str_47
	push	hl
	call	_pal_load
	pop	af
	pop	af
	inc	sp
;demo.c:1850: scratch_clear();
	call	_scratch_clear
;demo.c:1852: vdp_register(9,130); // 50hz,212
	ld	hl,#0x8209
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1854: install_isr(my_isr);
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
;demo.c:1858: while (!quit) {
00111$:
	xor	a,a
	or	a,-1 (ix)
	jp	NZ,00113$
;demo.c:1860: if (vbicount >= scenetimings[timeindex+1]) {
	ld	hl,#_timeindex + 0
	ld	c,(hl)
	inc	c
	sla	c
	ld	a,#<_scenetimings
	add	a,c
	ld	l,a
	ld	a,#>_scenetimings
	adc	a,#0x00
	ld	h,a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(#_vbicount+0)
	sub	a,c
	ld	a,(#_vbicount+1)
	sbc	a,b
	jp	M,00105$
;demo.c:1861: sceneindex++;
	ld	iy,#_sceneindex
	inc	0 (iy)
	jr	NZ,00153$
	ld	iy,#_sceneindex
	inc	1 (iy)
00153$:
;demo.c:1862: timeindex+=2;
	ld	hl,#_timeindex
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
00105$:
;demo.c:1865: if (vbicount >= scenetimings[timeindex] && vbicount < scenetimings[timeindex+1]) {
	ld	hl,#_timeindex + 0
	ld	c,(hl)
	ld	hl,#_timeindex + 1
	ld	b,(hl)
	sla	c
	rl	b
	ld	hl,#_scenetimings
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(#_vbicount+0)
	sub	a,c
	ld	a,(#_vbicount+1)
	sbc	a,b
	jp	M,00107$
	ld	hl,#_timeindex + 0
	ld	c,(hl)
	inc	c
	sla	c
	ld	a,#<_scenetimings
	add	a,c
	ld	l,a
	ld	a,#>_scenetimings
	adc	a,#0x00
	ld	h,a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(#_vbicount+0)
	sub	a,c
	ld	iy,#_vbicount
	ld	a,1 (iy)
	sbc	a,b
	jp	P,00107$
;demo.c:1866: waitVB();
		halt 
;demo.c:1867: scenepointers[sceneindex]();
	ld	hl,#_sceneindex + 0
	ld	c,(hl)
	ld	iy,#_sceneindex
	ld	b,1 (iy)
	sla	c
	rl	b
	ld	hl,#_scenepointers
	add	hl,bc
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	bc
	ld	hl,#00158$
	push	hl
	ld	l,c
	ld	h,b
	jp	(hl)
00158$:
	pop	bc
00107$:
;demo.c:1871: if(space())
	ld	hl,#0x0108
	push	hl
	call	_ispressed
	pop	af
	xor	a,a
	or	a,l
	jp	Z,00111$
;demo.c:1872: quit=1;
	ld	-1 (ix),#0x01
	jp	00111$
00113$:
;demo.c:1875: do_quit();
	call	_do_quit
	ld	sp,ix
	pop	ix
	ret
_main_end::
__str_27:
	.ascii "[starting DSS MSX demosystem]"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_28:
	.ascii "init sweet PSG bleeps..."
	.db 0x00
__str_29:
	.ascii "done."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_30:
	.ascii "detecting ya vdp type..."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_31:
	.ascii "vdp2 found! setting 50hz..."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_32:
	.ascii " vdp1 found."
	.db 0x0D
	.db 0x0A
	.ascii "Sorry, this demo requires a VDP2 with 128k for"
	.ascii " VRAM."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_33:
	.ascii "TWISTER PL5"
	.db 0x00
__str_34:
	.ascii "LF      PL5"
	.db 0x00
__str_35:
	.ascii "BOXES   PL5"
	.db 0x00
__str_36:
	.ascii "BULBS   PL5"
	.db 0x00
__str_37:
	.ascii "CREDIT1 PL6"
	.db 0x00
__str_38:
	.ascii "all good, starting the demo!"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_39:
	.ascii "LOADING PCK"
	.db 0x00
__str_40:
	.ascii "BULBS   PCK"
	.db 0x00
__str_41:
	.ascii "TWISTER PCK"
	.db 0x00
__str_42:
	.ascii "CREDIT1 PCK"
	.db 0x00
__str_43:
	.ascii "CREDIT2 PCK"
	.db 0x00
__str_44:
	.ascii "CREDIT3 PCK"
	.db 0x00
__str_45:
	.ascii "BOXES   PCK"
	.db 0x00
__str_46:
	.ascii "DSSLOGO PCK"
	.db 0x00
__str_47:
	.ascii "DSSLOGO PL5"
	.db 0x00
	.area _CODE
	.area _CABS
