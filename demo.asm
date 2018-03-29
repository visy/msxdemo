;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Thu Mar 29 12:08:30 2018
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
	.globl _drawstrslowcolor
	.globl _drawstrslow
	.globl _drawstr
	.globl _do_letter_tall
	.globl _do_letter
	.globl _do_colorletter
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
	.globl _greetindex
	.globl _pointframe
	.globl _initpoints
	.globl _stereodone
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
	.globl _firstwave
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
	.globl _ltrpointer
	.globl _bigtextp
	.globl _ffz
	.globl _ff
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
	.globl _slowend
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
	.globl _packbuffer
	.globl _tri_lookup_y
	.globl _eighttimes
	.globl _twelvetimes
	.globl _tri_lookup_x
	.globl _loading_pck_len
	.globl _loading_pck
	.globl _dsslogo_pck_len
	.globl _dsslogo_pck
	.globl _dsslogo_pl5_len
	.globl _dsslogo_pl5
	.globl _credit1_pl6_len
	.globl _credit1_pl6
	.globl _bulbs_pl5_len
	.globl _bulbs_pl5
	.globl _boxes_pl5_len
	.globl _boxes_pl5
	.globl _twister_pl5_len
	.globl _twister_pl5
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
_twister_pl5::
	.ds 39
_twister_pl5_len::
	.ds 2
_boxes_pl5::
	.ds 39
_boxes_pl5_len::
	.ds 2
_bulbs_pl5::
	.ds 39
_bulbs_pl5_len::
	.ds 2
_credit1_pl6::
	.ds 15
_credit1_pl6_len::
	.ds 2
_dsslogo_pl5::
	.ds 39
_dsslogo_pl5_len::
	.ds 2
_dsslogo_pck::
	.ds 2154
_dsslogo_pck_len::
	.ds 2
_loading_pck::
	.ds 5489
_loading_pck_len::
	.ds 2
_tri_lookup_x::
	.ds 32
_twelvetimes::
	.ds 52
_eighttimes::
	.ds 52
_tri_lookup_y::
	.ds 64
_packbuffer::
	.ds 4724
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
_slowend::
	.ds 2
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
_ff::
	.ds 2
_ffz::
	.ds 2
_bigtextp::
	.ds 2
_ltrpointer::
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
_firstwave::
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
_stereodone::
	.ds 2
_initpoints::
	.ds 1
_pointframe::
	.ds 2
_greetindex::
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
;demo.c:239: static unsigned char mask[] = {1, 2, 4, 8, 16, 32, 64, 128};
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
;twister.pl5.h:1: unsigned char twister_pl5[] = {
	ld	hl,#_twister_pl5
	call	__initrleblock
	.db	39
	.db	0xFE, 0x80, 0x76, 0x9F, 0x76, 0x00, 0x00, 0x00
	.db	0x00, 0x32, 0x02, 0x42, 0x02, 0x43, 0x03, 0x45
	.db	0x02, 0x54, 0x04, 0x64, 0x04, 0x65, 0x05, 0x75
	.db	0x05, 0x77, 0x07, 0x77, 0x07, 0x77, 0x07, 0x77
	.db	0x07, 0x77, 0x07, 0x77, 0x07, 0x77, 0x07
	.db	0
;twister.pl5.h:7: unsigned int twister_pl5_len = 39;
	ld	iy,#_twister_pl5_len
	ld	0 (iy),#0x27
	ld	iy,#_twister_pl5_len
	ld	1 (iy),#0x00
;boxes.pl5.h:1: unsigned char boxes_pl5[] = {
	ld	hl,#_boxes_pl5
	call	__initrleblock
	.db	39
	.db	0xFE, 0x80, 0x76, 0x9F, 0x76, 0x00, 0x00, 0x00
	.db	0x00, 0x11, 0x01, 0x21, 0x01, 0x41, 0x02, 0x22
	.db	0x02, 0x32, 0x03, 0x22, 0x03, 0x42, 0x03, 0x42
	.db	0x03, 0x43, 0x03, 0x33, 0x04, 0x52, 0x03, 0x63
	.db	0x04, 0x64, 0x05, 0x65, 0x06, 0x66, 0x06
	.db	0
;boxes.pl5.h:7: unsigned int boxes_pl5_len = 39;
	ld	iy,#_boxes_pl5_len
	ld	0 (iy),#0x27
	ld	iy,#_boxes_pl5_len
	ld	1 (iy),#0x00
;bulbs.pl5.h:1: unsigned char bulbs_pl5[] = {
	ld	hl,#_bulbs_pl5
	call	__initrleblock
	.db	39
	.db	0xFE, 0x80, 0x76, 0x9F, 0x76, 0x00, 0x00, 0x00
	.db	0x00, 0x72, 0x03, 0x57, 0x02, 0x74, 0x03, 0x73
	.db	0x04, 0x57, 0x03, 0x54, 0x07, 0x73, 0x06, 0x37
	.db	0x07, 0x65, 0x06, 0x76, 0x04, 0x57, 0x06, 0x67
	.db	0x05, 0x66, 0x06, 0x76, 0x05, 0x57, 0x07
	.db	0
;bulbs.pl5.h:7: unsigned int bulbs_pl5_len = 39;
	ld	iy,#_bulbs_pl5_len
	ld	0 (iy),#0x27
	ld	iy,#_bulbs_pl5_len
	ld	1 (iy),#0x00
;credit1.pl6.h:1: unsigned char credit1_pl6[] = {
	ld	hl,#_credit1_pl6
	call	__initrleblock
	.db	15
	.db	0xFE, 0x80, 0x76, 0x9F, 0x76, 0x00, 0x00, 0x00
	.db	0x00, 0x22, 0x02, 0x55, 0x05, 0x77, 0x07
	.db	0
;credit1.pl6.h:5: unsigned int credit1_pl6_len = 15;
	ld	iy,#_credit1_pl6_len
	ld	0 (iy),#0x0F
	ld	iy,#_credit1_pl6_len
	ld	1 (iy),#0x00
;dsslogo.pl5.h:1: unsigned char dsslogo_pl5[] = {
	ld	hl,#_dsslogo_pl5
	call	__initrleblock
	.db	39
	.db	0xFE, 0x80, 0x76, 0x9F, 0x76, 0x00, 0x00, 0x00
	.db	0x00, 0x72, 0x03, 0x57, 0x02, 0x74, 0x03, 0x73
	.db	0x04, 0x57, 0x03, 0x54, 0x07, 0x73, 0x06, 0x37
	.db	0x07, 0x65, 0x06, 0x76, 0x04, 0x57, 0x06, 0x67
	.db	0x05, 0x66, 0x06, 0x76, 0x05, 0x57, 0x07
	.db	0
;dsslogo.pl5.h:7: unsigned int dsslogo_pl5_len = 39;
	ld	iy,#_dsslogo_pl5_len
	ld	0 (iy),#0x27
	ld	iy,#_dsslogo_pl5_len
	ld	1 (iy),#0x00
;dsslogo.pck.h:1: unsigned char dsslogo_pck[] = {
	ld	hl,#_dsslogo_pck
	call	__initrleblock
	.db	127
	.db	0x00, 0x6A, 0x00, 0x00, 0x7F, 0x00, 0x00, 0xFD
	.db	0x57, 0x21, 0x04, 0x56, 0x3D, 0xDD, 0x00, 0x87
	.db	0x99, 0x36, 0x7D, 0xF6, 0x80, 0x09, 0x9D, 0xD9
	.db	0x69, 0xB9, 0x00, 0x9D, 0xED, 0xDE, 0xDE, 0xD9
	.db	0xB5, 0xDD, 0xD9, 0x47, 0x30, 0xFB, 0xF6, 0x00
	.db	0x9D, 0xDD, 0x9C, 0x9C, 0xC9, 0x30, 0x9C, 0x9D
	.db	0x00, 0x9C, 0x99, 0x8A, 0x85, 0x81, 0x28, 0xFC
	.db	0xFE, 0xB8, 0xDB, 0x9D, 0x00, 0xDE, 0x99, 0xD9
	.db	0x9A, 0x99, 0xA9, 0xE9, 0xED, 0x48, 0x9E, 0x7E
	.db	0xDD, 0x84, 0xA6, 0x86, 0x7F, 0x90, 0x7E, 0x54
	.db	0x4D, 0x88, 0xEF, 0xC9, 0x9D, 0x20, 0xC9, 0xA9
	.db	0x04, 0x95, 0x62, 0x45, 0x99, 0x51, 0xC9, 0x08
	.db	0x80, 0x92, 0x82, 0x3F, 0xD1, 0x7E, 0xA8, 0x22
	.db	0x4B, 0x9B, 0xF4, 0x0E, 0x9A, 0xD9, 0x9D, 0x95
	.db	0x0E, 0x80, 0x03, 0x65, 0x9E, 0x9C, 0x9E, 0x9D
	.db	0x1F, 0x9E, 0x9B, 0x90, 0x7E, 0xD3, 0x83
	.db	127
	.db	0x99, 0x99, 0xDD, 0xDA, 0xD9, 0x7D, 0xBD, 0x00
	.db	0x14, 0x01, 0x59, 0x9D, 0x8A, 0x92, 0x81, 0xFD
	.db	0x32, 0x0D, 0xF1, 0x44, 0xCC, 0xF9, 0xCF, 0x50
	.db	0x14, 0x50, 0x05, 0x99, 0xE9, 0xC9, 0x14, 0xED
	.db	0xDB, 0x90, 0xFA, 0xFD, 0x1D, 0xF1, 0xE5, 0x00
	.db	0x16, 0xF0, 0x15, 0x03, 0x9D, 0x8F, 0x17, 0xD9
	.db	0xDD, 0x87, 0xFD, 0x12, 0xDD, 0xEA, 0x43, 0x95
	.db	0x95, 0x18, 0xE3, 0xAC, 0x87, 0x2B, 0xC9, 0x99
	.db	0xFA, 0xFA, 0x24, 0xED, 0xFD, 0x7C, 0x5C, 0x00
	.db	0x45, 0xFF, 0x82, 0x42, 0xD4, 0xFD, 0x5F, 0x9F
	.db	0x0F, 0xBD, 0xD9, 0x9E, 0xC5, 0x1B, 0x98, 0x03
	.db	0x59, 0x90, 0x82, 0xDB, 0x40, 0xFE, 0x7F, 0x74
	.db	0xD9, 0x99, 0xD1, 0xEF, 0x10, 0x1C, 0xF3, 0xA4
	.db	0x06, 0x99, 0x2B, 0x59, 0xB9, 0xFB, 0xF9, 0xD4
	.db	0xDD, 0xE4, 0xCF, 0x50, 0x1E, 0xA5, 0x0C, 0x80
	.db	0x41, 0x99, 0x90, 0xFC, 0x4F, 0xCE, 0x4C
	.db	127
	.db	0xE2, 0x93, 0xFA, 0x1F, 0xD3, 0x39, 0x81, 0x23
	.db	0xC9, 0xFE, 0xF9, 0xC3, 0xED, 0xA9, 0xFD, 0x98
	.db	0xF9, 0x20, 0xCC, 0x05, 0x69, 0x87, 0x91, 0xD0
	.db	0xFE, 0xFC, 0xD2, 0xDD, 0xDE, 0x59, 0x27, 0xDB
	.db	0x30, 0x81, 0xE8, 0xD9, 0x98, 0x9D, 0xFE, 0x1F
	.db	0xCD, 0xB7, 0xE9, 0x07, 0xF9, 0xE9, 0xE4, 0xFA
	.db	0x5B, 0xEC, 0x87, 0x23, 0x90, 0xFE, 0xF9, 0x9E
	.db	0x5B, 0x12, 0x4B, 0x62, 0xD9, 0xA0, 0xFE, 0x91
	.db	0x9C, 0x9C, 0xD9, 0xF9, 0xAF, 0xCC, 0x12, 0xE9
	.db	0xE9, 0x85, 0xA2, 0xB9, 0x9D, 0xE9, 0xE4, 0x9E
	.db	0xAE, 0x9D, 0x18, 0x9C, 0x83, 0xFC, 0xB3, 0x6D
	.db	0xF6, 0xA4, 0x90, 0x85, 0x6C, 0x61, 0x9D, 0xA7
	.db	0xE4, 0xAA, 0x81, 0x83, 0xA9, 0xB0, 0x7F, 0xF9
	.db	0x51, 0xE9, 0xAD, 0xE9, 0xEA, 0xE8, 0xB9, 0x12
	.db	0xC9, 0xD9, 0x9C, 0x00, 0x93, 0xA5, 0x7E, 0xA8
	.db	0xA6, 0xA9, 0xFD, 0xF9, 0x6A, 0xF6, 0x50
	.db	127
	.db	0x9B, 0x99, 0x9D, 0xAD, 0x0F, 0xA9, 0x59, 0x99
	.db	0xDB, 0x27, 0xA4, 0x3D, 0xC9, 0x57, 0xDD, 0x81
	.db	0xF2, 0x94, 0xF4, 0x11, 0xDC, 0x30, 0x5C, 0xD9
	.db	0x59, 0xE4, 0xD8, 0x09, 0xD3, 0x85, 0x62, 0xE9
	.db	0x4C, 0x09, 0x9F, 0xE3, 0xDF, 0xFA, 0xE5, 0x3A
	.db	0xF8, 0xCE, 0x5C, 0x80, 0x0C, 0x9C, 0x50, 0x62
	.db	0x3E, 0xD9, 0xC0, 0x28, 0x95, 0x59, 0x1D, 0xFE
	.db	0x2F, 0xCA, 0x19, 0x9D, 0xA0, 0xE0, 0x93, 0xFA
	.db	0xC9, 0xCD, 0xC9, 0xE5, 0x8F, 0x53, 0x49, 0x83
	.db	0x69, 0x80, 0xFE, 0x49, 0x6D, 0xF8, 0xDC, 0xCC
	.db	0xFE, 0x9B, 0xD9, 0x62, 0xE3, 0x1E, 0x30, 0x85
	.db	0xF4, 0x37, 0x59, 0x83, 0xF9, 0x41, 0x9A, 0x99
	.db	0xD5, 0x86, 0x2C, 0x4F, 0xFA, 0x02, 0x0B, 0xA9
	.db	0x9D, 0xE4, 0xDE, 0x76, 0x04, 0x9E, 0x08, 0x99
	.db	0x80, 0xB1, 0xFC, 0xF9, 0x12, 0x9D, 0x9C, 0xD4
	.db	0x58, 0x4F, 0x03, 0xFA, 0x3F, 0x87, 0x3E
	.db	127
	.db	0x99, 0x28, 0x64, 0x9B, 0xA1, 0xC9, 0x95, 0x9D
	.db	0x3F, 0x7F, 0x91, 0x9E, 0xD4, 0xEE, 0xFF, 0xBD
	.db	0xDE, 0x56, 0x99, 0x65, 0xA5, 0xF3, 0xA4, 0x99
	.db	0x00, 0xD9, 0x80, 0xFF, 0x22, 0x6C, 0xB9, 0x55
	.db	0x08, 0x6B, 0x1B, 0x85, 0x19, 0xE5, 0x7C, 0x62
	.db	0xAB, 0x49, 0xA4, 0x96, 0x95, 0xA0, 0x0F, 0xDC
	.db	0xDE, 0xD1, 0x7F, 0xE3, 0xC4, 0x99, 0xAD, 0xC3
	.db	0x88, 0xB4, 0x59, 0x60, 0xA9, 0x79, 0x03, 0x9C
	.db	0x9A, 0x4B, 0x93, 0xA5, 0xC6, 0xB9, 0x9B, 0x97
	.db	0xA2, 0xF2, 0x83, 0x47, 0xD5, 0x7E, 0xF1, 0xDA
	.db	0xF6, 0x2D, 0x99, 0xD3, 0xB9, 0xDD, 0x1C, 0xC9
	.db	0xE6, 0xC2, 0xDB, 0xFA, 0xBE, 0x24, 0xDD, 0x97
	.db	0xE2, 0xA0, 0xA3, 0x50, 0xAD, 0x99, 0xFE, 0x7F
	.db	0x3A, 0xD4, 0xC3, 0xCD, 0x50, 0x0A, 0xA7, 0x9C
	.db	0xFD, 0x09, 0x30, 0x80, 0xDD, 0x8D, 0xD8, 0xA4
	.db	0xF7, 0x4A, 0xC9, 0x00, 0x93, 0xAC, 0xE3
	.db	127
	.db	0xA8, 0xF8, 0xC7, 0xFD, 0xE2, 0xE7, 0xFE, 0xBF
	.db	0xE1, 0xD7, 0x99, 0x86, 0xAA, 0xDC, 0x80, 0x9E
	.db	0x15, 0x6B, 0xFA, 0x23, 0x95, 0x08, 0x73, 0xA5
	.db	0x3F, 0x7F, 0x8E, 0x2B, 0x6C, 0xDC, 0xEF, 0xC4
	.db	0xC9, 0xAC, 0x6E, 0xD5, 0x8E, 0x99, 0x9A, 0xDD
	.db	0xA1, 0xEF, 0x98, 0x30, 0xCC, 0x95, 0x10, 0x9E
	.db	0xA3, 0x5F, 0x99, 0x7F, 0xC7, 0x4E, 0x50, 0x93
	.db	0x88, 0x71, 0x96, 0x8B, 0x09, 0x39, 0xC9, 0xE3
	.db	0x76, 0x45, 0x0D, 0xF4, 0x18, 0x6B, 0x95, 0x58
	.db	0x82, 0x57, 0x80, 0xF1, 0xC7, 0xDA, 0xDC, 0x6C
	.db	0x8E, 0x82, 0x93, 0xFA, 0xB3, 0xE3, 0x6F, 0xE5
	.db	0xA9, 0x09, 0xDD, 0x9A, 0xDC, 0x4F, 0xAE, 0xC1
	.db	0x00, 0xFC, 0x22, 0x04, 0xFE, 0xAE, 0x5A, 0xE9
	.db	0x80, 0x49, 0x9C, 0xD3, 0x86, 0xD8, 0xE4, 0xAB
	.db	0xFA, 0xD0, 0xD9, 0xDE, 0x23, 0xC9, 0xC1, 0xA2
	.db	0xC3, 0xAC, 0x8A, 0xFE, 0xFE, 0x36, 0xF4
	.db	127
	.db	0xA4, 0x40, 0x8C, 0xF9, 0xC6, 0xDD, 0xCA, 0xED
	.db	0x33, 0x10, 0xF7, 0xC8, 0x99, 0xDE, 0x9F, 0xA2
	.db	0x20, 0x0D, 0xD9, 0xDD, 0x30, 0xD7, 0xFD, 0xE3
	.db	0x11, 0x59, 0xEB, 0xE6, 0x29, 0x16, 0xCC, 0x9C
	.db	0x60, 0x81, 0xA5, 0x9C, 0xB0, 0xFB, 0x38, 0x87
	.db	0xDD, 0xDE, 0x9D, 0xDA, 0x21, 0x8E, 0x9E, 0x52
	.db	0xAF, 0xE5, 0xFE, 0x6F, 0xC2, 0x23, 0xD9, 0x8D
	.db	0xCE, 0xE5, 0xC5, 0x90, 0xE4, 0xA4, 0xFF, 0x4E
	.db	0x94, 0x11, 0xD2, 0x69, 0xFD, 0x51, 0x71, 0xF1
	.db	0xE7, 0x8A, 0x65, 0x80, 0xBF, 0x18, 0x1B, 0xAB
	.db	0x5D, 0x8D, 0xD3, 0x83, 0x8C, 0x05, 0xD9, 0xE8
	.db	0x9B, 0x91, 0x4E, 0x08, 0x9E, 0xF0, 0xF6, 0xAB
	.db	0x8B, 0x81, 0xBF, 0x8C, 0x1E, 0x65, 0x99, 0xC1
	.db	0x0E, 0x66, 0x3B, 0x9C, 0x82, 0xAC, 0x86, 0x97
	.db	0x81, 0xD5, 0xFB, 0x24, 0x00, 0xA0, 0xF4, 0x30
	.db	0x23, 0x9C, 0xDC, 0xFF, 0xF8, 0xC6, 0x36
	.db	127
	.db	0xEC, 0xBA, 0xD9, 0x79, 0xDF, 0xBF, 0x92, 0x8E
	.db	0xC0, 0x7E, 0x0B, 0x9D, 0xDD, 0x91, 0x3B, 0x8D
	.db	0xD8, 0x59, 0x99, 0x47, 0xD3, 0xFF, 0xF1, 0x89
	.db	0x9C, 0xCE, 0x75, 0x6B, 0xDC, 0xE7, 0x02, 0x9D
	.db	0x9A, 0x9D, 0x8E, 0xD8, 0x35, 0x59, 0x9E, 0xF6
	.db	0x98, 0xA1, 0xF3, 0xBF, 0x9C, 0x4F, 0x00, 0xE0
	.db	0x24, 0xDE, 0xF5, 0x7F, 0xA1, 0xDE, 0xD9, 0x82
	.db	0xAC, 0x15, 0xDD, 0x90, 0x9B, 0x88, 0xDD, 0xFF
	.db	0xBD, 0x91, 0x6B, 0xB0, 0xD4, 0xD9, 0x96, 0xFE
	.db	0x7F, 0x2E, 0xE0, 0x4D, 0xEB, 0x76, 0x8A, 0xF9
	.db	0x80, 0x75, 0x99, 0x96, 0x1B, 0x88, 0xA2, 0x9E
	.db	0xFA, 0xBD, 0x33, 0x80, 0xA8, 0xFF, 0xFE, 0x3B
	.db	0x61, 0xD4, 0x03, 0xD9, 0x4E, 0xDC, 0xF0, 0x8F
	.db	0xCD, 0xA9, 0xC9, 0x90, 0xE1, 0xC9, 0xB0, 0x7F
	.db	0x0D, 0x80, 0x91, 0xFF, 0xFC, 0x61, 0xE9, 0x50
	.db	0x10, 0xEC, 0x99, 0x4E, 0xDB, 0xF9, 0xFD
	.db	127
	.db	0xE7, 0x9C, 0x8C, 0x7B, 0xED, 0xC2, 0x09, 0xDB
	.db	0x8C, 0x7E, 0xF8, 0xA5, 0x01, 0x6E, 0xDF, 0x1E
	.db	0xEF, 0xC9, 0xE1, 0x51, 0x0C, 0x95, 0x9D, 0x80
	.db	0x3A, 0xCA, 0xF7, 0xED, 0x86, 0x9B, 0xF2, 0xFF
	.db	0x3F, 0x8B, 0x27, 0xF9, 0xCD, 0xE1, 0xDA, 0xDF
	.db	0xB3, 0x73, 0x5C, 0xD9, 0xE7, 0xC5, 0x8D, 0x4F
	.db	0xCD, 0x30, 0x75, 0x05, 0x91, 0xDC, 0xFE, 0xFC
	.db	0x5C, 0xCD, 0xFC, 0x32, 0x11, 0xDD, 0x86, 0x78
	.db	0xB6, 0x87, 0x26, 0x86, 0x7B, 0x30, 0x31, 0xFF
	.db	0x80, 0xF1, 0xB1, 0xE0, 0x73, 0xCE, 0xB8, 0x59
	.db	0xC9, 0xE9, 0xC2, 0x73, 0x0E, 0xDC, 0xFA, 0x74
	.db	0x0B, 0x9C, 0xA7, 0x80, 0x81, 0x03, 0x9C, 0xB5
	.db	0xFF, 0x7F, 0x18, 0xE9, 0x63, 0x40, 0xE0, 0xC1
	.db	0x81, 0x7C, 0xB3, 0xE9, 0xE7, 0x64, 0x8C, 0x47
	.db	0xD9, 0xFF, 0xBA, 0xB9, 0xFF, 0x7F, 0x8C, 0xC1
	.db	0xE2, 0x50, 0x92, 0x7F, 0x0D, 0xE1, 0x6E
	.db	127
	.db	0x87, 0x57, 0x81, 0xC6, 0x89, 0xD1, 0x9E, 0xEF
	.db	0x99, 0x7C, 0x7F, 0x7F, 0x12, 0xD9, 0x7B, 0x60
	.db	0x12, 0xBD, 0xDE, 0x92, 0x8D, 0x82, 0x3B, 0xF7
	.db	0x79, 0x8F, 0x3B, 0xEE, 0xD8, 0x0D, 0x9D, 0xBF
	.db	0xFF, 0xE7, 0x6F, 0xFB, 0x1B, 0xC9, 0x73, 0x86
	.db	0x35, 0xFB, 0xA8, 0x03, 0xBA, 0x9D, 0x63, 0xD3
	.db	0xFF, 0xBB, 0xC3, 0xFF, 0x3F, 0x8D, 0xA7, 0xE0
	.db	0x72, 0x6D, 0xD9, 0x79, 0x9E, 0xFA, 0x25, 0xFA
	.db	0x89, 0xFF, 0x9E, 0x9B, 0x1E, 0xAE, 0x1B, 0xFF
	.db	0x7E, 0x34, 0x9D, 0xE9, 0x97, 0xDF, 0x6F, 0xFB
	.db	0x03, 0xAD, 0xA9, 0x9C, 0x50, 0xE8, 0xD8, 0x33
	.db	0x9D, 0x10, 0x8E, 0x51, 0xC9, 0xA0, 0xEA, 0x0B
	.db	0x3F, 0x99, 0x91, 0x7F, 0x8B, 0x15, 0x6A, 0x9D
	.db	0xE3, 0xDE, 0xEB, 0xF8, 0x76, 0xF4, 0xB4, 0x09
	.db	0x14, 0xCC, 0x9C, 0xB0, 0x80, 0xC7, 0x7F, 0xA8
	.db	0x9D, 0xDE, 0xB0, 0xFE, 0x7F, 0x2E, 0xCE
	.db	127
	.db	0x67, 0xD6, 0x7E, 0xA0, 0x9C, 0xDD, 0xEC, 0x33
	.db	0x95, 0x95, 0x88, 0xBD, 0x08, 0x1C, 0xCC, 0x99
	.db	0xCD, 0x9F, 0xEC, 0xD0, 0xFE, 0x7F, 0x2E, 0xCE
	.db	0x7D, 0x8F, 0x95, 0x99, 0xF2, 0x11, 0xD9, 0xE9
	.db	0xDA, 0xAD, 0xE9, 0xB4, 0x49, 0xC9, 0xC5, 0x8E
	.db	0xA7, 0xB0, 0x27, 0xC9, 0x7F, 0xF1, 0x9D, 0xE2
	.db	0x29, 0x99, 0xFB, 0xD4, 0x9D, 0x95, 0xB7, 0xE9
	.db	0x1C, 0x88, 0xE0, 0x9C, 0x9A, 0x4F, 0x90, 0x9F
	.db	0xA1, 0x9E, 0x90, 0x7F, 0xFC, 0x5A, 0x09, 0xDF
	.db	0x8D, 0xE1, 0xF1, 0x16, 0x69, 0xC9, 0xDD, 0xFC
	.db	0x5F, 0x8F, 0x86, 0x1A, 0x5A, 0x87, 0xC4, 0xFF
	.db	0xD9, 0xE7, 0xFE, 0x3F, 0x20, 0x2F, 0x00, 0xE0
	.db	0xC3, 0x04, 0xB9, 0x9C, 0x60, 0x70, 0xC0, 0x59
	.db	0x9D, 0x18, 0x9E, 0xDA, 0x90, 0x88, 0xE4, 0x9A
	.db	0xB5, 0xFB, 0x6B, 0x99, 0x82, 0xA1, 0x06, 0x9A
	.db	0xFE, 0x8F, 0xC6, 0x4E, 0xCF, 0xBD, 0x50
	.db	127
	.db	0x8B, 0xC6, 0xEC, 0xDD, 0x57, 0x0C, 0x10, 0x9C
	.db	0x23, 0x0C, 0x82, 0x5D, 0x2A, 0xAF, 0x7F, 0xDD
	.db	0x7F, 0x1D, 0xE6, 0x9B, 0x8A, 0xCD, 0x57, 0xF1
	.db	0x3E, 0x6B, 0x23, 0x9C, 0xDC, 0xB0, 0x82, 0x51
	.db	0x9C, 0x83, 0xDE, 0x73, 0x23, 0xC9, 0x7F, 0xF8
	.db	0xDF, 0xE1, 0x1E, 0xD9, 0x59, 0x04, 0xC9, 0xC5
	.db	0x9B, 0x7B, 0xA7, 0x99, 0x80, 0x87, 0xA9, 0xAF
	.db	0xB9, 0xD3, 0xFE, 0xF1, 0x96, 0x80, 0xAA, 0xED
	.db	0xFA, 0xE7, 0x89, 0xA9, 0x6E, 0x10, 0x1B, 0xEA
	.db	0x3D, 0x2B, 0xC9, 0xCD, 0x9C, 0x24, 0x86, 0xBF
	.db	0x81, 0x10, 0x06, 0x9D, 0xDC, 0xD0, 0xFE, 0x7F
	.db	0x3B, 0xE8, 0xC5, 0x30, 0xFB, 0x2A, 0xD9, 0xFB
	.db	0x82, 0x9C, 0x30, 0x9C, 0xFE, 0x19, 0x80, 0xCA
	.db	0xF2, 0xBC, 0x73, 0x53, 0x05, 0x8C, 0x7B, 0x24
	.db	0xDF, 0x80, 0xEF, 0xC9, 0xDE, 0xE6, 0xAA, 0xDD
	.db	0x47, 0xDC, 0xE5, 0x97, 0x00, 0x80, 0xDC
	.db	127
	.db	0xC9, 0x93, 0x9D, 0xA2, 0x53, 0x99, 0xF3, 0x86
	.db	0x8E, 0xE3, 0x00, 0x00, 0xF8, 0xE2, 0xDA, 0x99
	.db	0x63, 0xBB, 0x85, 0xF6, 0x73, 0xD7, 0xDE, 0x2B
	.db	0x91, 0x4D, 0x82, 0x56, 0x9C, 0xF3, 0x38, 0x53
	.db	0xFE, 0xF2, 0x14, 0xDE, 0xA2, 0xC6, 0x00, 0x9B
	.db	0xE2, 0xA2, 0xAD, 0xC3, 0x9C, 0x7E, 0x31, 0xE9
	.db	0x9D, 0xD0, 0x80, 0x3A, 0xD9, 0x5B, 0xC0, 0xA3
	.db	0x67, 0x9C, 0x93, 0x7F, 0xF1, 0xFA, 0xE6, 0x49
	.db	0xF9, 0xF6, 0xA9, 0xD6, 0x8F, 0x26, 0xFC, 0x9A
	.db	0x82, 0xC1, 0xDD, 0xA9, 0xA3, 0x6D, 0x4D, 0xA6
	.db	0xAD, 0x7E, 0x1F, 0x7F, 0xC4, 0xA4, 0xDC, 0x81
	.db	0x9A, 0x56, 0xA9, 0xD5, 0xF2, 0xAF, 0xC9, 0xFB
	.db	0x84, 0x99, 0xA2, 0x58, 0xFD, 0xDE, 0xFD, 0xBF
	.db	0x1B, 0xE4, 0x3C, 0xAF, 0xA9, 0x7D, 0x56, 0x9E
	.db	0x9C, 0x24, 0x9B, 0xF0, 0x65, 0xA3, 0x9D, 0xF4
	.db	0xD5, 0xA3, 0xDA, 0xFD, 0xFC, 0x75, 0xD3
	.db	127
	.db	0x30, 0x9C, 0xAF, 0xFA, 0x8E, 0xEF, 0xBB, 0x61
	.db	0xA9, 0x1A, 0x01, 0xB9, 0x83, 0xDC, 0xEC, 0xA1
	.db	0xDE, 0x9D, 0x8E, 0x9F, 0x80, 0xE3, 0xE2, 0xD4
	.db	0x7D, 0xC3, 0x1C, 0x18, 0x9D, 0x31, 0xCD, 0x05
	.db	0x95, 0x9B, 0x84, 0x8D, 0x71, 0xA2, 0x94, 0xFE
	.db	0xFF, 0x21, 0x55, 0x8E, 0xAD, 0xF5, 0x74, 0xD7
	.db	0x82, 0x6C, 0xF0, 0x60, 0x09, 0x9D, 0x96, 0xA1
	.db	0x0E, 0x9D, 0xDA, 0xFC, 0x7E, 0x3A, 0x81, 0xFA
	.db	0x7D, 0x9C, 0x56, 0x2C, 0x0D, 0x9E, 0xE0, 0x0D
	.db	0xDE, 0xB5, 0xF7, 0xF4, 0xA0, 0x7F, 0x95, 0x7F
	.db	0x26, 0x0C, 0xC9, 0xDF, 0xD0, 0x80, 0x3F, 0x4F
	.db	0x83, 0x65, 0xF6, 0x96, 0xA0, 0x23, 0x9B, 0x85
	.db	0x09, 0x59, 0xCC, 0xFE, 0x7E, 0x4A, 0xDD, 0x50
	.db	0xC9, 0xAD, 0x7B, 0xD9, 0x9F, 0xD2, 0xD5, 0x01
	.db	0x9C, 0x04, 0xBD, 0xDE, 0xDE, 0xDC, 0x91, 0xFD
	.db	0x58, 0x99, 0xEF, 0xA0, 0x79, 0x80, 0xFE
	.db	127
	.db	0x1C, 0xD9, 0xDD, 0x4F, 0x30, 0x80, 0xD2, 0x9D
	.db	0x4D, 0xDD, 0xFD, 0xA3, 0xB9, 0xFD, 0x48, 0xDD
	.db	0xFF, 0x9F, 0x69, 0x80, 0xFE, 0x22, 0x80, 0xE4
	.db	0xB0, 0x9C, 0xBD, 0x1B, 0xFC, 0x04, 0x9D, 0xDE
	.db	0x9E, 0xDA, 0xA5, 0x69, 0xDD, 0xE9, 0xFE, 0x2F
	.db	0xCA, 0x5E, 0xDF, 0x8E, 0xA9, 0x9D, 0x40, 0x9F
	.db	0x7A, 0x5F, 0xD9, 0xA2, 0xC1, 0x03, 0xB9, 0x8A
	.db	0x43, 0x00, 0x00, 0xF9, 0x64, 0x59, 0xE3, 0x8A
	.db	0xB0, 0x9D, 0xFA, 0x6D, 0x77, 0x9D, 0x55, 0x56
	.db	0xA6, 0x8F, 0x90, 0x7F, 0xE5, 0xFC, 0xFF, 0x6B
	.db	0xA9, 0x82, 0xD2, 0xDA, 0xE0, 0x77, 0x06, 0x99
	.db	0x29, 0x59, 0xC9, 0xA4, 0xE8, 0xFE, 0x00, 0x01
	.db	0x39, 0x81, 0x43, 0x95, 0x9F, 0x9E, 0x8F, 0xF2
	.db	0x63, 0xA5, 0xAE, 0xFA, 0xFE, 0x47, 0x00, 0xC7
	.db	0xE2, 0xE7, 0xDC, 0x5E, 0xD0, 0x35, 0xEE, 0xF9
	.db	0x9D, 0xCD, 0xFA, 0xFC, 0x8F, 0x00, 0x89
	.db	127
	.db	0x65, 0x99, 0xDE, 0x53, 0x10, 0xA2, 0x1E, 0xAE
	.db	0xF9, 0xA7, 0xFD, 0xF9, 0x9A, 0x81, 0x63, 0x84
	.db	0xD1, 0xB6, 0xA3, 0xFF, 0x50, 0xD9, 0xED, 0xA9
	.db	0xFE, 0x7E, 0x6F, 0xE8, 0x78, 0x3F, 0x9C, 0xD4
	.db	0xA2, 0xE8, 0x3B, 0xDD, 0xA9, 0xF9, 0xF9, 0x3D
	.db	0xE8, 0xF5, 0x6D, 0x9A, 0xE3, 0x63, 0xF3, 0x03
	.db	0x69, 0xC9, 0xE9, 0x9D, 0xC9, 0x7E, 0xF9, 0xEE
	.db	0x85, 0x43, 0xC9, 0x59, 0x87, 0xBE, 0x52, 0x69
	.db	0x59, 0x9B, 0x8B, 0xFB, 0x7E, 0x6B, 0x00, 0xB5
	.db	0x1B, 0x82, 0x61, 0xDD, 0xD6, 0x7E, 0xF2, 0x45
	.db	0x9A, 0xFD, 0x2F, 0xCF, 0xEB, 0x85, 0x13, 0x66
	.db	0xDD, 0xE7, 0xF6, 0xFB, 0x7D, 0xB2, 0xFE, 0x7C
	.db	0xC9, 0x15, 0x3F, 0x00, 0xCA, 0x0A, 0xD9, 0x9E
	.db	0x9E, 0x83, 0x0F, 0xD9, 0x60, 0x12, 0x31, 0x64
	.db	0xBD, 0xDD, 0x7E, 0xFD, 0x47, 0xE2, 0x21, 0xDD
	.db	0xDC, 0x83, 0x31, 0xCD, 0xD6, 0x88, 0x8E
	.db	122
	.db	0x1A, 0xF4, 0x2C, 0x56, 0xF9, 0xB9, 0x7E, 0xF7
	.db	0xF9, 0x88, 0x80, 0xF8, 0x0E, 0x99, 0xA9, 0xEB
	.db	0xB4, 0x8A, 0x08, 0xBF, 0xD9, 0x64, 0x06, 0x0C
	.db	0x60, 0x69, 0x61, 0x9D, 0xF5, 0x02, 0x9F, 0x7E
	.db	0xD4, 0xCE, 0x82, 0xD2, 0xEB, 0x56, 0x87, 0x18
	.db	0xDB, 0xDD, 0x00, 0xD9, 0x91, 0x02, 0x9C, 0x7C
	.db	0xAD, 0xE3, 0x7E, 0xFD, 0x55, 0x84, 0x67, 0xE6
	.db	0x98, 0x74, 0x99, 0x60, 0xD9, 0x7F, 0xED, 0x9D
	.db	0x9E, 0x95, 0x07, 0xA9, 0xF9, 0xFD, 0x1F, 0x00
	.db	0x9A, 0x02, 0x83, 0x63, 0x99, 0xEC, 0x8D, 0x70
	.db	0xED, 0xE9, 0x9A, 0xF9, 0x00, 0x7F, 0xC3, 0x7D
	.db	0x5D, 0x8C, 0xEC, 0x24, 0x3B, 0x83, 0x22, 0x99
	.db	0xE9, 0xFA, 0x2B, 0xE9, 0x9A, 0xF7, 0xFA, 0x6F
	.db	0x00, 0x84, 0x01, 0x05, 0x07, 0x45, 0x45, 0x10
	.db	0x50, 0x00, 0x00, 0xFF, 0xD6, 0x77, 0x00, 0xFF
	.db	0xFF, 0x00
	.db	0
;dsslogo.pck.h:183: unsigned int dsslogo_pck_len = 2154;
	ld	iy,#_dsslogo_pck_len
	ld	0 (iy),#0x6A
	ld	iy,#_dsslogo_pck_len
	ld	1 (iy),#0x08
;loading.pck.h:1: unsigned char loading_pck[] = {
	ld	hl,#_loading_pck
	call	__initrleblock
	.db	127
	.db	0x00, 0x6A, 0x00, 0x00, 0x7F, 0x00, 0x00, 0xBF
	.db	0x8F, 0x04, 0xFF, 0xF2, 0x14, 0x88, 0xAD, 0xFF
	.db	0x8F, 0x00, 0xAA, 0x10, 0x16, 0x71, 0xAF, 0xFF
	.db	0xA0, 0x0D, 0xE4, 0x01, 0xB9, 0x0E, 0x00, 0x3C
	.db	0xDA, 0x20, 0x22, 0xDC, 0x10, 0x1B, 0x3C, 0xDF
	.db	0x2A, 0xDE, 0x1F, 0x0C, 0x64, 0x4A, 0xDF, 0x31
	.db	0xFA, 0x78, 0xA1, 0x0E, 0x2F, 0x0F, 0x0D, 0x7E
	.db	0x81, 0x4D, 0x58, 0xD7, 0x6D, 0x9F, 0x2A, 0x27
	.db	0xFD, 0x00, 0x55, 0x9F, 0x00, 0x83, 0xD2, 0x13
	.db	0xB4, 0x02, 0x0B, 0xD0, 0xF8, 0x2A, 0x64, 0x71
	.db	0xF1, 0xD9, 0x78, 0x39, 0xDF, 0x31, 0x76, 0xF6
	.db	0x10, 0x2F, 0xF8, 0x7F, 0x5E, 0x1D, 0x57, 0x11
	.db	0x80, 0xEA, 0x4F, 0xC7, 0x11, 0x40, 0x0E, 0x8B
	.db	0xFF, 0x00, 0xCB, 0x5F, 0xB4, 0x06, 0x0A, 0xF0
	.db	0xEB, 0x55, 0x3C, 0xCA, 0x0B, 0x4B, 0xF4, 0xB3
	.db	0x7D, 0x7E, 0x78, 0x11, 0xE4, 0x29, 0xE7
	.db	127
	.db	0xBB, 0x3C, 0x0A, 0x57, 0xBD, 0x1A, 0x35, 0x10
	.db	0xD0, 0xFE, 0x2E, 0x3E, 0x7F, 0x7D, 0x6C, 0xBA
	.db	0x05, 0x7F, 0x8D, 0xAA, 0x7C, 0xF1, 0x7F, 0x53
	.db	0xB2, 0xDF, 0x31, 0x8C, 0xFF, 0x7C, 0x2F, 0xDF
	.db	0x56, 0x2A, 0x9B, 0x73, 0xE3, 0x70, 0x54, 0xC6
	.db	0xEA, 0x52, 0xE4, 0x53, 0x01, 0x1C, 0xFF, 0x08
	.db	0x47, 0xFF, 0xAB, 0x4F, 0x13, 0x7E, 0x7F, 0x14
	.db	0x0A, 0xB2, 0x79, 0xC7, 0xFF, 0xCC, 0x0D, 0xD4
	.db	0x1B, 0xA1, 0x13, 0x11, 0xA6, 0x85, 0x12, 0x40
	.db	0x97, 0xE9, 0x56, 0x2B, 0xFA, 0xB8, 0xCA, 0x9D
	.db	0x3A, 0x35, 0x01, 0x2A, 0x28, 0xF0, 0x7F, 0xDB
	.db	0xF1, 0x7F, 0xC1, 0x40, 0x7F, 0xF0, 0x46, 0xDA
	.db	0x81, 0xFA, 0x21, 0x10, 0x01, 0x14, 0xDF, 0xCA
	.db	0x2E, 0x11, 0xFF, 0xF0, 0x3C, 0xAF, 0x39, 0x11
	.db	0x1A, 0xEF, 0xE9, 0xD3, 0x4B, 0xAC, 0x5E, 0x71
	.db	0xEA, 0xDC, 0x8A, 0x73, 0x98, 0x1D, 0x4B
	.db	127
	.db	0xFF, 0x8B, 0xFA, 0x3B, 0xCB, 0x7F, 0xB4, 0x0A
	.db	0xF7, 0xF8, 0x3C, 0x01, 0x31, 0x23, 0xFF, 0xDF
	.db	0x4B, 0x54, 0xD0, 0xF0, 0xE5, 0x19, 0xE2, 0x6F
	.db	0x91, 0x31, 0x0A, 0xD4, 0xE5, 0x6A, 0xDC, 0xB3
	.db	0xB6, 0x40, 0x97, 0xFF, 0x54, 0xF4, 0xE2, 0x4F
	.db	0xFC, 0x7F, 0x7C, 0x4F, 0x53, 0xFD, 0xE4, 0x93
	.db	0x10, 0x13, 0xA8, 0xFE, 0xF4, 0x47, 0x1F, 0x98
	.db	0x73, 0xE2, 0xD5, 0xC5, 0x79, 0x9E, 0xF1, 0x01
	.db	0x73, 0x51, 0xFF, 0xE5, 0xB4, 0x2C, 0x25, 0xF0
	.db	0xFF, 0xD5, 0xF4, 0x48, 0x8F, 0x40, 0x7F, 0x6F
	.db	0x4E, 0x39, 0x81, 0xC4, 0xF0, 0xFF, 0x7C, 0x7D
	.db	0x49, 0xC7, 0xB0, 0x72, 0xC4, 0xE1, 0x7B, 0xC7
	.db	0x0F, 0x94, 0xFF, 0x79, 0xCE, 0x9B, 0xA5, 0xFA
	.db	0xFF, 0xDB, 0x12, 0x1E, 0xF0, 0x7F, 0xA8, 0x0A
	.db	0xFE, 0xCF, 0x6B, 0x0E, 0x1E, 0xE7, 0xFF, 0xDE
	.db	0xF4, 0xDD, 0x12, 0x0A, 0x8C, 0xE5, 0x0B
	.db	127
	.db	0x88, 0x60, 0x9D, 0xC4, 0xFA, 0xFF, 0x7C, 0x93
	.db	0xCF, 0xB2, 0xFF, 0xEA, 0xFA, 0xC7, 0x12, 0xFA
	.db	0x7F, 0xAA, 0x0F, 0xCE, 0x9C, 0xDD, 0x04, 0x0C
	.db	0x47, 0xFF, 0xB7, 0x71, 0x9F, 0x56, 0x8F, 0x3D
	.db	0x49, 0x10, 0x9D, 0xDF, 0x7F, 0x92, 0xB6, 0x56
	.db	0xED, 0x56, 0xFF, 0x5C, 0x67, 0x45, 0xCF, 0x59
	.db	0x87, 0x7F, 0x58, 0x23, 0xA0, 0xF3, 0x31, 0x47
	.db	0x20, 0xFF, 0xC5, 0xB5, 0x2E, 0x5E, 0x56, 0x5C
	.db	0x0A, 0xA9, 0xFD, 0xE8, 0x84, 0x50, 0xFF, 0xBC
	.db	0x71, 0x98, 0xA9, 0xD0, 0xFF, 0x74, 0x6B, 0xFD
	.db	0x12, 0xF0, 0x7F, 0xD2, 0xCD, 0xBD, 0x22, 0xDB
	.db	0xBF, 0xFF, 0x93, 0x34, 0x1E, 0xA1, 0x0E, 0xB1
	.db	0xB2, 0xDD, 0xEE, 0xF0, 0x04, 0xF1, 0x74, 0x8F
	.db	0xFF, 0x58, 0xB7, 0xEA, 0xFF, 0x5C, 0xA5, 0xCA
	.db	0x5E, 0xF5, 0x7F, 0x73, 0x90, 0xBD, 0xD2, 0xF0
	.db	0x47, 0xFF, 0xBD, 0xF1, 0x23, 0x20, 0x8C
	.db	127
	.db	0x3D, 0x56, 0xF0, 0x8B, 0xE1, 0x09, 0xBB, 0xEA
	.db	0xF0, 0xCB, 0x8D, 0x83, 0xF1, 0xFF, 0x1D, 0x69
	.db	0xCA, 0xCB, 0x7F, 0x9C, 0xB0, 0xF0, 0xF7, 0x7F
	.db	0x4B, 0x10, 0xF0, 0xAD, 0x8E, 0x3B, 0x3C, 0xF1
	.db	0x09, 0x25, 0x89, 0x6B, 0x80, 0xC6, 0xFF, 0x5D
	.db	0x5C, 0x02, 0x63, 0xCB, 0xFF, 0x9C, 0x84, 0x6B
	.db	0xD0, 0x7F, 0xCB, 0x4B, 0xC6, 0xFF, 0x3E, 0xA9
	.db	0xA3, 0xF5, 0xD4, 0x56, 0xF2, 0x89, 0xF8, 0x23
	.db	0x10, 0xAE, 0xD2, 0xFF, 0x3D, 0x71, 0x38, 0xFA
	.db	0xFF, 0xBE, 0xB3, 0x93, 0xC3, 0xF4, 0x7F, 0xCA
	.db	0xDA, 0x9D, 0xA3, 0xFF, 0xE5, 0xAF, 0xFE, 0x4E
	.db	0x0F, 0x19, 0xF6, 0xFD, 0xDA, 0xFD, 0xE7, 0x7A
	.db	0x7D, 0x40, 0x7F, 0xB2, 0xFF, 0xE3, 0xBD, 0x6E
	.db	0x1E, 0x7F, 0x08, 0xA0, 0xFF, 0xFC, 0x2F, 0x7F
	.db	0x75, 0xFA, 0xC3, 0x7A, 0x78, 0x75, 0xBD, 0x05
	.db	0x7F, 0xDE, 0xFD, 0xFF, 0xEB, 0xF0, 0x6E
	.db	127
	.db	0x5F, 0x7F, 0x74, 0xFF, 0x79, 0x46, 0xB2, 0x3E
	.db	0xF4, 0x7F, 0x4A, 0xFE, 0x6B, 0x20, 0x51, 0xF1
	.db	0xFF, 0xF3, 0x6C, 0x7F, 0xFF, 0xBA, 0x6B, 0x71
	.db	0xF2, 0x7F, 0xC5, 0x1F, 0xFF, 0x1F, 0x85, 0x7F
	.db	0xF4, 0x5A, 0x88, 0x37, 0xA1, 0xB7, 0xA7, 0xFA
	.db	0x7F, 0xC9, 0xCF, 0xB9, 0xFF, 0x2E, 0xFC, 0xBF
	.db	0xC7, 0x7F, 0xA3, 0x40, 0xFB, 0x3A, 0x6A, 0xAD
	.db	0x00, 0xA2, 0xFF, 0x3F, 0x19, 0x10, 0xFD, 0x9E
	.db	0x1E, 0x2F, 0x92, 0xFF, 0xF8, 0x53, 0x80, 0xAF
	.db	0x60, 0x7F, 0x8B, 0xD7, 0xD7, 0x8B, 0xBB, 0x9F
	.db	0xFF, 0x81, 0xF5, 0xFF, 0x1F, 0x26, 0x49, 0x63
	.db	0xE8, 0x82, 0x50, 0xFF, 0xBF, 0x1B, 0x72, 0x89
	.db	0x8E, 0x59, 0xFF, 0xF7, 0x72, 0xAF, 0x7F, 0xF4
	.db	0xAF, 0xFF, 0xC4, 0x7B, 0xFA, 0xC2, 0xA5, 0xC5
	.db	0xEB, 0xF0, 0x7F, 0xE6, 0x4B, 0x10, 0xFF, 0xBE
	.db	0xF2, 0x2B, 0xFD, 0x7F, 0xE9, 0xE2, 0x59
	.db	127
	.db	0xFF, 0xBE, 0xD9, 0x8F, 0xEF, 0xAD, 0xBB, 0xAF
	.db	0x80, 0x24, 0x05, 0xFF, 0x7C, 0x72, 0xFF, 0xED
	.db	0x95, 0x4A, 0x40, 0xDF, 0x05, 0x7F, 0x59, 0x96
	.db	0x4E, 0x00, 0x23, 0xFF, 0xE4, 0x8F, 0x8E, 0x4C
	.db	0x77, 0x53, 0xF4, 0xFE, 0x5E, 0x00, 0x28, 0xFC
	.db	0xFF, 0xF8, 0xA3, 0x96, 0x12, 0xF6, 0xFF, 0xEB
	.db	0x55, 0xC7, 0x83, 0x72, 0xDF, 0xC7, 0xFF, 0x76
	.db	0x11, 0x00, 0x77, 0xCF, 0x11, 0xFF, 0xF0, 0x3D
	.db	0xCF, 0x0E, 0x75, 0xB3, 0xB7, 0x1F, 0x7F, 0x9F
	.db	0x5A, 0x3E, 0x7F, 0xBB, 0xDC, 0xD4, 0xFF, 0xBB
	.db	0x6B, 0x3F, 0xF6, 0x7F, 0xB9, 0xB9, 0xF0, 0xA7
	.db	0xC8, 0x08, 0xFF, 0xF8, 0xA3, 0xB8, 0xBF, 0x8E
	.db	0xF6, 0x7A, 0xAF, 0x7F, 0x25, 0x60, 0xFF, 0xE1
	.db	0x8E, 0xA8, 0xBB, 0x63, 0xEF, 0x7F, 0x83, 0xB9
	.db	0x91, 0x3D, 0xF4, 0x9B, 0xCB, 0xF2, 0x7F, 0xE4
	.db	0x8F, 0xF0, 0x3C, 0xA4, 0x76, 0xEF, 0x0E
	.db	127
	.db	0x7E, 0xD3, 0x62, 0x9F, 0xFF, 0x79, 0x12, 0x04
	.db	0xFF, 0xED, 0x40, 0xCC, 0xFF, 0x73, 0xFF, 0xEB
	.db	0x5A, 0xE9, 0xFF, 0x2D, 0xC7, 0xF0, 0xB3, 0xF1
	.db	0x8E, 0xDD, 0x55, 0x40, 0xC7, 0xD3, 0xDA, 0x00
	.db	0xA4, 0xDF, 0xC6, 0x75, 0x7F, 0xEB, 0x70, 0x89
	.db	0xA0, 0xFF, 0x78, 0xA5, 0x90, 0x51, 0xF2, 0xFF
	.db	0xD7, 0x8F, 0xF8, 0xE7, 0xF8, 0x9C, 0xFF, 0x7B
	.db	0x31, 0x0A, 0x80, 0xD7, 0x32, 0xA6, 0x0D, 0x6B
	.db	0xB9, 0x10, 0x00, 0xB6, 0xA2, 0xE5, 0xFF, 0xD7
	.db	0x28, 0xAA, 0xFF, 0xF7, 0xEE, 0x83, 0x7A, 0x7F
	.db	0xE6, 0x8E, 0xE3, 0xDA, 0xC2, 0xFF, 0x3E, 0x2D
	.db	0x2F, 0xF1, 0x0F, 0x74, 0x0A, 0x6B, 0x1F, 0x9E
	.db	0xF3, 0xBB, 0x38, 0x47, 0x10, 0xFF, 0xBE, 0x0C
	.db	0x4B, 0xCD, 0x15, 0xFF, 0xEF, 0x09, 0xC3, 0x20
	.db	0x7F, 0xA9, 0xDB, 0x75, 0x57, 0xFF, 0xFF, 0xC9
	.db	0x5D, 0xA9, 0xD0, 0xFE, 0xF3, 0x79, 0xF1
	.db	127
	.db	0x72, 0x53, 0x93, 0xA7, 0x7F, 0xA7, 0x28, 0x69
	.db	0x0A, 0xFF, 0x77, 0x96, 0xBA, 0x2B, 0x0D, 0xC4
	.db	0xED, 0xFD, 0xDA, 0x1E, 0x71, 0xFF, 0xF1, 0xEA
	.db	0x49, 0xFA, 0x8C, 0x5C, 0xD1, 0xA0, 0xAB, 0xE5
	.db	0xEA, 0x4E, 0x92, 0xFF, 0xE7, 0x28, 0xBC, 0x0C
	.db	0x53, 0xFF, 0x96, 0xC1, 0x79, 0x75, 0x7F, 0x4E
	.db	0xE1, 0x77, 0xD4, 0xFF, 0xFC, 0x7B, 0x56, 0x80
	.db	0x2E, 0x17, 0xF5, 0xB9, 0x85, 0xE7, 0xEA, 0x7E
	.db	0xFE, 0x7F, 0x0C, 0x1F, 0x94, 0x77, 0xBF, 0xC6
	.db	0x24, 0x6F, 0x0A, 0x1F, 0xE9, 0x3E, 0x4F, 0xC7
	.db	0x1E, 0x3E, 0x9A, 0xB5, 0xFF, 0xF1, 0xEB, 0xB2
	.db	0x13, 0xB1, 0x4B, 0xA2, 0x84, 0xCD, 0xB0, 0x0F
	.db	0xCF, 0xEA, 0x7F, 0xEA, 0xF3, 0xEB, 0x28, 0x61
	.db	0x94, 0x05, 0xFF, 0xBC, 0x1B, 0x3C, 0xFF, 0x3D
	.db	0x6B, 0xC5, 0x0E, 0xF4, 0x82, 0x72, 0xBF, 0xF0
	.db	0x8B, 0x2F, 0x89, 0x00, 0x61, 0x08, 0x8D
	.db	127
	.db	0x2A, 0x08, 0xEE, 0xEB, 0x3D, 0x23, 0xA9, 0x8D
	.db	0x9E, 0x92, 0x71, 0x6B, 0x4A, 0x28, 0xA1, 0x94
	.db	0x7D, 0x3C, 0x7F, 0xA5, 0xF5, 0x7B, 0x75, 0xE6
	.db	0xF5, 0x31, 0x3B, 0x02, 0xCF, 0x9C, 0xEB, 0xD9
	.db	0xC3, 0xEC, 0x7A, 0xDF, 0xF2, 0x0F, 0x57, 0xF4
	.db	0xF1, 0x9C, 0xBA, 0xF9, 0x38, 0xA0, 0x7F, 0x91
	.db	0x87, 0xDD, 0x00, 0x77, 0xCB, 0x94, 0xFF, 0xBC
	.db	0x91, 0xEA, 0xC7, 0x7F, 0x5C, 0xC6, 0xD7, 0x61
	.db	0x1B, 0xFF, 0xD3, 0x0F, 0x7F, 0xD3, 0xC3, 0x5A
	.db	0xF0, 0x00, 0x77, 0x20, 0x94, 0xC7, 0x8E, 0x3C
	.db	0xB7, 0x01, 0x92, 0xE1, 0x97, 0xFF, 0x92, 0xE1
	.db	0x38, 0x47, 0xF4, 0x8B, 0x94, 0xB0, 0x75, 0x16
	.db	0x9D, 0xD9, 0xF0, 0x6B, 0xA7, 0x2F, 0x2F, 0x0E
	.db	0x07, 0xA1, 0x84, 0xFA, 0x6F, 0xEB, 0xB7, 0x37
	.db	0x9B, 0xD1, 0x87, 0x1C, 0x65, 0xFF, 0xDE, 0xEA
	.db	0x98, 0xDE, 0xF8, 0xD1, 0x12, 0xB0, 0xE3
	.db	127
	.db	0xFF, 0xBD, 0x23, 0x01, 0xFF, 0xE0, 0xE3, 0x3D
	.db	0x55, 0xCF, 0xF2, 0xFC, 0x31, 0xBA, 0xC7, 0x0F
	.db	0x63, 0xA6, 0xC7, 0x1E, 0xC6, 0xFF, 0xDB, 0xB7
	.db	0xD5, 0x45, 0xAF, 0xBE, 0x79, 0x23, 0x04, 0xD9
	.db	0xC2, 0x7F, 0x9E, 0xB3, 0x5E, 0x1D, 0x7F, 0x74
	.db	0xE6, 0xD1, 0x15, 0xDF, 0xA1, 0x2A, 0x21, 0x9F
	.db	0xF0, 0x17, 0x50, 0x7F, 0xA2, 0x6F, 0x97, 0x78
	.db	0x25, 0x02, 0xDF, 0xCA, 0xB7, 0x41, 0x6B, 0x9A
	.db	0x10, 0xA2, 0x59, 0x8F, 0xB1, 0x25, 0x06, 0xBE
	.db	0x39, 0x98, 0x01, 0x5D, 0x31, 0xFC, 0xC7, 0x31
	.db	0x04, 0x22, 0x67, 0x01, 0x11, 0x00, 0x87, 0x26
	.db	0x97, 0x0B, 0x95, 0x00, 0xA1, 0x7E, 0xB7, 0x1C
	.db	0x07, 0x5E, 0x34, 0xFA, 0x1A, 0x10, 0xEB, 0x1A
	.db	0x14, 0xE3, 0xF0, 0x36, 0xE7, 0x54, 0x55, 0xDB
	.db	0x00, 0xFF, 0x97, 0x5E, 0x86, 0x1F, 0xF2, 0x14
	.db	0x17, 0xA7, 0xEB, 0xAA, 0x9F, 0x7E, 0x07
	.db	127
	.db	0xAF, 0x9F, 0x77, 0xD5, 0xBC, 0xFF, 0xCC, 0x67
	.db	0xDA, 0x20, 0xFF, 0x3C, 0x07, 0x01, 0xDF, 0x2A
	.db	0x9B, 0x1F, 0x0C, 0xCD, 0x4A, 0xB1, 0xDA, 0xA1
	.db	0xF0, 0x0E, 0xFE, 0x86, 0xBD, 0x00, 0x1E, 0x4D
	.db	0x8D, 0xEB, 0x2A, 0xE4, 0xFD, 0x79, 0x00, 0x55
	.db	0xF8, 0x00, 0x47, 0xC2, 0x87, 0xEB, 0xE3, 0xD0
	.db	0x2A, 0xE1, 0xFF, 0xA0, 0x3F, 0xB4, 0x69, 0xF6
	.db	0xDB, 0xEE, 0x3F, 0x7F, 0x07, 0x91, 0xF8, 0xC7
	.db	0x80, 0xAB, 0x4F, 0x11, 0x1E, 0x40, 0x55, 0x7E
	.db	0x00, 0x3D, 0x5F, 0xBF, 0x06, 0xEA, 0xA7, 0x2F
	.db	0x3C, 0xA4, 0x0B, 0xF4, 0x96, 0xB3, 0xFF, 0xB3
	.db	0xBF, 0x11, 0x0C, 0x29, 0x97, 0xE7, 0x67, 0x0A
	.db	0x57, 0x97, 0x1A, 0xA6, 0x10, 0xC7, 0xDD, 0x1C
	.db	0x4A, 0xF9, 0x7F, 0xF7, 0x6C, 0x7F, 0xDC, 0xAA
	.db	0x6B, 0xF1, 0x7F, 0xE2, 0x9E, 0xB2, 0xFC, 0x49
	.db	0x63, 0xFF, 0xE1, 0x8F, 0xA2, 0x09, 0xD8
	.db	127
	.db	0x73, 0xEF, 0x70, 0x54, 0xC6, 0xEA, 0x52, 0xE4
	.db	0x53, 0x01, 0x38, 0x00, 0x96, 0xED, 0x9D, 0x05
	.db	0x21, 0x37, 0x4F, 0x13, 0x7F, 0xE1, 0x47, 0x0A
	.db	0xB2, 0x9C, 0xFF, 0x7C, 0xCD, 0x0F, 0x1B, 0x4A
	.db	0xA1, 0x13, 0x11, 0x85, 0x61, 0x40, 0x97, 0x2E
	.db	0x92, 0x56, 0xFA, 0xB8, 0xBC, 0xA3, 0x9D, 0xA3
	.db	0x01, 0x2A, 0x28, 0x51, 0xF0, 0xFF, 0xF0, 0x78
	.db	0x3B, 0xF8, 0x7F, 0x68, 0x15, 0xFA, 0x21, 0x10
	.db	0x23, 0x01, 0x14, 0xE3, 0x51, 0xD0, 0xFF, 0xF2
	.db	0xCA, 0xA2, 0xF2, 0x39, 0x1A, 0x8F, 0xEF, 0x4A
	.db	0xEF, 0x5A, 0xAC, 0xF3, 0xEE, 0x6A, 0x8A, 0x39
	.db	0x8E, 0x98, 0xBC, 0x7F, 0x5E, 0xFA, 0x3B, 0x5D
	.db	0x7F, 0xA7, 0x0A, 0xF7, 0xC1, 0x01, 0x31, 0xE0
	.db	0x4F, 0x8F, 0xFF, 0x64, 0x04, 0xE4, 0xF9, 0x25
	.db	0x4F, 0xC4, 0xCF, 0x53, 0x72, 0x40, 0xD4, 0x3C
	.db	0x1E, 0x05, 0x7F, 0x24, 0x00, 0x0D, 0xB3
	.db	127
	.db	0x77, 0xFF, 0x2E, 0x28, 0xF4, 0xE2, 0x9E, 0xFC
	.db	0x7F, 0xF8, 0x4F, 0xFD, 0xA7, 0xE4, 0x24, 0x10
	.db	0xFF, 0x7C, 0x68, 0x1F, 0x98, 0xEE, 0xE2, 0x7A
	.db	0x5B, 0xA0, 0xC5, 0x9B, 0x01, 0x73, 0xCA, 0xFF
	.db	0x3C, 0xA5, 0xB4, 0x84, 0xF1, 0xFF, 0x7A, 0xB1
	.db	0xF4, 0x48, 0x40, 0x7F, 0xEB, 0xF4, 0x1A, 0xA0
	.db	0xA7, 0xE5, 0x24, 0xF0, 0xFF, 0xFC, 0x6F, 0xAF
	.db	0x56, 0x34, 0x4F, 0xC4, 0xB9, 0x37, 0x02, 0x18
	.db	0x0F, 0xCB, 0x7F, 0xD2, 0x98, 0x71, 0xF6, 0xFF
	.db	0x2E, 0xD8, 0x12, 0xF0, 0xF5, 0x7F, 0x46, 0x0A
	.db	0xFE, 0x3C, 0x10, 0x31, 0x91, 0xF1, 0xFF, 0xF1
	.db	0x2D, 0x01, 0xF4, 0xD3, 0x31, 0x1E, 0xFA, 0x0B
	.db	0x48, 0x60, 0x9D, 0xCF, 0x0F, 0x09, 0xFF, 0x73
	.db	0xE2, 0x36, 0xFF, 0x5D, 0x58, 0xFA, 0x12, 0xFA
	.db	0xF5, 0x7F, 0xEE, 0x72, 0xE7, 0x7B, 0x8F, 0xFF
	.db	0x8F, 0x71, 0xCF, 0x56, 0xC6, 0x98, 0x7A
	.db	127
	.db	0x6C, 0x10, 0x04, 0xFF, 0x7C, 0x92, 0xB6, 0xA8
	.db	0x40, 0xFF, 0xF5, 0x3C, 0x00, 0xCF, 0x59, 0x3A
	.db	0x7F, 0xC7, 0x23, 0xA0, 0x31, 0x9A, 0x20, 0xFF
	.db	0x3E, 0x29, 0xB5, 0x72, 0xF2, 0x56, 0xD5, 0x00
	.db	0x6F, 0xBB, 0x2D, 0xE8, 0x23, 0x50, 0x7F, 0xE4
	.db	0x8C, 0x98, 0x7A, 0xD0, 0x7F, 0x58, 0x2C, 0x12
	.db	0xF0, 0xF4, 0x7F, 0xAF, 0xCD, 0x48, 0xDB, 0xAF
	.db	0xFF, 0xE4, 0xCE, 0x34, 0x9B, 0x71, 0xE2, 0x0E
	.db	0xB2, 0x3B, 0xBE, 0xEE, 0x25, 0xB5, 0xB9, 0xFF
	.db	0x77, 0x8E, 0xB7, 0xE5, 0xFF, 0xCA, 0xCA, 0x55
	.db	0xF5, 0x7F, 0xE7, 0x90, 0x3B, 0xD2, 0xDF, 0x04
	.db	0xFF, 0x7B, 0xD2, 0xF1, 0x77, 0xCD, 0x94, 0xEF
	.db	0x6F, 0x64, 0x4E, 0x02, 0x09, 0x77, 0xEA, 0xE1
	.db	0xCF, 0xF8, 0x4C, 0xFF, 0x72, 0x8E, 0xEF, 0x39
	.db	0x6F, 0xE5, 0x7F, 0x04, 0xCE, 0xAE, 0xBB, 0xFF
	.db	0xF2, 0xA9, 0xCF, 0x8E, 0xE0, 0x78, 0xF1
	.db	127
	.db	0x09, 0x4A, 0x89, 0xD7, 0x80, 0x8F, 0x7F, 0xAB
	.db	0x02, 0x63, 0x99, 0xFF, 0x73, 0x8D, 0x84, 0xC6
	.db	0xC9, 0x79, 0x1B, 0xF1, 0x4B, 0x8F, 0xFF, 0xAA
	.db	0xA3, 0x7D, 0x75, 0x56, 0xF2, 0xFE, 0x4E, 0x51
	.db	0xAE, 0xE7, 0xFF, 0x2E, 0xB8, 0x38, 0xFA, 0xDF
	.db	0xFF, 0x59, 0x93, 0xE1, 0xF4, 0x7F, 0xE5, 0xDA
	.db	0x4E, 0xD1, 0xFF, 0xF2, 0xD7, 0xFE, 0xA7, 0x0F
	.db	0x0A, 0xF6, 0x89, 0xED, 0xFD, 0xE7, 0x3D, 0x57
	.db	0x90, 0x4F, 0x06, 0x7F, 0x8E, 0xFF, 0x5D, 0x2D
	.db	0xBD, 0xC3, 0x7F, 0xC1, 0xA0, 0xFF, 0x1F, 0x85
	.db	0x7F, 0xEE, 0xFA, 0xAF, 0xC3, 0x4F, 0x75, 0x1F
	.db	0x7F, 0x81, 0xFD, 0x7F, 0xEF, 0xF0, 0x6E, 0x1F
	.db	0x7F, 0x72, 0x10, 0xF0, 0xFD, 0x1F, 0xF4, 0x7F
	.db	0x25, 0xFE, 0x35, 0x20, 0xA9, 0xF1, 0xFF, 0x79
	.db	0x92, 0xFD, 0xFF, 0xEF, 0x71, 0xAF, 0xF2, 0x7F
	.db	0x14, 0x1F, 0xFF, 0x7E, 0x17, 0x7F, 0xD0
	.db	127
	.db	0x0D, 0xBE, 0x97, 0xF6, 0xB7, 0x47, 0xFA, 0xFF
	.db	0xC9, 0xCF, 0xB9, 0xFF, 0x1F, 0x07, 0xBF, 0x2F
	.db	0x7F, 0xA3, 0x40, 0xFB, 0x3A, 0x6A, 0xAD, 0x00
	.db	0xA2, 0xFF, 0x3F, 0x1B, 0x1E, 0x8A, 0xFE, 0x6B
	.db	0x2F, 0xCA, 0xFF, 0x5F, 0x0A, 0x80, 0x75, 0x60
	.db	0x7F, 0xF1, 0x7A, 0xD7, 0xF7, 0x8B, 0x73, 0xFF
	.db	0xF0, 0x23, 0xF5, 0xFF, 0xE4, 0xCC, 0x49, 0xE8
	.db	0x70, 0x57, 0x50, 0xFF, 0xE3, 0x70, 0x72, 0xF1
	.db	0x9F, 0xFF, 0x89, 0xAF, 0x7F, 0xCA, 0xF4, 0xFF
	.db	0xBF, 0x13, 0x0F, 0x99, 0x97, 0x70, 0x77, 0x0A
	.db	0x76, 0xFF, 0x5F, 0x0A, 0x10, 0xFF, 0x3E, 0x0C
	.db	0xF2, 0x47, 0xFD, 0x7F, 0xD2, 0xFA, 0xAF, 0xFF
	.db	0xC1, 0x9E, 0x8F, 0xD4, 0x04, 0xF6, 0xE1, 0x80
	.db	0x5E, 0x16, 0xFF, 0xF2, 0x47, 0x9D, 0x7D, 0x7F
	.db	0x52, 0x95, 0xB7, 0x40, 0x05, 0x7F, 0xD6, 0x96
	.db	0x53, 0x00, 0x88, 0xFF, 0xF9, 0x23, 0x8E
	.db	127
	.db	0xD1, 0x04, 0x7F, 0xD5, 0xFE, 0x27, 0x00, 0x8A
	.db	0xFC, 0xFF, 0x5E, 0x28, 0x96, 0xC4, 0xF6, 0xA7
	.db	0x79, 0x65, 0x7F, 0xB6, 0x36, 0xF0, 0xC7, 0xFF
	.db	0x89, 0x11, 0x00, 0x98, 0xD0, 0xD4, 0xFF, 0x7B
	.db	0x3D, 0xCF, 0x0E, 0x75, 0xB3, 0xB7, 0x1F, 0x7F
	.db	0x9F, 0x5A, 0x31, 0xFF, 0xEB, 0xDC, 0xBD, 0x4B
	.db	0xFF, 0xB6, 0x3F, 0xA5, 0xF6, 0xEF, 0x75, 0xFF
	.db	0xA9, 0xB0, 0x73, 0x47, 0x0F, 0xFF, 0xC9, 0xB8
	.db	0x1D, 0xFF, 0x8E, 0xB3, 0xAF, 0x7F, 0xD1, 0x60
	.db	0x7F, 0xF0, 0xC7, 0xA8, 0x4F, 0x05, 0x7F, 0x6E
	.db	0x83, 0xE5, 0xDF, 0x9B, 0xCD, 0xBE, 0xF2, 0x7F
	.db	0x47, 0x00, 0xF0, 0xBC, 0xBE, 0x0E, 0x7E, 0x7E
	.db	0x9C, 0x62, 0xFB, 0xFF, 0xC8, 0x06, 0x97, 0xFF
	.db	0x6E, 0x40, 0x5E, 0xAF, 0xFF, 0xE1, 0x5A, 0xE9
	.db	0xFF, 0x2D, 0xC7, 0xF0, 0xB7, 0xA4, 0x79, 0xC6
	.db	0xF7, 0x2B, 0x40, 0xC7, 0xA7, 0xDA, 0x00
	.db	127
	.db	0x48, 0xDF, 0xC6, 0xEA, 0xFF, 0x3D, 0x71, 0x70
	.db	0xA0, 0xFF, 0x4F, 0x16, 0x10, 0xBA, 0xF2, 0x7F
	.db	0xFF, 0x8F, 0x1C, 0xF8, 0xF3, 0x8F, 0xFF, 0x66
	.db	0x0A, 0x80, 0x3A, 0xF4, 0x32, 0x0D, 0xD7, 0x56
	.db	0x10, 0x00, 0x36, 0xA2, 0xDF, 0x7F, 0xAF, 0x28
	.db	0x4F, 0x04, 0x7F, 0x7E, 0x83, 0xE3, 0x7F, 0xAE
	.db	0x8E, 0x6E, 0xDA, 0x3C, 0x23, 0xFF, 0xE2, 0xDF
	.db	0x2F, 0x0F, 0x17, 0x0A, 0x6B, 0x49, 0x1F, 0xF3
	.db	0xEB, 0x38, 0xB4, 0x10, 0xFF, 0xBB, 0xAF, 0x06
	.db	0xE8, 0x99, 0xFF, 0x78, 0x75, 0x09, 0x20, 0x7F
	.db	0xD4, 0xDB, 0xBA, 0xAB, 0xFF, 0xFF, 0xE4, 0xD4
	.db	0x5D, 0xD0, 0xFE, 0xF9, 0xBC, 0xF1, 0x72, 0xA9
	.db	0x93, 0xD2, 0xFF, 0x3D, 0x3B, 0x28, 0xA7, 0xFF
	.db	0x82, 0xBA, 0x58, 0xAF, 0x0D, 0xC4, 0xBE, 0x72
	.db	0x23, 0xDA, 0xB8, 0xFF, 0xF8, 0xF5, 0x49, 0xFA
	.db	0x8C, 0x2E, 0x68, 0xA0, 0xAB, 0xF2, 0xA7
	.db	127
	.db	0xEA, 0x77, 0xF0, 0x28, 0x9F, 0x0C, 0x16, 0xFF
	.db	0xEF, 0xC1, 0x9C, 0xF5, 0x7F, 0x4E, 0xE1, 0x77
	.db	0xD4, 0xFF, 0xFC, 0x71, 0xC1, 0xB2, 0x80, 0xE1
	.db	0xF5, 0x7B, 0x85, 0x9E, 0x77, 0xEA, 0xE9, 0xFF
	.db	0x2E, 0x7A, 0x28, 0x10, 0x97, 0xFF, 0x94, 0x00
	.db	0x6F, 0x9D, 0x0A, 0x2F, 0x3E, 0x64, 0x15, 0xC7
	.db	0x77, 0x9A, 0xEB, 0xFF, 0x5F, 0x1E, 0xB2, 0xB1
	.db	0xB1, 0x34, 0xA2, 0xB8, 0x71, 0x4D, 0xB9, 0x9E
	.db	0x51, 0xC6, 0xCF, 0xEA, 0x79, 0xF5, 0x28, 0x61
	.db	0xCC, 0xFF, 0xBC, 0x3B, 0x3C, 0xFF, 0x3D, 0x6B
	.db	0xC5, 0x0E, 0xF4, 0x82, 0x72, 0xBF, 0xF0, 0x8B
	.db	0x2F, 0x89, 0x00, 0x61, 0x08, 0x8D, 0x2A, 0x08
	.db	0x7C, 0x50, 0x23, 0x54, 0x8D, 0xCF, 0x92, 0x38
	.db	0xB4, 0x4A, 0x28, 0xA1, 0x00, 0x97, 0xFF, 0x96
	.db	0xF5, 0x58, 0xEF, 0x75, 0xF5, 0x98, 0xC6, 0x3B
	.db	0x02, 0xCF, 0x73, 0xD9, 0xAF, 0x0A, 0x40
	.db	127
	.db	0x80, 0x5A, 0xED, 0x00, 0xF4, 0xF1, 0x5E, 0x73
	.db	0xBA, 0xE5, 0x8E, 0x18, 0x04, 0x95, 0xC1, 0x5D
	.db	0xDD, 0x00, 0xCB, 0xE5, 0xFF, 0x2F, 0x24, 0xEA
	.db	0x71, 0x7F, 0xD7, 0xC6, 0x35, 0x61, 0xC6, 0xFF
	.db	0xF4, 0x0F, 0xF4, 0x7F, 0xD7, 0x3C, 0x0A, 0x0F
	.db	0x93, 0x20, 0x94, 0xBE, 0x39, 0x8E, 0xE5, 0x01
	.db	0x92, 0xBF, 0x0C, 0xFF, 0xBC, 0x91, 0xE1, 0xC5
	.db	0xBE, 0x37, 0xC7, 0xBE, 0x2C, 0xFA, 0x16, 0xEF
	.db	0xD9, 0x83, 0xA7, 0x59, 0x78, 0x4F, 0x0E, 0x4B
	.db	0xD4, 0x3F, 0x84, 0xDE, 0xEB, 0xFB, 0x79, 0x37
	.db	0xB1, 0xD1, 0x87, 0xC7, 0x7F, 0xE0, 0xA5, 0xEA
	.db	0xDE, 0xF8, 0xD1, 0x12, 0xB0, 0xE3, 0xFF, 0xBD
	.db	0x23, 0x01, 0xFF, 0xE0, 0xE3, 0x3D, 0x55, 0xCF
	.db	0xF2, 0xFC, 0x31, 0xBA, 0xC7, 0x0F, 0x5E, 0x2F
	.db	0x36, 0xF9, 0xFF, 0xE5, 0xD5, 0x6E, 0x8A, 0xAF
	.db	0xBE, 0xF2, 0x47, 0x04, 0xD9, 0x82, 0x0F
	.db	127
	.db	0xB3, 0x7A, 0x79, 0x1D, 0x7F, 0xD3, 0xE6, 0x44
	.db	0x15, 0xDF, 0xA1, 0xAA, 0x21, 0xF0, 0x7C, 0x5E
	.db	0x50, 0x7F, 0x89, 0x6F, 0x97, 0xE0, 0x02, 0xDF
	.db	0x96, 0xCA, 0xDE, 0x41, 0x6B, 0x69, 0x10, 0xA2
	.db	0x66, 0xB1, 0x3C, 0x94, 0x06, 0xBE, 0xE6, 0x01
	.db	0x61, 0x5D, 0x31, 0xFC, 0x41, 0x89, 0x1A, 0xF1
	.db	0xE9, 0x11, 0x11, 0x00, 0xE1, 0x26, 0xE5, 0x0B
	.db	0xE5, 0x00, 0x5F, 0xA1, 0xAD, 0x1C, 0x07, 0xD7
	.db	0x34, 0xBE, 0x1A, 0xBA, 0x10, 0x1A, 0xF8, 0x14
	.db	0xFC, 0x36, 0x39, 0x54, 0xF6, 0x55, 0xFF, 0x00
	.db	0xE7, 0xD7, 0x86, 0xA7, 0xF2, 0x14, 0xC4, 0xAD
	.db	0xEC, 0xA4, 0x73, 0xAA, 0x9F, 0xC1, 0xDC, 0xD3
	.db	0xA0, 0xD5, 0x9C, 0xDD, 0xAF, 0xFF, 0xD1, 0xDA
	.db	0x20, 0xFF, 0xDF, 0x01, 0x01, 0xDF, 0x2A, 0xE6
	.db	0x1F, 0xF3, 0x0C, 0x7A, 0x4A, 0xB1, 0xBC, 0xA1
	.db	0x0E, 0x3E, 0x86, 0x7C, 0xFF, 0x7E, 0x0F
	.db	127
	.db	0x4D, 0x8D, 0xF5, 0xF2, 0x2A, 0x3C, 0xFD, 0x00
	.db	0x55, 0xFC, 0x00, 0x23, 0xC2, 0xC1, 0x02, 0x0B
	.db	0x3E, 0xD0, 0x2A, 0x17, 0xFF, 0x8D, 0xF8, 0xBF
	.db	0x04, 0xB4, 0xA7, 0xF6, 0xDB, 0xF8, 0xFC, 0x7F
	.db	0x0F, 0x1D, 0x57, 0x08, 0x80, 0xF5, 0x63, 0x4F
	.db	0x11, 0x40, 0x55, 0xCF, 0x00, 0xC5, 0xF1, 0xEA
	.db	0xFE, 0x2E, 0xF0, 0x55, 0xBC, 0x3C, 0xA4, 0x0B
	.db	0xF4, 0xB3, 0xB7, 0x7E, 0xD7, 0x11, 0x8E, 0x29
	.db	0x4B, 0xE7, 0xB3, 0x0A, 0x57, 0xCB, 0x1A, 0xD3
	.db	0x10, 0x52, 0xD0, 0xFE, 0xE3, 0x7F, 0xE7, 0x6C
	.db	0xDF, 0x7F, 0x71, 0xAA, 0xB1, 0xF3, 0xE1, 0x7F
	.db	0xE5, 0xB2, 0x3D, 0xF8, 0x49, 0xC7, 0xFF, 0xC3
	.db	0xA2, 0x1E, 0x12, 0xD8, 0xE7, 0x70, 0xDF, 0x54
	.db	0x8C, 0xEA, 0xA4, 0xE4, 0xA6, 0x01, 0x71, 0x00
	.db	0xED, 0x2D, 0x3A, 0x05, 0x21, 0xD7, 0x7F, 0xFF
	.db	0x7F, 0xC2, 0x0A, 0x8F, 0xB2, 0x38, 0xFF
	.db	127
	.db	0xF9, 0x9A, 0x0F, 0x1B, 0xA1, 0x94, 0x13, 0x11
	.db	0x85, 0xC2, 0x40, 0x97, 0x5D, 0x25, 0x56, 0xFA
	.db	0xB8, 0x79, 0x47, 0x9D, 0x46, 0x01, 0x2A, 0x28
	.db	0xA3, 0xF0, 0xFF, 0xE0, 0xF1, 0x3B, 0xF0, 0x7F
	.db	0xD0, 0x15, 0xFA, 0x21, 0x10, 0x01, 0x25, 0x14
	.db	0xDF, 0x80, 0xC2, 0xFF, 0x3E, 0x07, 0xAF, 0x39
	.db	0x82, 0x1A, 0xEF, 0x3D, 0x29, 0xEF, 0x6B, 0xAC
	.db	0xCF, 0x6A, 0xB8, 0x8A, 0xE6, 0x98, 0x3A, 0xF1
	.db	0x7F, 0x79, 0xFA, 0x3B, 0x76, 0x7F, 0x0A, 0x9F
	.db	0xF7, 0x07, 0x01, 0x31, 0x82, 0x4F, 0xFF, 0x3D
	.db	0xB5, 0x4B, 0xD0, 0xF0, 0x4E, 0x54, 0xFE, 0xE6
	.db	0xFA, 0x47, 0x0A, 0xD4, 0x93, 0x05, 0x7F, 0xC4
	.db	0x00, 0x0D, 0x8E, 0xB3, 0xE5, 0xFF, 0xC5, 0xF4
	.db	0xE2, 0x13, 0xFC, 0x7F, 0xDF, 0x4F, 0x14, 0xFD
	.db	0xE4, 0xE4, 0x10, 0x8F, 0xFF, 0x8D, 0x1F, 0x98
	.db	0x1D, 0xCF, 0xE2, 0x4B, 0xA0, 0xC5, 0x73
	.db	127
	.db	0x8C, 0xB6, 0x47, 0xF0, 0xFF, 0xC5, 0xB4, 0x2C
	.db	0x23, 0xF1, 0xFF, 0xD4, 0xF4, 0x1F, 0x8F, 0xAB
	.db	0x1E, 0x7F, 0x9E, 0x01, 0x4E, 0x73, 0x81, 0x89
	.db	0xF0, 0xFF, 0xF8, 0xDE, 0xAF, 0x56, 0x69, 0x4F
	.db	0xC4, 0x72, 0x6F, 0x02, 0x18, 0x0F, 0x97, 0x7F
	.db	0xA2, 0x0F, 0xD1, 0xFA, 0x97, 0xFF, 0x2C, 0x12
	.db	0x7A, 0xF0, 0x7F, 0xA3, 0x0A, 0xFE, 0x1E, 0x10
	.db	0x31, 0x48, 0xF1, 0xFF, 0xF8, 0x96, 0x01, 0xF4
	.db	0xE9, 0x31, 0x8F, 0xFA, 0x0B, 0x24, 0x60, 0x9D
	.db	0x62, 0xFA, 0xFF, 0x5E, 0x3E, 0x36, 0x25, 0xFF
	.db	0xD4, 0xFA, 0x01, 0xF1, 0x3B, 0xEB, 0x7F, 0x72
	.db	0xB9, 0xE7, 0xEE, 0xFF, 0x3E, 0x3F, 0x71, 0x3F
	.db	0x56, 0x19, 0x98, 0xEA, 0x28, 0xC8, 0x04, 0xFF
	.db	0xF9, 0x25, 0xB6, 0x51, 0x40, 0xFF, 0xEA, 0x00
	.db	0x78, 0xCF, 0x59, 0x75, 0x7F, 0x23, 0x8F, 0xA0
	.db	0x31, 0x34, 0x20, 0xFF, 0x7C, 0x52, 0xB5
	.db	127
	.db	0xE5, 0x56, 0xE5, 0x00, 0xAA, 0x6F, 0xBB, 0x5A
	.db	0xE8, 0x47, 0x50, 0x7F, 0xC8, 0x1F, 0xAE, 0xB5
	.db	0x7C, 0x7F, 0x5A, 0xFD, 0x12, 0xF0, 0xF4, 0x7F
	.db	0xAF, 0xCD, 0x48, 0xDB, 0xAF, 0xFF, 0xE4, 0xC7
	.db	0x34, 0xA1, 0x0E, 0xAC, 0xB2, 0x77, 0xEE, 0x7C
	.db	0x4B, 0xB5, 0x72, 0xFF, 0xEF, 0xB7, 0x1D, 0xCB
	.db	0xFF, 0x94, 0xCA, 0xAB, 0xF5, 0x7F, 0xCE, 0x90
	.db	0x77, 0xD2, 0xBE, 0x08, 0xFF, 0xF7, 0xA4, 0xF1
	.db	0xEF, 0xCD, 0x28, 0xEF, 0xDE, 0x64, 0x9C, 0x02
	.db	0x09, 0xEF, 0xEA, 0xC3, 0xF8, 0x9E, 0x98, 0xFF
	.db	0xE5, 0xEF, 0x1C, 0x3C, 0x10, 0x7F, 0x9A, 0x04
	.db	0xCE, 0xEB, 0xFF, 0xBF, 0x2A, 0xCF, 0x8E, 0x9E
	.db	0x07, 0xF1, 0x09, 0x84, 0x89, 0xAD, 0x80, 0x78
	.db	0xFA, 0x7F, 0xB9, 0x02, 0x63, 0x97, 0xFF, 0x38
	.db	0x84, 0xD7, 0xD0, 0x7F, 0x97, 0x4B, 0x8C, 0xFF
	.db	0x7D, 0x53, 0xA3, 0xEB, 0x56, 0xB1, 0xB3
	.db	127
	.db	0xD5, 0xFE, 0x31, 0xAE, 0x1E, 0x72, 0xFF, 0xEB
	.db	0x38, 0x8D, 0xFA, 0xFF, 0xF5, 0x9E, 0x93, 0x31
	.db	0xF7, 0x9E, 0x07, 0x69, 0xDA, 0xDA, 0xFF, 0x3E
	.db	0x5A, 0xFE, 0xF4, 0xE1, 0x0F, 0xF6, 0x89, 0x5D
	.db	0xE7, 0xBA, 0x0A, 0x0F, 0x90, 0xF0, 0x7C, 0x06
	.db	0x7F, 0x72, 0xFF, 0xE9, 0xBD, 0x6E, 0x1E, 0x7F
	.db	0x1F, 0xCF, 0xEB, 0xFF, 0x1F, 0x2F, 0x7F, 0xBA
	.db	0xFA, 0xC3, 0xBD, 0x3C, 0x75, 0x7E, 0x7F, 0x07
	.db	0xFD, 0x7F, 0xBD, 0xF0, 0xB8, 0x7D, 0x7F, 0xCB
	.db	0x10, 0xF0, 0xF4, 0x7C, 0xF4, 0x7F, 0x94, 0xFE
	.db	0xD6, 0x20, 0xA5, 0xF1, 0xFF, 0xE6, 0x4B, 0xFD
	.db	0xFF, 0xBE, 0x71, 0xBC, 0xF2, 0x7F, 0x6D, 0xCB
	.db	0xCA, 0xFF, 0x3E, 0x8F, 0x7F, 0xA1, 0x0D, 0x97
	.db	0x7D, 0xEC, 0xB7, 0xFA, 0x8F, 0xFF, 0x93, 0xCF
	.db	0x72, 0xFF, 0x3E, 0x0E, 0xBF, 0x5F, 0x7F, 0x46
	.db	0x40, 0xFB, 0x74, 0xAD, 0xD4, 0x00, 0xA2
	.db	127
	.db	0xFF, 0x7E, 0x32, 0x10, 0xFE, 0x9C, 0xBC, 0x2F
	.db	0xA5, 0xFF, 0xF0, 0xA7, 0x80, 0x5F, 0x60, 0x7F
	.db	0x17, 0xD7, 0xAF, 0x8B, 0x77, 0xFF, 0x3F, 0x02
	.db	0xF5, 0xFF, 0x3E, 0x4C, 0x49, 0xC7, 0xE8, 0x0D
	.db	0x81, 0x66, 0xFF, 0xBF, 0x07, 0x72, 0x84, 0xF1
	.db	0xFF, 0xFC, 0x4E, 0xAF, 0x7F, 0x55, 0xF4, 0xFF
	.db	0xF8, 0x8F, 0xFA, 0xC2, 0xF4, 0xBD, 0xC5, 0x57
	.db	0xF0, 0xFF, 0xCC, 0x10, 0x8F, 0xFF, 0x83, 0xF2
	.db	0x11, 0xFD, 0x7F, 0xF4, 0xAB, 0xFA, 0xFF, 0xF0
	.db	0x67, 0x8F, 0xB5, 0x04, 0xF6, 0x38, 0x57, 0x80
	.db	0x85, 0xFF, 0xBC, 0x8F, 0x0A, 0x7F, 0x5A, 0x95
	.db	0x56, 0x40, 0x05, 0xFA, 0x7F, 0xCA, 0x96, 0x71
	.db	0x00, 0xFF, 0x1F, 0x24, 0x8E, 0x7A, 0x3A, 0x04
	.db	0x7F, 0xA4, 0xFE, 0xF1, 0x00, 0x4B, 0xFC, 0xFF
	.db	0xC4, 0x01, 0xC6, 0xA8, 0x52, 0x04, 0xFF, 0xE3
	.db	0xB6, 0x4D, 0xB1, 0xF0, 0xFF, 0xE2, 0x66
	.db	127
	.db	0x11, 0x00, 0xD0, 0x35, 0xFF, 0x1E, 0xCF, 0xCF
	.db	0x0E, 0x5D, 0xB3, 0x6E, 0xB1, 0x3B, 0xE5, 0x00
	.db	0x10, 0xFF, 0x1F, 0x0E, 0xDC, 0xF5, 0xFF, 0x2E
	.db	0xDA, 0x3F, 0xF6, 0x95, 0xEF, 0xD6, 0xFF, 0x9E
	.db	0xF0, 0xE9, 0xEB, 0xFF, 0x1F, 0x14, 0xB8, 0x77
	.db	0x8E, 0xFE, 0xCF, 0xAF, 0x7F, 0x47, 0x60, 0x7F
	.db	0xC3, 0xA8, 0x1D, 0x3D, 0x05, 0x7F, 0xBB, 0x83
	.db	0x97, 0xDF, 0x9B, 0x36, 0xF2, 0xF9, 0x7F, 0x1E
	.db	0x00, 0xF0, 0xF2, 0xF9, 0x0E, 0xFA, 0x7E, 0x73
	.db	0x62, 0xFF, 0xEF, 0x22, 0x06, 0xFF, 0x5D, 0xB9
	.db	0x40, 0x7B, 0xAF, 0xFF, 0x87, 0x5A, 0xA4, 0xFF
	.db	0xB7, 0xF0, 0x1E, 0xDD, 0xA4, 0xE6, 0xAF, 0xBE
	.db	0xB3, 0x6B, 0xC7, 0x5D, 0xDA, 0x00, 0x23, 0xDF
	.db	0xC6, 0xA8, 0xFF, 0xF5, 0xC5, 0x70, 0xA0, 0xFF
	.db	0x3C, 0x5A, 0x10, 0xF2, 0xEB, 0x7F, 0x8F, 0xFC
	.db	0x73, 0xF8, 0xCE, 0xFF, 0x3D, 0x98, 0x0A
	.db	127
	.db	0x80, 0xEB, 0x32, 0xD3, 0x0D, 0x56, 0x5C, 0x10
	.db	0x00, 0xDB, 0xA2, 0x7E, 0x7F, 0xBD, 0x28, 0x3D
	.db	0x04, 0x7F, 0xFB, 0x83, 0x8E, 0x7F, 0xB9, 0x8E
	.db	0xB8, 0xDA, 0xF0, 0x8F, 0xFF, 0x8B, 0x2F, 0x7C
	.db	0x0F, 0x5D, 0x0A, 0x6B, 0x4A, 0xC5, 0x3C, 0x60
	.db	0x38, 0xD2, 0x10, 0xFF, 0xEE, 0x06, 0xBE, 0xE8
	.db	0x65, 0xFF, 0xE1, 0xD7, 0x09, 0x20, 0x7F, 0x52
	.db	0xDB, 0xEA, 0xFF, 0xAF, 0xFF, 0x93, 0x5D, 0x53
	.db	0xD0, 0xFE, 0xE6, 0xF1, 0xF2, 0x72, 0xA7, 0x93
	.db	0x48, 0xFF, 0xF4, 0xEE, 0x28, 0xFF, 0x9E, 0x09
	.db	0xBA, 0x62, 0x0D, 0xBE, 0xC4, 0xD1, 0xFD, 0xDA
	.db	0xE7, 0xFF, 0x1F, 0x1E, 0x49, 0xA5, 0xFA, 0x8C
	.db	0xCE, 0xFE, 0x9A, 0x53, 0xFD, 0xEA, 0xC6, 0xF0
	.db	0xF3, 0x28, 0xE2, 0x0C, 0xFF, 0xDD, 0xF3, 0xC1
	.db	0x9E, 0x7F, 0xBC, 0x4E, 0x3A, 0x77, 0x9F, 0xFF
	.db	0x8E, 0xC1, 0x36, 0x80, 0x5C, 0x2F, 0xF5
	.db	127
	.db	0x73, 0x85, 0xCE, 0xEA, 0xFD, 0x25, 0xFF, 0xCF
	.db	0x28, 0x52, 0x10, 0xFF, 0xF2, 0x95, 0x00, 0x6F
	.db	0x0A, 0x63, 0x3E, 0xCA, 0x4F, 0xC7, 0x3C, 0x7D
	.db	0x9A, 0x6B, 0xFF, 0xE3, 0xD6, 0xB2, 0x26, 0xB1
	.db	0x97, 0xA2, 0x0E, 0x4D, 0x19, 0x0F, 0xEA, 0xEF
	.db	0xEA, 0xDE, 0x7D, 0x28, 0x73, 0x61, 0xFF, 0x2F
	.db	0x0E, 0x3C, 0xCF, 0xFF, 0x5A, 0xC5, 0xC3, 0xF4
	.db	0x82, 0x9C, 0xAF, 0xF0, 0xE2, 0xE2, 0x2F, 0x00
	.db	0x63, 0x61, 0x08, 0x2A, 0x08, 0x5F, 0x50, 0x23
	.db	0x15, 0x8D, 0x33, 0x92, 0xCE, 0x2D, 0x4A, 0x28
	.db	0x25, 0xA1, 0x00, 0xFF, 0xE5, 0x96, 0xF5, 0x3B
	.db	0x75, 0xE6, 0xF5, 0x31, 0x3B, 0x02, 0xCF, 0x9C
	.db	0xEB, 0xD9, 0xC2, 0x40, 0x96, 0x80, 0xBB, 0x00
	.db	0xE6, 0x37, 0xFE, 0x9D, 0x25, 0xB2, 0x87, 0xA0
	.db	0x7F, 0x12, 0x87, 0x2E, 0xDD, 0x00, 0xCB, 0xF2
	.db	0x97, 0xFF, 0x92, 0xEA, 0x38, 0xEB, 0x7F
	.db	127
	.db	0xC6, 0x9A, 0xE3, 0x61, 0xFF, 0x7A, 0x7A, 0x0F
	.db	0x7F, 0x6B, 0x3C, 0x0A, 0x0F, 0xC9, 0x20, 0x94
	.db	0xDF, 0x1C, 0x8E, 0xF2, 0x01, 0xDF, 0x92, 0x86
	.db	0xFF, 0x5E, 0x48, 0xE1, 0xE1, 0xF4, 0x8B, 0x1E
	.db	0x51, 0xB0, 0xD6, 0x16, 0x77, 0xD9, 0xC1, 0xA7
	.db	0xAC, 0xE7, 0x3C, 0x00, 0x4F, 0xA1, 0x84, 0xF4
	.db	0xDF, 0xEB, 0x6F, 0x37, 0x36, 0xD1, 0x87, 0x38
	.db	0xFC, 0x7F, 0x14, 0xEA, 0xBB, 0xF8, 0xDA, 0x12
	.db	0xB0, 0x3C, 0x77, 0xFF, 0xA8, 0xC6, 0xF5, 0x9E
	.db	0xD1, 0x63, 0x80, 0xB7, 0xD1, 0xF2, 0xFB, 0x63
	.db	0xBA, 0x8E, 0x0F, 0xBD, 0x2F, 0x36, 0xF3, 0xFF
	.db	0xCA, 0xD5, 0xDD, 0x15, 0xAF, 0xBE, 0xE4, 0x04
	.db	0x8F, 0xD9, 0x04, 0x0F, 0xB3, 0xF4, 0x1D, 0xF3
	.db	0x7F, 0xA6, 0xE6, 0x89, 0x15, 0xDF, 0xA1, 0x54
	.db	0x21, 0xF0, 0xF8, 0xBD, 0x50, 0x7F, 0x13, 0x6F
	.db	0x97, 0xC1, 0x02, 0xDF, 0xCA, 0x2D, 0xBC
	.db	127
	.db	0x41, 0x6B, 0xE7, 0xF7, 0x84, 0x0A, 0xB1, 0x79
	.db	0xA9, 0x06, 0xBE, 0xCC, 0x01, 0x5D, 0xC6, 0x31
	.db	0xFC, 0x31, 0x3B, 0x04, 0x22, 0x3C, 0x01, 0x11
	.db	0x00, 0x3C, 0x26, 0xBC, 0x0B, 0xAB, 0x00, 0xA1
	.db	0xF5, 0xBA, 0x1C, 0x07, 0xF7, 0x34, 0xD7, 0x1A
	.db	0x10, 0x1A, 0x5F, 0x14, 0x1F, 0x36, 0x87, 0x54
	.db	0x3E, 0x55, 0xDF, 0x00, 0xFC, 0x7B, 0x70, 0xEC
	.db	0x20, 0xF8, 0x14, 0x4D, 0x4A, 0xDF, 0xD6, 0xCE
	.db	0xFD, 0xE7, 0xF8, 0xBD, 0x1E, 0xFA, 0x0E, 0x6D
	.db	0x1A, 0xFF, 0xE8, 0xFD, 0xA2, 0xF3, 0x22, 0x73
	.db	0xF1, 0xD5, 0x5E, 0x2A, 0x5D, 0xC0, 0x79, 0x0C
	.db	0x3F, 0x04, 0x83, 0x5A, 0xAA, 0xFB, 0xE3, 0x9C
	.db	0xDE, 0x5E, 0x22, 0x1C, 0xD9, 0xD7, 0x6D, 0xA7
	.db	0xF1, 0xB2, 0xD0, 0xF3, 0x55, 0xF1, 0x00, 0x77
	.db	0x10, 0xAA, 0x8B, 0xFD, 0x2A, 0xE1, 0x79, 0x0F
	.db	0x20, 0x3D, 0x4D, 0xFF, 0xBF, 0x9D, 0xF1
	.db	127
	.db	0xF7, 0x7F, 0x77, 0x01, 0xD8, 0x71, 0x80, 0xED
	.db	0xBB, 0xEA, 0xF4, 0x79, 0x00, 0x55, 0xC7, 0x80
	.db	0xC3, 0x9A, 0xE3, 0xFF, 0xF3, 0xFB, 0x79, 0xFA
	.db	0x29, 0xBA, 0x40, 0x0A, 0xF7, 0xED, 0x1E, 0x11
	.db	0x9F, 0x02, 0xDC, 0xEF, 0xAF, 0xFC, 0x7F, 0xD8
	.db	0xC1, 0x70, 0xDB, 0xFD, 0x0E, 0xC5, 0x1F, 0x7F
	.db	0xE6, 0xFA, 0xF5, 0x7F, 0x4B, 0x04, 0x94, 0xA7
	.db	0x7F, 0x8B, 0x0A, 0x31, 0xC5, 0xFD, 0xFF, 0x1F
	.db	0x3B, 0x0D, 0x57, 0xCE, 0x9B, 0x9C, 0xDE, 0x1F
	.db	0x54, 0x92, 0xEA, 0x99, 0x00, 0xAA, 0x24, 0xAC
	.db	0xB5, 0xED, 0x2D, 0x39, 0x5F, 0x21, 0xE3, 0x7F
	.db	0x57, 0xC3, 0x7F, 0xC6, 0xDA, 0x3C, 0xBA, 0x1E
	.db	0x8F, 0xFF, 0x86, 0xCE, 0x38, 0x4C, 0x11, 0x85
	.db	0x14, 0x4B, 0xDF, 0xEF, 0xAE, 0x3C, 0x25, 0xF4
	.db	0x10, 0xA0, 0xB8, 0x79, 0x47, 0x9D, 0x4E, 0x12
	.db	0x55, 0x23, 0xFF, 0xE1, 0x7C, 0xF4, 0x7F
	.db	127
	.db	0x13, 0xB2, 0xC2, 0xA2, 0x5B, 0x25, 0x11, 0x4D
	.db	0x80, 0xC1, 0x04, 0xFF, 0x1E, 0xEF, 0x0A, 0x39
	.db	0x02, 0x01, 0xAF, 0xEF, 0x3D, 0x19, 0x01, 0x29
	.db	0x2C, 0xE7, 0x6A, 0xD4, 0x8A, 0x75, 0x98, 0x1D
	.db	0x78, 0x7F, 0xE3, 0x3C, 0x10, 0x7F, 0xDF, 0x50
	.db	0x79, 0x09, 0x77, 0x1F, 0x31, 0xFF, 0x1F, 0x06
	.db	0x4B, 0x29, 0xFD, 0xF0, 0xCB, 0x6F, 0xC5, 0x04
	.db	0x31, 0x92, 0x82, 0x9E, 0x0F, 0x12, 0xEA, 0x9E
	.db	0x0B, 0x12, 0xAA, 0x89, 0xF4, 0xFF, 0x76, 0x8C
	.db	0xE2, 0x7B, 0xC0, 0x7F, 0x2D, 0x04, 0x95, 0xC9
	.db	0xAF, 0x77, 0xD4, 0xFF, 0xFB, 0xDA, 0xD5, 0xCB
	.db	0xE3, 0x82, 0x2F, 0xC5, 0xBD, 0x91, 0x10, 0xB6
	.db	0x91, 0xFF, 0xF1, 0xCB, 0xB4, 0x08, 0x10, 0xFF
	.db	0xF5, 0x4F, 0x41, 0x80, 0x8F, 0x7F, 0x6F, 0x1F
	.db	0x4E, 0x2A, 0xE5, 0x58, 0xFF, 0xF8, 0xF6, 0x49
	.db	0xF1, 0xDD, 0x14, 0x10, 0xFE, 0xE5, 0xC9
	.db	127
	.db	0x7E, 0x9E, 0x7F, 0x74, 0xB4, 0xAF, 0x60, 0x7F
	.db	0x57, 0xA0, 0x48, 0x8F, 0x7F, 0x71, 0xF3, 0x8F
	.db	0xD1, 0x31, 0x34, 0x10, 0xFF, 0x7C, 0x48, 0x1F
	.db	0x8F, 0xF4, 0xC4, 0x31, 0xA0, 0xE3, 0xB8, 0xA3
	.db	0xF6, 0x9D, 0x7C, 0x0F, 0x25, 0xFF, 0xCF, 0x36
	.db	0x52, 0xF0, 0xFF, 0xEA, 0xA0, 0xC7, 0x12, 0xA0
	.db	0x7F, 0xAD, 0xCE, 0x3A, 0x23, 0x4F, 0xFF, 0xE5
	.db	0xF3, 0x71, 0xF1, 0x56, 0xE6, 0x3D, 0x28, 0xAD
	.db	0x83, 0x8F, 0xFF, 0x92, 0x98, 0x31, 0xF4, 0xFF
	.db	0x1E, 0xCF, 0x0C, 0x59, 0x0E, 0x7F, 0xB1, 0x23
	.db	0xFA, 0x31, 0xE6, 0xF2, 0x9F, 0xFF, 0x8E, 0xFE
	.db	0x5C, 0xFC, 0x56, 0x79, 0x0A, 0xA4, 0xBB, 0x91
	.db	0x84, 0xF5, 0x7F, 0xF2, 0x46, 0x98, 0x3D, 0xFD
	.db	0x7F, 0x54, 0xD0, 0xC9, 0xBE, 0x7F, 0x8F, 0x0F
	.db	0x6A, 0x55, 0x10, 0xFF, 0xFC, 0x78, 0x34, 0xFA
	.db	0x97, 0xA3, 0x1E, 0x0E, 0x27, 0xC4, 0xC5
	.db	127
	.db	0x20, 0xB5, 0x2E, 0x12, 0xFF, 0xF0, 0x47, 0xB7
	.db	0x72, 0xFF, 0xE5, 0xCA, 0x2A, 0x50, 0xF3, 0x7F
	.db	0x94, 0xCC, 0xEF, 0xD2, 0x82, 0xFF, 0x3D, 0xF2
	.db	0x38, 0x96, 0x58, 0xB7, 0xD8, 0x2B, 0x8B, 0x71
	.db	0xE7, 0xCA, 0x58, 0xFF, 0xF4, 0xEE, 0x78, 0xFF
	.db	0x3C, 0x64, 0x55, 0x0F, 0xDA, 0x77, 0x7F, 0xD3
	.db	0x4F, 0xCE, 0x5D, 0x77, 0xFF, 0xE4, 0x53, 0x0C
	.db	0x8E, 0xC2, 0x10, 0xEE, 0x09, 0x89, 0x56, 0x80
	.db	0xBC, 0xBD, 0x7F, 0x5C, 0x2F, 0x63, 0xCB, 0xFF
	.db	0x96, 0x04, 0xE3, 0xC9, 0x3D, 0x7F, 0x67, 0x91
	.db	0x94, 0xFF, 0x7D, 0x13, 0xA3, 0xED, 0x56, 0xA9
	.db	0x20, 0x89, 0xEE, 0x98, 0x36, 0xAE, 0x3C, 0xA5
	.db	0xFF, 0xD7, 0x38, 0x12, 0xA0, 0xFF, 0xE9, 0x46
	.db	0x99, 0xED, 0xDF, 0x7F, 0x54, 0xDA, 0xEB, 0xFF
	.db	0x1F, 0x2F, 0x46, 0x5E, 0x0F, 0x6A, 0x60, 0xFE
	.db	0x72, 0xDA, 0x44, 0x90, 0xED, 0x6F, 0x7F
	.db	127
	.db	0xF1, 0xCB, 0xFF, 0x9D, 0xBD, 0xB8, 0x78, 0x7F
	.db	0x7F, 0xCF, 0xAC, 0xFF, 0x7C, 0xDE, 0x7F, 0xEB
	.db	0xA0, 0xC3, 0xF4, 0xF1, 0x75, 0xF8, 0x7F, 0x1E
	.db	0xD0, 0x7F, 0xF6, 0xF0, 0xDF, 0x7F, 0xDC, 0xF1
	.db	0xC7, 0xFE, 0x57, 0x40, 0x7F, 0xC9, 0xFE, 0x4C
	.db	0xF0, 0x20, 0x10, 0x97, 0xFF, 0x99, 0xD0, 0xFF
	.db	0x2E, 0xEF, 0x00, 0xC0, 0xEB, 0x7F, 0x94, 0x01
	.db	0xFF, 0x7E, 0x1F, 0x7F, 0xD0, 0xDF, 0xBE, 0x97
	.db	0xB7, 0xB7, 0x11, 0xA0, 0xFF, 0xF1, 0xE2, 0x17
	.db	0xF0, 0xFF, 0x3D, 0xE3, 0xB4, 0x5E, 0xF0, 0x7F
	.db	0x73, 0xBA, 0xD9, 0x4A, 0xDA, 0x00, 0xB4, 0xD8
	.db	0xC4, 0xFF, 0x7E, 0x0A, 0xA1, 0xFE, 0x9C, 0xBC
	.db	0x2F, 0xE5, 0xFF, 0xF0, 0x67, 0x80, 0x5F, 0xF6
	.db	0x7F, 0x17, 0xD6, 0x2E, 0x00, 0x27, 0xFA, 0xFF
	.db	0xE5, 0x47, 0x50, 0xFF, 0xC6, 0x0A, 0xF0, 0x26
	.db	0x95, 0x08, 0xF5, 0xFF, 0xF8, 0xFE, 0xCC
	.db	127
	.db	0xC2, 0x10, 0xFF, 0x7E, 0x1E, 0xE3, 0xDD, 0x00
	.db	0x57, 0x40, 0xFF, 0xE2, 0x29, 0xA0, 0xFE, 0xCE
	.db	0xC5, 0xF8, 0x8F, 0xFF, 0x99, 0xA1, 0xFF, 0x1F
	.db	0x06, 0xF2, 0x2B, 0xD0, 0x7F, 0xE9, 0x57, 0xA0
	.db	0xFF, 0xE0, 0xCF, 0x8F, 0x6A, 0x4F, 0xF6, 0x70
	.db	0xAF, 0x80, 0x0B, 0xFF, 0x79, 0x1E, 0xAF, 0x7F
	.db	0xA9, 0x0D, 0xF3, 0x61, 0x0D, 0x7F, 0xEC, 0x01
	.db	0xE9, 0x7F, 0xF0, 0xFF, 0x1F, 0x26, 0xFF, 0x3A
	.db	0x3A, 0x4F, 0x7F, 0xDC, 0x87, 0xF1, 0x00, 0x4B
	.db	0xC0, 0xFF, 0xC4, 0x1F, 0xC6, 0xA8, 0x63, 0xA7
	.db	0xA7, 0x04, 0x55, 0x5D, 0x83, 0xCE, 0xFF, 0x3C
	.db	0x04, 0x01, 0x11, 0x00, 0x1A, 0xA6, 0xB0, 0x63
	.db	0xFF, 0xD9, 0x0C, 0x7F, 0xED, 0xB3, 0xAD, 0x3C
	.db	0x01, 0x7E, 0xE3, 0xB0, 0xA8, 0xFF, 0xF5, 0xDE
	.db	0xDC, 0xA5, 0xFF, 0xDB, 0x3F, 0x52, 0x60, 0xEF
	.db	0xBA, 0xFF, 0xD7, 0xE9, 0xBA, 0xC7, 0xFF
	.db	127
	.db	0xC5, 0xB8, 0x1D, 0xF7, 0xD6, 0xB3, 0x0A, 0x7F
	.db	0xD1, 0xF6, 0x7F, 0xF1, 0x47, 0xA8, 0x4F, 0x5F
	.db	0x7F, 0x6E, 0x83, 0xE1, 0x0D, 0x9B, 0xCE, 0x0F
	.db	0x20, 0x7F, 0x8D, 0xF0, 0xFF, 0xEE, 0xDF, 0x0E
	.db	0x16, 0x46, 0x79, 0x00, 0xFB, 0xFF, 0xD2, 0x6F
	.db	0x97, 0xFF, 0x5E, 0x40, 0x5E, 0x0A, 0xFF, 0xE0
	.db	0xA0, 0xF4, 0x5A, 0x96, 0xFF, 0xA3, 0xF0, 0xDF
	.db	0xA4, 0xBC, 0xB1, 0x39, 0xF4, 0xDD, 0x2D, 0x1D
	.db	0xDD, 0xAD, 0x00, 0x67, 0xD4, 0x51, 0xFF, 0xEA
	.db	0x04, 0x8E, 0xA8, 0xA9, 0xFF, 0xDB, 0x10, 0x87
	.db	0x20, 0x7F, 0x5F, 0x8F, 0xE1, 0xF8, 0x9E, 0x69
	.db	0x02, 0xF0, 0xF8, 0x71, 0x80, 0xCB, 0x32, 0xBA
	.db	0xFE, 0x48, 0xB0, 0xB9, 0x00, 0xB7, 0xA2, 0x0F
	.db	0x7F, 0x4E, 0x28, 0xE3, 0xA8, 0x3D, 0x7F, 0x7B
	.db	0x83, 0x7A, 0x7F, 0xE6, 0x8E, 0xE3, 0xDA, 0xC2
	.db	0xFF, 0x7E, 0x2D, 0x2F, 0xF2, 0x0F, 0x72
	.db	127
	.db	0xAF, 0x6B, 0x01, 0x9E, 0xF3, 0xFA, 0x38, 0x4B
	.db	0xF1, 0xFF, 0xC1, 0x8C, 0x18, 0xD0, 0x97, 0xFF
	.db	0x8F, 0x09, 0x5D, 0xF2, 0x7F, 0x4B, 0xDB, 0xAE
	.db	0xB0, 0xB5, 0xFF, 0x1E, 0xF8, 0x2B, 0xFD, 0x9F
	.db	0xA3, 0x3E, 0x31, 0x3B, 0x72, 0xA7, 0x93, 0x48
	.db	0xFF, 0xF3, 0xEE, 0x28, 0xFF, 0x9E, 0x09, 0xBA
	.db	0x61, 0x04, 0xC4, 0x7E, 0x28, 0xD0, 0xDA, 0xF3
	.db	0x8F, 0xFF, 0x8F, 0x49, 0x52, 0xA0, 0x8C, 0xE5
	.db	0xFE, 0x4D, 0xA9, 0xD0, 0xEA, 0xE3, 0x97, 0xB5
	.db	0x3E, 0x0C, 0x6D, 0xFF, 0xDF, 0x1A, 0x87, 0x44
	.db	0x7F, 0x5D, 0x4E, 0xCF, 0xFE, 0x53, 0xFF, 0xF2
	.db	0x46, 0xC1, 0xCB, 0x80, 0x6E, 0x01, 0x23, 0xB3
	.db	0x85, 0xC2, 0xEA, 0xFD, 0x25, 0xFF, 0xC9, 0x01
	.db	0x94, 0x8E, 0x72, 0xFF, 0xEA, 0x00, 0x4E, 0x06
	.db	0x80, 0x75, 0x3E, 0xF7, 0xCB, 0xC7, 0x1D, 0xFA
	.db	0x9A, 0x57, 0xFF, 0xC9, 0xAC, 0x7B, 0x30
	.db	127
	.db	0x4B, 0xA2, 0x84, 0xD5, 0xB2, 0xFF, 0xCF, 0xEA
	.db	0x7E, 0xEA, 0xF2, 0xEE, 0x28, 0xA0, 0x39, 0x97
	.db	0xFF, 0x87, 0xF6, 0x57, 0x1D, 0xB7, 0xDF, 0x27
	.db	0x86, 0xD0, 0x31, 0xA2, 0xDD, 0x5F, 0xF0, 0x9F
	.db	0x6C, 0x34, 0xED, 0x63, 0x76, 0x02, 0x55, 0x58
	.db	0xF5, 0x94, 0xF1, 0x53, 0x8D, 0x5C, 0x92, 0xE0
	.db	0x04, 0xD2, 0x28, 0xFA, 0x10, 0xFF, 0x5E, 0x69
	.db	0x9B, 0xE3, 0x75, 0xAC, 0xC6, 0x63, 0xA6, 0xB5
	.db	0x2A, 0xFF, 0xBE, 0x1A, 0xD9, 0xEA, 0xF4, 0x96
	.db	0x80, 0xBC, 0x00, 0x15, 0x40, 0xF1, 0xE7, 0xBA
	.db	0x3E, 0x2E, 0xFA, 0x7F, 0x70, 0x94, 0x9D, 0x00
	.db	0xDF, 0xCB, 0xE3, 0xFF, 0x2F, 0x24, 0xEA, 0x73
	.db	0xBE, 0x3D, 0x72, 0x2C, 0xFD, 0xFE, 0xFD, 0x27
	.db	0x8B, 0xAC, 0xD9, 0xF5, 0xD7, 0x3C, 0xAF, 0x0E
	.db	0x8B, 0xF2, 0x94, 0xBE, 0x49, 0x8E, 0xE5, 0x1F
	.db	0x92, 0xBF, 0x0C, 0xFF, 0xBC, 0x8F, 0x01
	.db	127
	.db	0x7F, 0x2D, 0xC7, 0xF2, 0x75, 0xA1, 0x22, 0xD9
	.db	0xDE, 0x9C, 0x27, 0x3C, 0x14, 0x0D, 0x25, 0xD4
	.db	0xAF, 0x84, 0xEF, 0xEB, 0x7D, 0x77, 0x93, 0xCD
	.db	0xFD, 0xD7, 0x7D, 0xCB, 0xFF, 0xC5, 0xEA, 0x4C
	.db	0x23, 0x20, 0x8B, 0xA4, 0x2F, 0xB0, 0x78, 0xF5
	.db	0x22, 0xC6, 0x1E, 0x93, 0xD1, 0xCB, 0x04, 0x55
	.db	0xDB, 0xF2, 0xFC, 0x31, 0xBA, 0xC6, 0x9F, 0x97
	.db	0x36, 0xDF, 0xFF, 0x3C, 0xAD, 0xD5, 0xD2, 0xF4
	.db	0x36, 0xBC, 0xDC, 0xE3, 0xD9, 0xA9, 0xB3, 0xE9
	.db	0x01, 0x80, 0x2E, 0x68, 0xFA, 0xA6, 0xE9, 0x5D
	.db	0x0C, 0xAE, 0xA2, 0x55, 0xE5, 0x4D, 0xF5, 0xA1
	.db	0x7A, 0x27, 0x06, 0x97, 0x97, 0x2D, 0x35, 0x68
	.db	0xA4, 0x9D, 0xF1, 0x4F, 0x0A, 0xF7, 0x48, 0xAF
	.db	0xB1, 0xF3, 0x53, 0x6F, 0xBE, 0x9B, 0x15, 0x6F
	.db	0x58, 0xC4, 0x1D, 0x4F, 0xED, 0x22, 0x11, 0x00
	.db	0xE3, 0x26, 0xE3, 0x0B, 0xE6, 0x00, 0xDB
	.db	28
	.db	0xF4, 0x00, 0xD5, 0x10, 0x16, 0xD7, 0x34, 0xBE
	.db	0x37, 0xF5, 0x1A, 0xB0, 0x2E, 0x9E, 0x22, 0xB7
	.db	0x36, 0x1C, 0x1C, 0xCA, 0x9F, 0x00, 0xF9, 0x03
	.db	0x00, 0xFF, 0xFF, 0x00
	.db	0
;loading.pck.h:461: unsigned int loading_pck_len = 5489;
	ld	iy,#_loading_pck_len
	ld	0 (iy),#0x71
	ld	iy,#_loading_pck_len
	ld	1 (iy),#0x15
;demo.c:185: uint8_t tri_lookup_x[16*2] = { 0 };
	ld	hl,#_tri_lookup_x
	call	__initrleblock
	.db	#-32,#0x00
	.db	0
;demo.c:186: int twelvetimes[26] = { 0 };
	ld	hl,#_twelvetimes
	call	__initrleblock
	.db	#-52,#0x00
	.db	0
;demo.c:187: int eighttimes[26] = { 0 };
	ld	hl,#_eighttimes
	call	__initrleblock
	.db	#-52,#0x00
	.db	0
;demo.c:189: int tri_lookup_y[16*2] = { 0 };
	ld	hl,#_tri_lookup_y
	call	__initrleblock
	.db	#-64,#0x00
	.db	0
;demo.c:191: uint8_t packbuffer[4724] = {0};
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
	.db	#-25,#0x00
	.db	0
;demo.c:202: volatile int vbicount=0;
	ld	iy,#_vbicount
	ld	0 (iy),#0x00
	ld	iy,#_vbicount
	ld	1 (iy),#0x00
;demo.c:203: volatile int tick=0;
	ld	iy,#_tick
	ld	0 (iy),#0x00
	ld	iy,#_tick
	ld	1 (iy),#0x00
;demo.c:208: void (*scenepointers[12])() = {
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
;demo.c:222: int scenetimings[24] = {
	ld	hl,#_scenetimings
	call	__initrleblock
	.db	48
	.db	0x00, 0x00, 0xAA, 0x00, 0xAA, 0x00, 0x5E, 0x01
	.db	0xEE, 0x02, 0x14, 0x05, 0x14, 0x05, 0xFC, 0x08
	.db	0xFC, 0x08, 0x39, 0x0E, 0x39, 0x0E, 0x68, 0x10
	.db	0x68, 0x10, 0xAE, 0x15, 0xAE, 0x15, 0xD4, 0x17
	.db	0xD4, 0x17, 0xD5, 0x20, 0xD5, 0x20, 0x74, 0x27
	.db	0x74, 0x27, 0xA0, 0x86, 0x00, 0x00, 0x00, 0x00
	.db	0
;demo.c:382: int slowend = 9;
	ld	iy,#_slowend
	ld	0 (iy),#0x09
	ld	iy,#_slowend
	ld	1 (iy),#0x00
;demo.c:384: uint8_t yofff = 0;
	ld	iy,#_yofff
	ld	0 (iy),#0x00
;demo.c:385: uint8_t cc = 0;
	ld	iy,#_cc
	ld	0 (iy),#0x00
;demo.c:386: static int flipper = 0;
	ld	iy,#_flipper
	ld	0 (iy),#0x00
	ld	iy,#_flipper
	ld	1 (iy),#0x00
;demo.c:387: static int ymmmf = 0;
	ld	iy,#_ymmmf
	ld	0 (iy),#0x00
	ld	iy,#_ymmmf
	ld	1 (iy),#0x00
;demo.c:392: char block_init = 0;
	ld	iy,#_block_init
	ld	0 (iy),#0x00
;demo.c:394: int bsx = 0;
	ld	iy,#_bsx
	ld	0 (iy),#0x00
	ld	iy,#_bsx
	ld	1 (iy),#0x00
;demo.c:395: int bsy = 0;
	ld	iy,#_bsy
	ld	0 (iy),#0x00
	ld	iy,#_bsy
	ld	1 (iy),#0x00
;demo.c:396: int btx = 0;
	ld	iy,#_btx
	ld	0 (iy),#0x00
	ld	iy,#_btx
	ld	1 (iy),#0x00
;demo.c:397: int bty = 0;
	ld	iy,#_bty
	ld	0 (iy),#0x00
	ld	iy,#_bty
	ld	1 (iy),#0x00
;demo.c:399: int btab[16] = {0};
	ld	hl,#_btab
	call	__initrleblock
	.db	#-32,#0x00
	.db	0
;demo.c:401: int flof = 0;
	ld	iy,#_flof
	ld	0 (iy),#0x00
	ld	iy,#_flof
	ld	1 (iy),#0x00
;demo.c:406: int linenum = 0;
	ld	iy,#_linenum
	ld	0 (iy),#0x00
	ld	iy,#_linenum
	ld	1 (iy),#0x00
;demo.c:436: uint8_t lx = 0;
	ld	iy,#_lx
	ld	0 (iy),#0x00
;demo.c:437: uint8_t ly = 0;
	ld	iy,#_ly
	ld	0 (iy),#0x00
;demo.c:438: int ff = 0;
	ld	iy,#_ff
	ld	0 (iy),#0x00
	ld	iy,#_ff
	ld	1 (iy),#0x00
;demo.c:439: int ffz = 0;
	ld	iy,#_ffz
	ld	0 (iy),#0x00
	ld	iy,#_ffz
	ld	1 (iy),#0x00
;demo.c:440: int bigtextp = 0;
	ld	iy,#_bigtextp
	ld	0 (iy),#0x00
	ld	iy,#_bigtextp
	ld	1 (iy),#0x00
;demo.c:568: int ltrpointer = 0;
	ld	iy,#_ltrpointer
	ld	0 (iy),#0x00
	ld	iy,#_ltrpointer
	ld	1 (iy),#0x00
;demo.c:641: int twinited = 0;
	ld	iy,#_twinited
	ld	0 (iy),#0x00
	ld	iy,#_twinited
	ld	1 (iy),#0x00
;demo.c:642: int twialku = 2;
	ld	iy,#_twialku
	ld	0 (iy),#0x02
	ld	iy,#_twialku
	ld	1 (iy),#0x00
;demo.c:718: int bulbflipper = 1;
	ld	iy,#_bulbflipper
	ld	0 (iy),#0x01
	ld	iy,#_bulbflipper
	ld	1 (iy),#0x00
;demo.c:720: int ff1,ff2 = 0;
	ld	iy,#_ff2
	ld	0 (iy),#0x00
	ld	iy,#_ff2
	ld	1 (iy),#0x00
;demo.c:721: int ender = 212;
	ld	iy,#_ender
	ld	0 (iy),#0xD4
	ld	iy,#_ender
	ld	1 (iy),#0x00
;demo.c:722: int enderdir = -1;
	ld	iy,#_enderdir
	ld	0 (iy),#0xFF
	ld	iy,#_enderdir
	ld	1 (iy),#0xFF
;demo.c:723: int sy = 16;
	ld	iy,#_sy
	ld	0 (iy),#0x10
	ld	iy,#_sy
	ld	1 (iy),#0x00
;demo.c:779: static int xo = 0;
	ld	iy,#_xo
	ld	0 (iy),#0x00
	ld	iy,#_xo
	ld	1 (iy),#0x00
;demo.c:780: static int yo = 0;
	ld	iy,#_yo
	ld	0 (iy),#0x00
	ld	iy,#_yo
	ld	1 (iy),#0x00
;demo.c:781: static int po = 0;
	ld	iy,#_po
	ld	0 (iy),#0x00
	ld	iy,#_po
	ld	1 (iy),#0x00
;demo.c:782: static int frames = 0;
	ld	iy,#_frames
	ld	0 (iy),#0x00
	ld	iy,#_frames
	ld	1 (iy),#0x00
;demo.c:784: int anim_init = 0;
	ld	iy,#_anim_init
	ld	0 (iy),#0x00
	ld	iy,#_anim_init
	ld	1 (iy),#0x00
;demo.c:790: uint8_t boxes_init = 0;
	ld	iy,#_boxes_init
	ld	0 (iy),#0x00
;demo.c:791: int buffer = 1;
	ld	iy,#_buffer
	ld	0 (iy),#0x01
	ld	iy,#_buffer
	ld	1 (iy),#0x00
;demo.c:792: int prevx = -1;
	ld	iy,#_prevx
	ld	0 (iy),#0xFF
	ld	iy,#_prevx
	ld	1 (iy),#0xFF
;demo.c:794: uint8_t boxes_x[5] = {0,36,0,36,0};
	ld	hl,#_boxes_x
	call	__initrleblock
	.db	5
	.db	0x00, 0x24, 0x00, 0x24, 0x00
	.db	0
;demo.c:795: int boxes_y[5] = {768,768,768+36,768+36,0};
	ld	hl,#_boxes_y
	call	__initrleblock
	.db	10
	.db	0x00, 0x03, 0x00, 0x03, 0x24, 0x03, 0x24, 0x03
	.db	0x00, 0x00
	.db	0
;demo.c:796: uint8_t boxi = 0;
	ld	iy,#_boxi
	ld	0 (iy),#0x00
;demo.c:797: int bx = 220;
	ld	iy,#_bx
	ld	0 (iy),#0xDC
	ld	iy,#_bx
	ld	1 (iy),#0x00
;demo.c:798: int by = 84;
	ld	iy,#_by
	ld	0 (iy),#0x54
	ld	iy,#_by
	ld	1 (iy),#0x00
;demo.c:816: int bt = 0;
	ld	iy,#_bt
	ld	0 (iy),#0x00
	ld	iy,#_bt
	ld	1 (iy),#0x00
;demo.c:817: int bo = 0;
	ld	iy,#_bo
	ld	0 (iy),#0x00
	ld	iy,#_bo
	ld	1 (iy),#0x00
;demo.c:819: int bonc = 0;
	ld	iy,#_bonc
	ld	0 (iy),#0x00
	ld	iy,#_bonc
	ld	1 (iy),#0x00
;demo.c:820: int pbx = 0;
	ld	iy,#_pbx
	ld	0 (iy),#0x00
	ld	iy,#_pbx
	ld	1 (iy),#0x00
;demo.c:821: int pbt = 0;
	ld	iy,#_pbt
	ld	0 (iy),#0x00
	ld	iy,#_pbt
	ld	1 (iy),#0x00
;demo.c:823: int boxes_of[5] = {0,0,6,0,0};
	ld	hl,#_boxes_of
	call	__initrleblock
	.db	5
	.db	0x00, 0x00, 0x00, 0x00, 0x06
	.db	#-5,#0x00
	.db	0
;demo.c:824: uint8_t prevbox_of = 0;
	ld	iy,#_prevbox_of
	ld	0 (iy),#0x00
;demo.c:825: int boxticks = 0;
	ld	iy,#_boxticks
	ld	0 (iy),#0x00
	ld	iy,#_boxticks
	ld	1 (iy),#0x00
;demo.c:945: uint8_t initwave = 0;
	ld	iy,#_initwave
	ld	0 (iy),#0x00
;demo.c:946: int buf = -1;
	ld	iy,#_buf
	ld	0 (iy),#0xFF
	ld	iy,#_buf
	ld	1 (iy),#0xFF
;demo.c:947: int ffa = 0;
	ld	iy,#_ffa
	ld	0 (iy),#0x00
	ld	iy,#_ffa
	ld	1 (iy),#0x00
;demo.c:948: int firstwave = 0;
	ld	iy,#_firstwave
	ld	0 (iy),#0x00
	ld	iy,#_firstwave
	ld	1 (iy),#0x00
;demo.c:1081: uint8_t tri_inited = 0;
	ld	iy,#_tri_inited
	ld	0 (iy),#0x00
;demo.c:1096: int tilei = 0;
	ld	iy,#_tilei
	ld	0 (iy),#0x00
	ld	iy,#_tilei
	ld	1 (iy),#0x00
;demo.c:1097: int tilex = 0;
	ld	iy,#_tilex
	ld	0 (iy),#0x00
	ld	iy,#_tilex
	ld	1 (iy),#0x00
;demo.c:1098: int tiley = 0;
	ld	iy,#_tiley
	ld	0 (iy),#0x00
	ld	iy,#_tiley
	ld	1 (iy),#0x00
;demo.c:1099: uint8_t tiletick = 0;
	ld	iy,#_tiletick
	ld	0 (iy),#0x00
;demo.c:1129: char tripal[9] = {
	ld	hl,#_tripal
	call	__initrleblock
	.db	9
	.db	0x02, 0x02, 0x01, 0x01, 0x02, 0x03, 0x00, 0x04
	.db	0x02
	.db	0
;demo.c:1135: uint8_t tripaltick = 0;
	ld	iy,#_tripaltick
	ld	0 (iy),#0x00
;demo.c:1136: uint8_t tripaltick2 = 0;
	ld	iy,#_tripaltick2
	ld	0 (iy),#0x00
;demo.c:1138: int triframes = 0;
	ld	iy,#_triframes
	ld	0 (iy),#0x00
	ld	iy,#_triframes
	ld	1 (iy),#0x00
;demo.c:1303: int powatick = 0;
	ld	iy,#_powatick
	ld	0 (iy),#0x00
	ld	iy,#_powatick
	ld	1 (iy),#0x00
;demo.c:1304: int powa = 0;
	ld	iy,#_powa
	ld	0 (iy),#0x00
	ld	iy,#_powa
	ld	1 (iy),#0x00
;demo.c:1305: uint8_t onceclear = 255;
	ld	iy,#_onceclear
	ld	0 (iy),#0xFF
;demo.c:1307: int stereodone = 0;
	ld	iy,#_stereodone
	ld	0 (iy),#0x00
	ld	iy,#_stereodone
	ld	1 (iy),#0x00
;demo.c:1358: uint8_t initpoints = 0;
	ld	iy,#_initpoints
	ld	0 (iy),#0x00
;demo.c:1359: int pointframe = 0;
	ld	iy,#_pointframe
	ld	0 (iy),#0x00
	ld	iy,#_pointframe
	ld	1 (iy),#0x00
;demo.c:1362: int greetindex = 0;
	ld	iy,#_greetindex
	ld	0 (iy),#0x00
	ld	iy,#_greetindex
	ld	1 (iy),#0x00
;demo.c:1650: int initcredits = 0;
	ld	iy,#_initcredits
	ld	0 (iy),#0x00
	ld	iy,#_initcredits
	ld	1 (iy),#0x00
;demo.c:1651: int credittimer = 0;
	ld	iy,#_credittimer
	ld	0 (iy),#0x00
	ld	iy,#_credittimer
	ld	1 (iy),#0x00
;demo.c:1652: int musicstopped = 0;
	ld	iy,#_musicstopped
	ld	0 (iy),#0x00
	ld	iy,#_musicstopped
	ld	1 (iy),#0x00
;demo.c:1653: int flipo = 0;
	ld	iy,#_flipo
	ld	0 (iy),#0x00
	ld	iy,#_flipo
	ld	1 (iy),#0x00
;demo.c:1654: int curpage = 0;
	ld	iy,#_curpage
	ld	0 (iy),#0x00
	ld	iy,#_curpage
	ld	1 (iy),#0x00
;demo.c:1655: int myoffs = 0;
	ld	iy,#_myoffs
	ld	0 (iy),#0x00
	ld	iy,#_myoffs
	ld	1 (iy),#0x00
;demo.c:1816: int sceneindex = 0;
	ld	iy,#_sceneindex
	ld	0 (iy),#0x00
	ld	iy,#_sceneindex
	ld	1 (iy),#0x00
;demo.c:1817: int timeindex = 0;
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
;demo.c:238: int isNthBitSet (unsigned char c, int n) {
;	---------------------------------
; Function isNthBitSet
; ---------------------------------
_isNthBitSet_start::
_isNthBitSet:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:240: return ((c & mask[n]) != 0);
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
;demo.c:247: void my_isr(void) interrupt
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
;demo.c:249: DI;
		di 
;demo.c:251: READ_VDP_STATUS;
		in a,(#0x99) 
;demo.c:253: PLY_Play();
	call	_PLY_Play
;demo.c:254: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:256: vbicount+=1;
	ld	iy,#_vbicount
	inc	0 (iy)
	jr	NZ,00103$
	ld	iy,#_vbicount
	inc	1 (iy)
00103$:
;demo.c:257: tick++;
	ld	iy,#_tick
	inc	0 (iy)
	jr	NZ,00104$
	ld	iy,#_tick
	inc	1 (iy)
00104$:
;demo.c:259: EI;
		ei 
	pop	iy
	pop	hl
	pop	de
	pop	bc
	pop	af
	reti
_my_isr_end::
;demo.c:267: void scratch_clear() {
;	---------------------------------
; Function scratch_clear
; ---------------------------------
_scratch_clear_start::
_scratch_clear:
;demo.c:268: memset((uint8_t *) &scratch, 0, 128);
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
;demo.c:271: uint8_t pal_load(char *file_name, uint8_t ss, int debugprint) {
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
;demo.c:274: if(debugprint == 1) {
	ld	a,7 (ix)
	sub	a,#0x01
	jr	NZ,00115$
	ld	a,8 (ix)
	or	a,a
	jr	Z,00116$
00115$:
	jr	00102$
00116$:
;demo.c:275: puts("loading palfile: ");
	ld	hl,#__str_0
	push	hl
	call	_puts
	pop	af
;demo.c:276: puts(file_name);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_puts
	pop	af
;demo.c:277: puts("\r\n");
	ld	hl,#__str_1
	push	hl
	call	_puts
	pop	af
00102$:
;demo.c:280: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:281: scratch_clear();
	call	_scratch_clear
;demo.c:283: f.record_size = ss;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,6 (ix)
	ld	(de),a
;demo.c:284: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:286: memcpy(f.name, file_name, 11);
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
;demo.c:288: if (open(&f) != 0) return 0;
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
;demo.c:289: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:290: if (block_read(&f) != 0) return 0;
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
;demo.c:292: memcpy(cur_palette, scratch+7, ss);
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
;demo.c:294: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:295: return 1;
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
;demo.c:299: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;demo.c:300: uint8_t i,j,k = 0;
;demo.c:301: for (i = 0; i < 255; i++) {	
	ld	bc,#0x0000
00104$:
	ld	a,b
	sub	a,#0xFF
	ret	NC
;demo.c:302: for (j = 0; j < 255; j++) {
	ld	e,c
	ld	d,#0xFF
00103$:
;demo.c:303: k++;
	inc	e
	dec	d
;demo.c:302: for (j = 0; j < 255; j++) {
	xor	a,a
	or	a,d
	jr	NZ,00103$
;demo.c:301: for (i = 0; i < 255; i++) {	
	ld	c,e
	inc	b
	jr	00104$
_pause_end::
;demo.c:309: uint8_t raw_load(char *file_name, int size, char* buffer, int debugprint) {
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
;demo.c:314: if(debugprint == 1) {
	ld	a,10 (ix)
	sub	a,#0x01
	jr	NZ,00120$
	ld	a,11 (ix)
	or	a,a
	jr	Z,00121$
00120$:
	jr	00102$
00121$:
;demo.c:315: puts("loading rawfile: ");
	ld	hl,#__str_2
	push	hl
	call	_puts
	pop	af
;demo.c:316: puts(file_name);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_puts
	pop	af
;demo.c:317: puts("\r\n");
	ld	hl,#__str_3
	push	hl
	call	_puts
	pop	af
00102$:
;demo.c:320: memset((uint8_t *) &f, 0, sizeof(fcb));
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
;demo.c:321: scratch_clear();
	call	_scratch_clear
;demo.c:323: f.record_size = 128;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	hl,#0x000F
	add	hl,bc
	ex	de,hl
	ld	a,#0x80
	ld	(de),a
;demo.c:324: f.drive = 0;
	ld	a,#0x00
	ld	(bc),a
;demo.c:326: memcpy(f.name, file_name, 11);
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
;demo.c:328: if (open(&f) != 0) return 0;
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
;demo.c:330: while(total < size) {
00119$:
	ld	bc,#0x0000
00109$:
	ld	a,c
	sub	a,6 (ix)
	ld	a,b
	sbc	a,7 (ix)
	jp	P,00111$
;demo.c:331: if (block_set_data_ptr(scratch) != 0) return 0;
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
;demo.c:332: if (block_read(&f) != 0) return 0;
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
;demo.c:334: memcpy(buffer+total,scratch,incr);
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
;demo.c:336: total+=incr;
	ld	hl,#0x0080
	add	hl,bc
	ld	c,l
	ld	b,h
	jp	00109$
00111$:
;demo.c:339: close(&f);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	call	_close
	pop	af
;demo.c:341: return 1;
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
;demo.c:344: void pck_load(char *file_name, int size, uint16_t address, int vram_offset, int debugprint) {
;	---------------------------------
; Function pck_load
; ---------------------------------
_pck_load_start::
_pck_load:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:345: if(debugprint == 1) {
	ld	a,12 (ix)
	sub	a,#0x01
	jr	NZ,00106$
	ld	a,13 (ix)
	or	a,a
	jr	Z,00107$
00106$:
	jr	00102$
00107$:
;demo.c:346: puts("loading pckfile: ");
	ld	hl,#__str_4
	push	hl
	call	_puts
	pop	af
;demo.c:347: puts(file_name);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_puts
	pop	af
;demo.c:348: puts("\r\n");
	ld	hl,#__str_5
	push	hl
	call	_puts
	pop	af
00102$:
;demo.c:350: memset((uint8_t *) &packbuffer, 0, size);
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
;demo.c:351: raw_load(file_name, size, packbuffer,0);
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
;demo.c:352: bitbuster(packbuffer,address,vram_offset);
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
;demo.c:355: void fadein() {
;	---------------------------------
; Function fadein
; ---------------------------------
_fadein_start::
_fadein:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:358: if (tick < 8) return;
	ld	a,(#_tick+0)
	sub	a,#0x08
	ld	a,(#_tick+1)
	sbc	a,#0x00
	jp	P,00102$
	jp	00113$
00102$:
;demo.c:360: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:362: for(i = 0; i < 32; i+=2) {
	ld	c,#0x00
00109$:
	ld	a,c
	sub	a,#0x20
	jp	NC,00112$
;demo.c:363: uint8_t r = scratch[i] >> 4;
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
;demo.c:364: uint8_t b = scratch[i] & 0xf;
	ld	a,b
	and	a,#0x0F
	ld	-1 (ix),a
;demo.c:365: uint8_t g = scratch[i+1];
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
;demo.c:367: if (r < (cur_palette[i] >> 4)) r++;
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
;demo.c:368: if (b < (cur_palette[i] & 0xf)) b++;
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
;demo.c:370: scratch[i] = (r << 4) | b;
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
;demo.c:371: if (g < cur_palette[i+1]) scratch[i+1]++;
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
;demo.c:362: for(i = 0; i < 32; i+=2) {
	inc	c
	inc	c
	jp	00109$
00112$:
;demo.c:375: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00113$:
	ld	sp,ix
	pop	ix
	ret
_fadein_end::
;demo.c:389: void do_ymmm() {
;	---------------------------------
; Function do_ymmm
; ---------------------------------
_do_ymmm_start::
_do_ymmm:
;demo.c:390: }
	ret
_do_ymmm_end::
;demo.c:403: void do_blocks() {
;	---------------------------------
; Function do_blocks
; ---------------------------------
_do_blocks_start::
_do_blocks:
;demo.c:404: }
	ret
_do_blocks_end::
;demo.c:408: void raster_effu() {
;	---------------------------------
; Function raster_effu
; ---------------------------------
_raster_effu_start::
_raster_effu:
;demo.c:409: }
	ret
_raster_effu_end::
;demo.c:443: void do_2xletter(char cc) {
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
;demo.c:444: int cidx = cc - 65;
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
;demo.c:447: for (y=0;y<8;y++) {
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
00107$:
	ld	a,-6 (ix)
	sub	a,#0x08
	ld	a,-5 (ix)
	sbc	a,#0x00
	jp	P,00110$
;demo.c:448: for (x=0;x<font_w[cidx];x++) {
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	-12 (ix),#0x00
	ld	-11 (ix),#0x00
00103$:
	ld	a,(de)
	ld	c,a
	ld	b,#0x00
	ld	a,-4 (ix)
	sub	a,c
	ld	a,-3 (ix)
	sbc	a,b
	jp	P,00118$
;demo.c:449: cmd.source_x = 127+font_x[cidx]+x;
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
;demo.c:450: cmd.source_y = 512+font_y[cidx]+y;
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
;demo.c:451: cmd.size_x = 1;
	ld	hl, #_cmd + 8
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:452: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:453: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:454: cmd.command = 0x40; // get pixel
	ld	a,#0x40
	ld	(#_cmd + 14),a
;demo.c:455: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:457: col = vdp2_status(7);
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
;demo.c:459: cmd.data = col;
	ld	bc,#_cmd + 12
	ld	a,-8 (ix)
	ld	(bc),a
;demo.c:460: cmd.dest_x = lx+x*3;
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
;demo.c:461: cmd.dest_y = ly+y*3;
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
;demo.c:464: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:465: cmd.command = 0x50; // rect
	ld	a,#0x50
	ld	(#_cmd + 14),a
;demo.c:466: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:467: cmd.dest_x = 1+lx+x*3;
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
;demo.c:468: cmd.dest_y = ly+y*3;
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
;demo.c:469: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:470: cmd.dest_x = 1+lx+x*3;
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
;demo.c:471: cmd.dest_y = 1+ly+y*3;
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
;demo.c:472: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:473: cmd.dest_x = lx+x*3;
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
;demo.c:474: cmd.dest_y = 1+ly+y*3;
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
;demo.c:475: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:448: for (x=0;x<font_w[cidx];x++) {
	ld	a,-12 (ix)
	add	a,#0x03
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a,#0x00
	ld	-11 (ix),a
	inc	-4 (ix)
	jr	NZ,00120$
	inc	-3 (ix)
00120$:
	jp	00103$
00118$:
	ld	a,-4 (ix)
	ld	-14 (ix),a
	ld	a,-3 (ix)
	ld	-13 (ix),a
;demo.c:477: waitVB();
		halt 
;demo.c:478: if (bigtextp > 0) {
	ld	a,#0x00
	ld	iy,#_bigtextp
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_bigtextp
	sbc	a,1 (iy)
	jp	P,00109$
;demo.c:479: msx2_palette(4,ffz>>4,ffz>>4,ffz>>4);
	ld	hl,#_ffz + 0
	ld	c,(hl)
	ld	hl,#_ffz + 1
	ld	b,(hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	push	de
	ld	a,c
	ld	b,a
	push	bc
	ld	b,c
	ld	c,#0x04
	push	bc
	call	_msx2_palette
	pop	af
	pop	af
	pop	de
;demo.c:480: ffz+=2;			
	ld	hl,#_ffz
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
00109$:
;demo.c:447: for (y=0;y<8;y++) {
	ld	a,-10 (ix)
	add	a,#0x03
	ld	-10 (ix),a
	ld	a,-9 (ix)
	adc	a,#0x00
	ld	-9 (ix),a
	inc	-6 (ix)
	jr	NZ,00122$
	inc	-5 (ix)
00122$:
	jp	00107$
00110$:
;demo.c:484: lx+=font_w[cidx]-1+(x*4);
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
;demo.c:487: void do_colorletter(char cc) {
;	---------------------------------
; Function do_colorletter
; ---------------------------------
_do_colorletter_start::
_do_colorletter:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;demo.c:488: int cidx = cc - 65;
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
;demo.c:491: for (y=0;y<8;y++) {
	ld	a,#<_font_w
	add	a,-2 (ix)
	ld	e,a
	ld	a,#>_font_w
	adc	a,-1 (ix)
	ld	d,a
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
00109$:
	ld	a,-6 (ix)
	sub	a,#0x08
	ld	a,-5 (ix)
	sbc	a,#0x00
	jp	P,00112$
;demo.c:492: for (x=0;x<font_w[cidx];x++) {
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
00105$:
	ld	a,(de)
	ld	c,a
	ld	b,#0x00
	ld	a,-4 (ix)
	sub	a,c
	ld	a,-3 (ix)
	sbc	a,b
	jp	P,00108$
;demo.c:493: cmd.source_x = 127+font_x[cidx]+x;
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
;demo.c:494: cmd.source_y = 512+font_y[cidx]+y;
	inc	hl
	ld	-8 (ix),l
	ld	-7 (ix),h
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
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:495: cmd.size_x = 1;
	ld	hl, #_cmd + 8
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:496: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:497: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:498: cmd.command = 0x40; // get pixel
	ld	a,#0x40
	ld	(#_cmd + 14),a
;demo.c:499: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:501: col = vdp2_status(7);
	push	de
	ld	a,#0x07
	push	af
	inc	sp
	call	_vdp2_status
	inc	sp
	ld	c,l
	pop	de
	ld	b,#0x00
;demo.c:503: if (col == 0 || col == 4) continue;
	ld	a,c
	or	a,b
	jp	Z,00107$
	ld	a,c
	sub	a,#0x04
	jr	NZ,00123$
	ld	a,b
	or	a,a
	jp	Z,00107$
00123$:
;demo.c:504: else cmd.data = 0xf;
	ld	a,#0x0F
	ld	(#_cmd + 12),a
;demo.c:505: cmd.dest_x = lx+x;
	ld	hl,#_cmd + 4
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	hl,#_lx + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-4 (ix)
	ld	c,a
	ld	a,b
	adc	a,-3 (ix)
	ld	b,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:506: cmd.dest_y = ly+y;
	ld	hl,#_cmd + 6
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	hl,#_ly + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-6 (ix)
	ld	c,a
	ld	a,b
	adc	a,-5 (ix)
	ld	b,a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:509: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:510: cmd.command = 0x50; // rect
	ld	a,#0x50
	ld	(#_cmd + 14),a
;demo.c:511: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:513: cmd.data = 5;
	ld	a,#0x05
	ld	(#_cmd + 12),a
;demo.c:514: cmd.dest_x = lx+x+1;
	ld	hl,#_cmd + 4
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	hl,#_lx + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-4 (ix)
	ld	c,a
	ld	a,b
	adc	a,-3 (ix)
	ld	b,a
	inc	bc
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:515: cmd.dest_y = ly+y+1;
	ld	hl,#_cmd + 6
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	hl,#_ly + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	a,c
	add	a,-6 (ix)
	ld	c,a
	ld	a,b
	adc	a,-5 (ix)
	ld	b,a
	inc	bc
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:516: cmd.command = 0x50; // rect
	ld	a,#0x50
	ld	(#_cmd + 14),a
;demo.c:517: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
00107$:
;demo.c:492: for (x=0;x<font_w[cidx];x++) {
	inc	-4 (ix)
	jr	NZ,00124$
	inc	-3 (ix)
00124$:
	jp	00105$
00108$:
;demo.c:520: waitVB();
		halt 
;demo.c:491: for (y=0;y<8;y++) {
	inc	-6 (ix)
	jr	NZ,00125$
	inc	-5 (ix)
00125$:
	jp	00109$
00112$:
;demo.c:523: lx+=font_w[cidx]-1;
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
_do_colorletter_end::
;demo.c:527: void do_letter(char cc) {
;	---------------------------------
; Function do_letter
; ---------------------------------
_do_letter_start::
_do_letter:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:528: int cidx = cc - 65;
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
;demo.c:529: cmd.source_x = 127+font_x[cidx];
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
;demo.c:530: cmd.source_y = 512+font_y[cidx];
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
;demo.c:531: cmd.dest_x = lx;
	ld	bc,#_cmd + 4
	ld	hl,#_lx + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:532: cmd.dest_y = ly;
	ld	bc,#_cmd + 6
	ld	hl,#_ly + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:533: cmd.size_x = font_w[cidx];
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
;demo.c:534: cmd.size_y = 8;
	ld	hl, #_cmd + 10
	ld	(hl),#0x08
	inc	hl
	ld	(hl),#0x00
;demo.c:535: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:536: cmd.command = 0x90; // logical vram to vram
	ld	a,#0x90
	ld	(#_cmd + 14),a
;demo.c:537: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:538: lx+=font_w[cidx]-1;
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
;demo.c:542: void do_letter_tall(char cc) {
;	---------------------------------
; Function do_letter_tall
; ---------------------------------
_do_letter_tall_start::
_do_letter_tall:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:543: int cidx = cc - 65;
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
;demo.c:544: cmd.source_x = 127+font_x[cidx];
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
;demo.c:545: cmd.source_y = 512+font_y[cidx];
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
;demo.c:546: cmd.dest_x = lx;
	ld	bc,#_cmd + 4
	ld	hl,#_lx + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:547: cmd.dest_y = ly;
	ld	bc,#_cmd + 6
	ld	hl,#_ly + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:548: cmd.size_x = font_w[cidx];
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
;demo.c:549: cmd.size_y = 8;
	ld	hl, #_cmd + 10
	ld	(hl),#0x08
	inc	hl
	ld	(hl),#0x00
;demo.c:550: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:551: cmd.command = 0x90; // logical vram to vram
	ld	a,#0x90
	ld	(#_cmd + 14),a
;demo.c:552: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:553: lx+=font_w[cidx]-1;
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
;demo.c:556: void drawstr(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstr
; ---------------------------------
_drawstr_start::
_drawstr:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:557: char* c = str;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:558: lx = x;
	ld	e,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), e
;demo.c:559: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:560: while (*c) {
00107$:
	ld	a,(bc)
	ld	d,a
	or	a,a
	jr	Z,00110$
;demo.c:561: char ltr = *c++; 
	inc	bc
;demo.c:562: if (ltr == ' ') lx+=4;
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
;demo.c:563: else if (ltr == '_') { ly+=9; lx = x; }
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
;demo.c:564: else do_letter(ltr);
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
;demo.c:570: void drawstrslow(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstrslow
; ---------------------------------
_drawstrslow_start::
_drawstrslow:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:571: char* c = str+ltrpointer;
	ld	hl,#_ltrpointer
	ld	a,4 (ix)
	add	a,(hl)
	ld	c,a
	ld	a,5 (ix)
	inc	hl
	adc	a,(hl)
	ld	b,a
;demo.c:572: if (ltrpointer > slowend) return;
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
;demo.c:573: if (ltrpointer == 0) {
	ld	a,(#_ltrpointer+0)
	ld	hl,#_ltrpointer + 1
	or	a,(hl)
	jr	NZ,00111$
;demo.c:574: lx = x;
	ld	a,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), a
;demo.c:575: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:577: while (*c) {
00111$:
	ld	a,(bc)
	ld	c,a
	or	a,a
	jr	Z,00113$
;demo.c:578: char ltr = *c++; 
;demo.c:579: if (ltr == ' ') lx+=4;
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
;demo.c:580: else if (ltr == '_') { ly+=9; lx = x; }
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
;demo.c:581: else do_letter(ltr);
	ld	a,c
	push	af
	inc	sp
	call	_do_letter
	inc	sp
;demo.c:582: break;
00113$:
;demo.c:585: ltrpointer++;
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
;demo.c:588: void drawstrslowcolor(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstrslowcolor
; ---------------------------------
_drawstrslowcolor_start::
_drawstrslowcolor:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:589: char* c = str;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:590: lx = x;
	ld	e,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), e
;demo.c:591: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:592: while (*c) {
00107$:
	ld	a,(bc)
	ld	d,a
	or	a,a
	jr	Z,00110$
;demo.c:593: char ltr = *c++; 
	inc	bc
;demo.c:594: if (ltr == ' ') lx+=4;
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
;demo.c:595: else if (ltr == '_') { ly+=9; lx = x; }
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
;demo.c:596: else do_colorletter(ltr);
	push	bc
	push	de
	push	de
	inc	sp
	call	_do_colorletter
	inc	sp
	pop	de
	pop	bc
	jr	00107$
00110$:
	pop	ix
	ret
_drawstrslowcolor_end::
;demo.c:602: void drawstr2x(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawstr2x
; ---------------------------------
_drawstr2x_start::
_drawstr2x:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:603: char* c = str;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:604: lx = x;
	ld	e,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), e
;demo.c:605: ly = y;
	ld	a,7 (ix)
	ld	hl,#_ly + 0
	ld	(hl), a
;demo.c:606: while (*c) {
00107$:
	ld	a,(bc)
	ld	d,a
	or	a,a
	jr	Z,00110$
;demo.c:607: char ltr = *c++; 
	inc	bc
;demo.c:608: if (ltr == ' ') lx+=4*4;
	ld	a,d
	sub	a,#0x20
	jr	NZ,00105$
	ld	hl,#_lx
	ld	a,(hl)
	add	a,#0x10
	ld	(hl),a
	jr	00107$
00105$:
;demo.c:609: else if (ltr == '_') { ly+=9*4; lx = x; }
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
;demo.c:610: else do_2xletter(ltr);
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
;demo.c:615: void drawsine(char* str, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawsine
; ---------------------------------
_drawsine_start::
_drawsine:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:616: char* c = str+ltrpointer;
	ld	hl,#_ltrpointer
	ld	a,4 (ix)
	add	a,(hl)
	ld	c,a
	ld	a,5 (ix)
	inc	hl
	adc	a,(hl)
	ld	b,a
;demo.c:617: if (ltrpointer > slowend) return;
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
;demo.c:618: if (ltrpointer == 0) {
	ld	a,(#_ltrpointer+0)
	ld	hl,#_ltrpointer + 1
	or	a,(hl)
	jr	NZ,00111$
;demo.c:619: lx = x;
	ld	a,6 (ix)
	ld	hl,#_lx + 0
	ld	(hl), a
;demo.c:621: while (*c) {
00111$:
	ld	a,(bc)
	ld	c,a
	or	a,a
	jp	Z,00113$
;demo.c:622: char ltr = *c++; 
;demo.c:623: ly = y+(sintabx[(lx+10>>1) & 255]>>4);
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
;demo.c:625: if (ltr == ' ') lx+=4;
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
;demo.c:626: else if (ltr == '_') { ly+=9; lx = x; }
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
;demo.c:627: else do_letter_tall(ltr);
	ld	a,c
	push	af
	inc	sp
	call	_do_letter_tall
	inc	sp
;demo.c:628: break;
00113$:
;demo.c:631: ltrpointer++;
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
;demo.c:634: void font() {
;	---------------------------------
; Function font
; ---------------------------------
_font_start::
_font:
;demo.c:635: slowend = 128;
	ld	hl,#_slowend + 0
	ld	(hl), #0x80
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:636: drawstrslow("DIGITAL SOUNDS SYSTEM__ IN THE HOUSE__  ON MSX__   AT REVISION__    OLDSKOOL_     DEMO_      COMPO__MAKE SOME NOISE PARTY PEOPLE",74,60);
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
;demo.c:643: void twister() {
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
;demo.c:647: if (twinited == 0) {
	ld	a,(#_twinited+0)
	ld	hl,#_twinited + 1
	or	a,(hl)
	jp	NZ,00102$
;demo.c:648: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	iy,#_ltrpointer
	ld	1 (iy),#0x00
;demo.c:650: cmd.size_x = 74;
	ld	hl, #_cmd + 8
	ld	(hl),#0x4A
	inc	hl
	ld	(hl),#0x00
;demo.c:651: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:652: cmd.data = 0;
;demo.c:653: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:654: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:655: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:656: cmd.source_y = 0;
	ld	bc,#_cmd + 2
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:658: for (y = 0; y < 106; y+=1) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00105$:
	ld	a,-2 (ix)
	sub	a,#0x6A
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00108$
;demo.c:659: waitVB();
		halt 
;demo.c:660: cmd.dest_x = 0;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:661: cmd.dest_y = 106+y;
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
;demo.c:662: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:663: cmd.dest_x = 256-74;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:664: cmd.dest_y = 106+y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:665: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:667: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:668: cmd.dest_y = 106-y;
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
;demo.c:669: vdp_copier(&cmd);
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
;demo.c:670: cmd.dest_x = 256-74;
	ld	hl, #_cmd + 4
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:671: cmd.dest_y = 106-y;
	ld	hl, #_cmd + 6
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:672: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:658: for (y = 0; y < 106; y+=1) {
	inc	-2 (ix)
	jr	NZ,00130$
	inc	-1 (ix)
00130$:
	jp	00105$
00108$:
;demo.c:676: cmd.dest_x = 72;
	ld	hl, #_cmd + 4
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:677: cmd.size_x = 140;
	ld	hl, #_cmd + 8
	ld	(hl),#0x8C
	inc	hl
	ld	(hl),#0x00
;demo.c:678: cmd.size_y = 2;
	ld	hl, #_cmd + 10
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:679: for (y = 212-2; y >= 0; y-=2) {
	ld	bc,#0x00D2
00109$:
	ld	a,b
	bit	7,a
	jr	NZ,00112$
;demo.c:680: waitVB();
		halt 
;demo.c:681: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:682: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:679: for (y = 212-2; y >= 0; y-=2) {
	dec	bc
	dec	bc
	jr	00109$
00112$:
;demo.c:685: twinited = 1;
	ld	hl,#_twinited + 0
	ld	(hl), #0x01
	ld	hl,#_twinited + 1
	ld	(hl), #0x00
;demo.c:686: vdp_load_palette(twister_palette);
	ld	hl,#_twister_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:687: drawstr2x("DSS",80,15);
	ld	hl,#0x0F50
	push	hl
	ld	hl,#__str_7
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
00102$:
;demo.c:691: cmd.size_x = 70;
	ld	hl, #_cmd + 8
	ld	(hl),#0x46
	inc	hl
	ld	(hl),#0x00
;demo.c:692: cmd.size_y = 2;
	ld	hl, #_cmd + 10
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:693: cmd.data = 0;
	ld	a,#0x00
	ld	(#_cmd + 12),a
;demo.c:694: cmd.argument = 0x04; // from 70xY to left
	ld	a,#0x04
	ld	(#_cmd + 13),a
;demo.c:695: cmd.command = 0xe0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xE0
	ld	(bc),a
;demo.c:696: cmd.source_x = 70;
	ld	hl,#_cmd
	ld	(hl),#0x46
	inc	hl
	ld	(hl),#0x00
;demo.c:697: cmd.dest_x = 70;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x46
	inc	hl
	ld	(hl),#0x00
;demo.c:699: twialku++;
	ld	iy,#_twialku
	inc	0 (iy)
	jr	NZ,00131$
	ld	iy,#_twialku
	inc	1 (iy)
00131$:
;demo.c:701: if (twialku > 212) twialku = 212;
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
;demo.c:703: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(bc),a
;demo.c:704: for (y = 104-(twialku>>1); y < 106+(twialku>>1); y+=2) {
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
;demo.c:705: cmd.source_y = ((sintab[(ff+(y>>1)) & 255])>>1)+512+80;
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
;demo.c:706: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:707: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:704: for (y = 104-(twialku>>1); y < 106+(twialku>>1); y+=2) {
	inc	bc
	inc	bc
	jp	00113$
00116$:
;demo.c:710: msx2_palette(4,PLY_PSGReg8+ff>>2,PLY_PSGReg9+ff>>3,ff>>2);
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
;demo.c:712: font();
	call	_font
;demo.c:714: ff+=4;
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
;demo.c:725: void bulbs() {
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
;demo.c:729: ender+=enderdir;
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
;demo.c:730: if (ender < 2) { enderdir = -enderdir; }
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
;demo.c:731: if (ender >= 212) { enderdir = -enderdir;  sy -= 2; }
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
;demo.c:733: enderend = ender + 92;
	ld	a,(#_ender+0)
	add	a,#0x5C
	ld	-2 (ix),a
	ld	a,(#_ender+1)
	adc	a,#0x00
	ld	-1 (ix),a
;demo.c:735: if (enderend > 212) enderend = 212;
	ld	a,#0xD4
	sub	a,-2 (ix)
	ld	a,#0x00
	sbc	a,-1 (ix)
	jp	P,00106$
	ld	-2 (ix),#0xD4
	ld	-1 (ix),#0x00
00106$:
;demo.c:736: if (enderend > 212-16) sy = 16-(212-enderend);
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
;demo.c:738: if(bulbflipper == 1) {
	ld	a,(#_bulbflipper+0)
	sub	a,#0x01
	jr	NZ,00133$
	ld	a,(#_bulbflipper+1)
	or	a,a
	jr	Z,00134$
00133$:
	jp	00110$
00134$:
;demo.c:739: cmd.size_x = 72;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:740: cmd.size_y = sy;
	ld	de,#_cmd + 10
	ld	bc,(_sy)
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:741: cmd.data = 0;
	ld	a,#0x00
	ld	(#_cmd + 12),a
;demo.c:742: cmd.argument = 0x04; // from 72xY to left
	ld	a,#0x04
	ld	(#_cmd + 13),a
;demo.c:743: cmd.command = 0xe0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xE0
	ld	(bc),a
;demo.c:744: cmd.source_x = 72;
	ld	hl,#_cmd
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:745: cmd.dest_x = 72;
	ld	hl, #_cmd + 4
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:747: for (y = ender; y < enderend; y+=16) {
	ld	bc,(_ender)
	ld	-4 (ix),c
	ld	-3 (ix),b
00112$:
	ld	a,-4 (ix)
	sub	a,-2 (ix)
	ld	a,-3 (ix)
	sbc	a,-1 (ix)
	jp	P,00115$
;demo.c:748: cmd.source_y = ((sintab[(ff1+(y)) & 255])>>1)+320;
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
;demo.c:749: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	a,-4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-3 (ix)
	ld	(hl),a
;demo.c:750: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:747: for (y = ender; y < enderend; y+=16) {
	ld	a,-4 (ix)
	add	a,#0x10
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a,#0x00
	ld	-3 (ix),a
	jp	00112$
00115$:
;demo.c:752: ff1+=4;
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
;demo.c:756: cmd.size_x = 72;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:757: cmd.size_y = sy;
	ld	bc,#_cmd + 10
	ld	de,(_sy)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:758: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:759: cmd.argument = 0x00; // from 182xY to right
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:760: cmd.command = 0xe0; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0xE0
	ld	(de),a
;demo.c:761: cmd.source_x = 182;
	ld	hl,#_cmd
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:762: cmd.dest_x = 182;
	ld	de,#_cmd + 4
	ld	l,e
	ld	h,d
	ld	(hl),#0xB6
	inc	hl
	ld	(hl),#0x00
;demo.c:764: for (y = ender; y < enderend; y+=16) {
	ld	bc,(_ender)
00116$:
	ld	a,c
	sub	a,-2 (ix)
	ld	a,b
	sbc	a,-1 (ix)
	jp	P,00119$
;demo.c:765: cmd.source_y = ((sintab[(ff2+(y)) & 255])>>1)+320;
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
;demo.c:766: cmd.dest_y = y;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:767: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:764: for (y = ender; y < enderend; y+=16) {
	ld	hl,#0x0010
	add	hl,bc
	ld	c,l
	ld	b,h
	jp	00116$
00119$:
;demo.c:769: ff2+=4;
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
;demo.c:772: bulbflipper = -bulbflipper;
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
;demo.c:786: void animplay() {
;	---------------------------------
; Function animplay
; ---------------------------------
_animplay_start::
_animplay:
;demo.c:787: }
	ret
_animplay_end::
;demo.c:800: void drawbox(uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawbox
; ---------------------------------
_drawbox_start::
_drawbox:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:801: cmd.source_x = boxes_x[boxi];
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
;demo.c:802: cmd.source_y = boxes_y[boxi];
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
;demo.c:803: cmd.dest_x = x;
	ld	bc,#_cmd + 4
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:804: cmd.dest_y = y;
	ld	bc,#_cmd + 6
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:805: cmd.size_x = 36;
	ld	hl, #_cmd + 8
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:806: cmd.size_y = 36;
	ld	hl, #_cmd + 10
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:807: cmd.data = 0;
;demo.c:808: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:809: cmd.command = 0x98; // TIMP sprite
	ld	a,#0x98
	ld	(#_cmd + 14),a
;demo.c:810: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:812: prevx = x;
	ld	a,4 (ix)
	ld	hl,#_prevx + 0
	ld	(hl), a
	ld	hl,#_prevx + 1
	ld	(hl), #0x00
;demo.c:813: prevy = y;
	ld	a,5 (ix)
	ld	hl,#_prevy + 0
	ld	(hl), a
	ld	hl,#_prevy + 1
	ld	(hl), #0x00
	pop	ix
	ret
_drawbox_end::
;demo.c:827: void boxes() {
;	---------------------------------
; Function boxes
; ---------------------------------
_boxes_start::
_boxes:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:831: if (bx < 0) return;
	ld	iy,#_bx
	bit	7,1 (iy)
	jp	NZ,00151$
;demo.c:833: if (bonc == 1) {
	ld	a,(#_bonc+0)
	sub	a,#0x01
	jr	NZ,00181$
	ld	a,(#_bonc+1)
	or	a,a
	jr	Z,00182$
00181$:
	jr	00104$
00182$:
;demo.c:835: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:836: cmd.source_y = 256;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:837: cmd.dest_x = pbx;
	ld	bc,#_cmd + 4
	ld	de,(_pbx)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:838: cmd.dest_y = pbt;
	ld	bc,#_cmd + 6
	ld	de,(_pbt)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:839: cmd.size_x = 36;
	ld	hl, #_cmd + 8
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:840: cmd.size_y = 36;
	ld	hl, #_cmd + 10
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:841: cmd.data = 0;
;demo.c:842: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:843: cmd.command = 0xD0; // HMMM
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:844: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
00104$:
;demo.c:847: if (boxes_init == 0) {
	xor	a,a
	ld	hl,#_boxes_init + 0
	or	a,(hl)
	jp	NZ,00106$
;demo.c:848: boxes_init = 1;
	ld	iy,#_boxes_init
	ld	0 (iy),#0x01
;demo.c:850: cmd.size_x = 8;
	ld	hl, #_cmd + 8
	ld	(hl),#0x08
	inc	hl
	ld	(hl),#0x00
;demo.c:851: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:852: cmd.data = 0;
;demo.c:853: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:854: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:855: cmd.source_x = 248;
	ld	hl,#_cmd
	ld	(hl),#0xF8
	inc	hl
	ld	(hl),#0x00
;demo.c:856: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:857: cmd.dest_y = 0;
	ld	bc,#_cmd + 6
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:859: for (x = 248; x >= 0; x-=8) {
	ld	-2 (ix),#0xF8
	ld	-1 (ix),#0x00
00139$:
	bit	7,-1 (ix)
	jp	NZ,00142$
;demo.c:860: msx2_palette(4,ff>>2,ff>>3,ff>>2);
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
;demo.c:861: ff+=2;
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
;demo.c:862: waitVB();
		halt 
;demo.c:863: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:864: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:865: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:866: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:867: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:859: for (x = 248; x >= 0; x-=8) {
	ld	a,-2 (ix)
	add	a,#0xF8
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	jp	00139$
00142$:
;demo.c:870: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:872: for (x=0;x < 8;x++) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00147$:
	ld	a,-2 (ix)
	sub	a,#0x08
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00150$
;demo.c:874: for (y=0;y < 9;y++) {
	ld	de,#0x0000
00143$:
	ld	a,e
	sub	a,#0x09
	ld	a,d
	sbc	a,#0x00
	jp	P,00149$
;demo.c:875: boxes_x[4] = 0;
	ld	bc,#_boxes_x + 4
	ld	a,#0x00
	ld	(bc),a
;demo.c:876: boxes_y[4] = 768+2*36;
	ld	hl, #_boxes_y + 8
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x03
;demo.c:877: boxi = 4;
	ld	hl,#_boxi + 0
	ld	(hl), #0x04
;demo.c:878: drawbox((x*36),y*18);
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
;demo.c:879: boxi = 0;
	ld	hl,#_boxi + 0
	ld	(hl), #0x00
;demo.c:874: for (y=0;y < 9;y++) {
	inc	de
	jp	00143$
00149$:
;demo.c:872: for (x=0;x < 8;x++) {
	inc	-2 (ix)
	jr	NZ,00185$
	inc	-1 (ix)
00185$:
	jp	00147$
00150$:
;demo.c:883: slowend = 43;
	ld	hl,#_slowend + 0
	ld	(hl), #0x2B
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:884: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00106$:
;demo.c:887: if (bt >= 80) bt+=8;
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
;demo.c:888: if (bt < 80 && bt >= 60) bt+=7;
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
;demo.c:889: if (bt < 60 && bt >= 40) bt+=6;
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
;demo.c:890: if (bt < 40 && bt >= 10) bt+=5;
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
;demo.c:891: if (bt < 10 ) bt+=4;
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
;demo.c:894: cmd.source_x = bx;
	ld	bc,(_bx)
	ld	hl,#_cmd
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:895: cmd.source_y = bt;
	ld	bc,#_cmd + 2
	ld	de,(_bt)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:896: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:897: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:898: cmd.size_x = 36;
	ld	hl, #_cmd + 8
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:899: cmd.size_y = 36;
	ld	hl, #_cmd + 10
	ld	(hl),#0x24
	inc	hl
	ld	(hl),#0x00
;demo.c:900: cmd.data = 0;
;demo.c:901: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:902: cmd.command = 0xD0; // HMMM
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:903: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:905: pbx = bx;
	ld	hl,(_bx)
	ld	iy,#_pbx
	ld	0 (iy),l
	ld	iy,#_pbx
	ld	1 (iy),h
;demo.c:906: pbt = bt;
	ld	hl,(_bt)
	ld	iy,#_pbt
	ld	0 (iy),l
	ld	iy,#_pbt
	ld	1 (iy),h
;demo.c:908: boxticks++;
	ld	iy,#_boxticks
	inc	0 (iy)
	jr	NZ,00186$
	ld	iy,#_boxticks
	inc	1 (iy)
00186$:
;demo.c:909: if (boxticks > 8) {
	ld	a,#0x08
	ld	iy,#_boxticks
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_boxticks
	sbc	a,1 (iy)
	jp	P,00121$
;demo.c:910: drawsine("Let us stop   We are building walls between",8,182);
	ld	hl,#0xB608
	push	hl
	ld	hl,#__str_8
	push	hl
	call	_drawsine
	pop	af
	pop	af
;demo.c:911: boxticks  = 0;
	ld	hl,#_boxticks + 0
	ld	(hl), #0x00
	ld	hl,#_boxticks + 1
	ld	(hl), #0x00
00121$:
;demo.c:914: bonc = 1;
	ld	hl,#_bonc + 0
	ld	(hl), #0x01
	ld	hl,#_bonc + 1
	ld	(hl), #0x00
;demo.c:915: if (bt > by) {
	ld	hl,#_by
	ld	a,(hl)
	ld	iy,#_bt
	sub	a,0 (iy)
	inc	hl
	ld	a,(hl)
	ld	iy,#_bt
	sbc	a,1 (iy)
	jp	P,00137$
;demo.c:916: bt = by;
	ld	hl,(_by)
	ld	iy,#_bt
	ld	0 (iy),l
	ld	iy,#_bt
	ld	1 (iy),h
;demo.c:917: drawbox(bx,bt);
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
;demo.c:918: bt = 0;
	ld	hl,#_bt + 0
	ld	(hl), #0x00
	ld	hl,#_bt + 1
	ld	(hl), #0x00
;demo.c:919: if (by > 48) {
	ld	a,#0x30
	ld	iy,#_by
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_by
	sbc	a,1 (iy)
	jp	P,00125$
;demo.c:920: bonc = 0;
	ld	hl,#_bonc + 0
	ld	(hl), #0x00
	ld	hl,#_bonc + 1
	ld	(hl), #0x00
;demo.c:921: by-=16;
	ld	hl,#_by
	ld	a,(hl)
	add	a,#0xF0
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a,#0xFF
	ld	(hl),a
;demo.c:922: prevbox_of = boxes_of[boxi];
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
;demo.c:923: by+=prevbox_of;
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
;demo.c:924: boxi++;
	ld	iy,#_boxi
	inc	0 (iy)
;demo.c:925: if (boxi >= 4) boxi = 0;
	ld	a,(#_boxi+0)
	sub	a,#0x04
	jr	C,00125$
	ld	hl,#_boxi + 0
	ld	(hl), #0x00
00125$:
;demo.c:928: if (by <= 48) {
	ld	a,#0x30
	ld	iy,#_by
	sub	a,0 (iy)
	ld	a,#0x00
	ld	iy,#_by
	sbc	a,1 (iy)
	jp	M,00151$
;demo.c:929: bx-=16;
	ld	hl,#_bx
	ld	a,(hl)
	add	a,#0xF0
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a,#0xFF
	ld	(hl),a
;demo.c:931: if (bx>128)bo+=8;
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
;demo.c:932: else bo-=8;
	ld	hl,#_bo
	ld	a,(hl)
	add	a,#0xF8
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a,#0xFF
	ld	(hl),a
00128$:
;demo.c:933: if (bo > 192) bo = 0;
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
;demo.c:934: if (bx>128)by=84+bo;
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
;demo.c:935: else by=36+36+84+bo;
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
;demo.c:938: drawbox(bx,bt);
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
;demo.c:950: void thewave() {
;	---------------------------------
; Function thewave
; ---------------------------------
_thewave_start::
_thewave:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;demo.c:959: if (initwave == 0) {
	xor	a,a
	ld	iy,#_initwave
	or	a,0 (iy)
	jp	NZ,00113$
;demo.c:960: initwave = 1;
	ld	iy,#_initwave
	ld	0 (iy),#0x01
;demo.c:961: for (y=0;y < 90;y++) {
	ld	c,#0x5A
00132$:
;demo.c:962: waitVB();
		halt 
	dec	c
;demo.c:961: for (y=0;y < 90;y++) {
	xor	a,a
	or	a,c
	jr	NZ,00132$
;demo.c:964: for (y = 0; y < 212; y+=2) {
	ld	-2 (ix),#0x00
00133$:
	ld	a,-2 (ix)
	sub	a,#0xD4
	jp	NC,00136$
;demo.c:965: cmd.size_x = 256;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:966: cmd.size_y = 2;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:967: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:968: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:969: cmd.command = 0xd0; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0xD0
	ld	(de),a
;demo.c:971: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:972: cmd.source_y = 0;
	ld	de,#_cmd + 2
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:973: cmd.dest_x = 0;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:974: cmd.dest_y = 0+y;
	ld	de,#_cmd + 6
	ld	c,-2 (ix)
	ld	b,#0x00
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:975: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:976: cmd.dest_y = 256+y;
	ld	de,#_cmd + 6
	ld	hl,#0x0100
	add	hl,bc
	ld	c,l
	ld	b,h
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:977: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:978: waitVB();
		halt 
;demo.c:964: for (y = 0; y < 212; y+=2) {
	inc	-2 (ix)
	inc	-2 (ix)
	jp	00133$
00136$:
;demo.c:981: scratch_clear();
	call	_scratch_clear
;demo.c:982: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:984: for (y = 9; y < 15; y+=1) {
	ld	-2 (ix),#0x09
00137$:
	ld	a,-2 (ix)
	sub	a,#0x0F
	jp	NC,00113$
;demo.c:985: for (x = 0; x < 22; x+=1) {
	ld	a,-2 (ix)
	add	a,a
	ld	-7 (ix),a
	ld	-1 (ix),#0x00
00108$:
	ld	a,-1 (ix)
	sub	a,#0x16
	jp	NC,00139$
;demo.c:986: if (x > 6 && x < 13) continue; 
	ld	a,#0x06
	sub	a,-1 (ix)
	jr	NC,00102$
	ld	a,-1 (ix)
	sub	a,#0x0D
	jp	C,00110$
00102$:
;demo.c:988: if (x <= 6) px=7 + (sintab[(105 + (x<<3) + (y<<3)) & 255]>>4);
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
;demo.c:989: if (x >= 13) px=7 + (sintab[(105 + ((23+x)<<3) + ((19+y)<<3)) & 255]>>4);
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
;demo.c:991: cmd.size_x = 11;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x0B
	inc	hl
	ld	(hl),#0x00
;demo.c:992: cmd.size_y = 28-(14-px);
	ld	hl,#_cmd + 10
	ld	-6 (ix),l
	ld	-5 (ix),h
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),d
	inc	hl
	ld	(hl),b
;demo.c:993: cmd.data = 0;
	ld	hl,#_cmd + 12
	ld	(hl),#0x00
;demo.c:994: cmd.argument = 0x00; // from 70xY to left
	ld	hl,#_cmd + 13
	ld	(hl),#0x00
;demo.c:995: cmd.command = 0x98; // vram to vram, y only
	ld	hl,#_cmd + 14
	ld	(hl),#0x98
;demo.c:997: cmd.source_x = twelvetimes[px];
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
;demo.c:998: cmd.source_y = 768+183+(15-px);
	inc	hl
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,#0xC6
	sub	a,-4 (ix)
	ld	b,a
	ld	a,#0x03
	sbc	a,-3 (ix)
	ld	d,a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),d
;demo.c:999: cmd.dest_x = 0+twelvetimes[x];
	ld	hl,#_cmd + 4
	ld	-6 (ix),l
	ld	-5 (ix),h
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),d
;demo.c:1000: cmd.dest_y = 0+bo+(eighttimes[y]+4)+(14-px);
	ld	hl,#_cmd + 6
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,#<_eighttimes
	add	a,-7 (ix)
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),b
	inc	hl
	ld	(hl),d
;demo.c:1001: vdp_copier(&cmd);
	push	bc
	push	de
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	de
	pop	bc
;demo.c:1002: cmd.dest_y = 256+bo+(eighttimes[y]+4)+(14-px);
	ld	hl,#_cmd + 6
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,#<_eighttimes
	add	a,-7 (ix)
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),e
;demo.c:1003: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
00110$:
;demo.c:985: for (x = 0; x < 22; x+=1) {
	inc	-1 (ix)
	jp	00108$
00139$:
;demo.c:984: for (y = 9; y < 15; y+=1) {
	inc	-2 (ix)
	jp	00137$
00113$:
;demo.c:1009: if (buf == -1) { bo = 0; ya = 0; }
	ld	a,(#_buf+0)
	inc	a
	jr	NZ,00197$
	ld	a,(#_buf+1)
	inc	a
	jr	Z,00198$
00197$:
	jr	00115$
00198$:
	ld	bc,#0x0000
	jr	00116$
00115$:
;demo.c:1010: else { bo = 256; ya = 6;}
	ld	bc,#0x0100
00116$:
;demo.c:1012: cmd.size_x = 72;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x48
	inc	hl
	ld	(hl),#0x00
;demo.c:1013: cmd.size_y = 80;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x50
	inc	hl
	ld	(hl),#0x00
;demo.c:1014: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:1015: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:1016: cmd.command = 0xd0; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0xD0
	ld	(de),a
;demo.c:1017: cmd.source_x = 178;
	ld	hl,#_cmd
	ld	(hl),#0xB2
	inc	hl
	ld	(hl),#0x00
;demo.c:1018: cmd.source_y = 0;
	ld	de,#_cmd + 2
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1019: cmd.dest_x = 84;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x54
	inc	hl
	ld	(hl),#0x00
;demo.c:1020: cmd.dest_y = 72+bo;
	ld	de,#_cmd + 6
	ld	hl,#0x0048
	add	hl,bc
	ld	c,l
	ld	b,h
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1021: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1024: for (y = 0; y < 5; y+=1) {
	ld	-2 (ix),#0x00
00145$:
	ld	a,-2 (ix)
	sub	a,#0x05
	jp	NC,00148$
;demo.c:1025: for (x = 0; x < 6; x+=1) {
	ld	a,-2 (ix)
	add	a,a
	ld	-7 (ix),a
	ld	-1 (ix),#0x00
00141$:
	ld	a,-1 (ix)
	sub	a,#0x06
	jp	NC,00147$
;demo.c:1027: px=7 + (sintab[(ffa + (x<<(4+(ffa>>7))) + (y<<2)) & 255]>>4);
	ld	a,-1 (ix)
	ld	-6 (ix),a
	ld	-5 (ix),#0x00
	ld	hl,#_ffa + 0
	ld	e,(hl)
	ld	hl,#_ffa + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,e
	inc	a
	push	af
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	pop	af
	jr	00201$
00200$:
	sla	e
	rl	d
00201$:
	dec	a
	jr	NZ,00200$
	ld	a,(#_ffa+0)
	add	a,e
	ld	-6 (ix),a
	ld	iy,#_ffa
	ld	a,1 (iy)
	adc	a,d
	ld	-5 (ix),a
	ld	e,-2 (ix)
	ld	d,#0x00
	sla	e
	rl	d
	sla	e
	rl	d
	ld	a,-6 (ix)
	add	a,e
	ld	e,a
	ld	a,-5 (ix)
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
;demo.c:1028: if (px < 0) px = 0; 
	ld	-3 (ix),h
	ld	a, h
	bit	7,a
	jr	Z,00118$
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
00118$:
;demo.c:1029: if (px > 14) px = 14; 
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	a,#0x00
	sbc	a,-3 (ix)
	jp	P,00120$
	ld	-4 (ix),#0x0E
	ld	-3 (ix),#0x00
00120$:
;demo.c:1031: cmd.size_x = 12;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:1032: cmd.size_y = 11;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x0B
	inc	hl
	ld	(hl),#0x00
;demo.c:1033: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:1034: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:1035: cmd.command = 0x98; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0x98
	ld	(de),a
;demo.c:1037: cmd.source_x = twelvetimes[px];
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
;demo.c:1038: cmd.source_y = 768+183+16-px;
	inc	hl
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,#0xC7
	sub	a,-4 (ix)
	ld	e,a
	ld	a,#0x03
	sbc	a,-3 (ix)
	ld	d,a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1039: cmd.dest_x = 84+twelvetimes[x];
	ld	hl,#_cmd + 4
	ld	-6 (ix),l
	ld	-5 (ix),h
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1040: cmd.dest_y = 72+bo+(eighttimes[y]+4)+(14-px);
	ld	hl,#_cmd + 6
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	a,#<_eighttimes
	add	a,-7 (ix)
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
	ld	-9 (ix),a
	ld	a,b
	adc	a,d
	ld	-8 (ix),a
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-3 (ix)
	ld	d,a
	ld	a,-9 (ix)
	add	a,e
	ld	e,a
	ld	a,-8 (ix)
	adc	a,d
	ld	d,a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1041: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1025: for (x = 0; x < 6; x+=1) {
	inc	-1 (ix)
	jp	00141$
00147$:
;demo.c:1024: for (y = 0; y < 5; y+=1) {
	inc	-2 (ix)
	jp	00145$
00148$:
;demo.c:1046: for (x = 0; x < 6; x+=1) {
	ld	-1 (ix),#0x00
00149$:
	ld	a,-1 (ix)
	sub	a,#0x06
	jp	NC,00152$
;demo.c:1047: px=7 + (sintab[(ffa + (x<<(4+(ffa>>7))) + (y<<2)) & 255]>>4);
	ld	a,-1 (ix)
	ld	-9 (ix),a
	ld	-8 (ix),#0x00
	ld	hl,#_ffa + 0
	ld	e,(hl)
	ld	hl,#_ffa + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a,e
	inc	a
	push	af
	ld	e,-9 (ix)
	ld	d,-8 (ix)
	pop	af
	jr	00208$
00207$:
	sla	e
	rl	d
00208$:
	dec	a
	jr	NZ,00207$
	ld	a,(#_ffa+0)
	add	a,e
	ld	e,a
	ld	iy,#_ffa
	ld	a,1 (iy)
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
;demo.c:1048: if (px < 0) px = 0; 
	ld	-3 (ix),h
	ld	a, h
	bit	7,a
	jr	Z,00122$
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
00122$:
;demo.c:1049: if (px > 14) px = 14; 
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	a,#0x00
	sbc	a,-3 (ix)
	jp	P,00124$
	ld	-4 (ix),#0x0E
	ld	-3 (ix),#0x00
00124$:
;demo.c:1051: cmd.size_x = 12;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:1052: cmd.size_y = 27-(14-px);
	ld	hl,#_cmd + 10
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	a,#0x0E
	sub	a,-4 (ix)
	ld	-6 (ix),a
	ld	a,#0x00
	sbc	a,-3 (ix)
	ld	-5 (ix),a
	ld	a,#0x1B
	sub	a,-6 (ix)
	ld	e,a
	ld	a,#0x00
	sbc	a,-5 (ix)
	ld	d,a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1053: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:1054: cmd.argument = 0x00; // from 70xY to left
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:1055: cmd.command = 0x98; // vram to vram, y only
	ld	de,#_cmd + 14
	ld	a,#0x98
	ld	(de),a
;demo.c:1057: cmd.source_x = twelvetimes[px];
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
;demo.c:1058: cmd.source_y = 768+183+ 16-px;
	inc	hl
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	a,#0xC7
	sub	a,-4 (ix)
	ld	e,a
	ld	a,#0x03
	sbc	a,-3 (ix)
	ld	d,a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1059: cmd.dest_x = 84+twelvetimes[x];
	ld	hl,#_cmd + 4
	ld	-9 (ix),l
	ld	-8 (ix),h
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
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1060: cmd.dest_y = 72+bo+(eighttimes[y]+6)+(14-px);
	ld	hl,#_cmd + 6
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	de,#_eighttimes + 10
	ex	de,hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ex	de,hl
	ld	a,c
	add	a,e
	ld	e,a
	ld	a,b
	adc	a,d
	ld	d,a
	ld	a,e
	add	a,-6 (ix)
	ld	e,a
	ld	a,d
	adc	a,-5 (ix)
	ld	d,a
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1061: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1046: for (x = 0; x < 6; x+=1) {
	inc	-1 (ix)
	jp	00149$
00152$:
;demo.c:1065: if (buf == -1) vdp_register(2, 0x1F);
	ld	a,(#_buf+0)
	inc	a
	jr	NZ,00211$
	ld	a,(#_buf+1)
	inc	a
	jr	Z,00212$
00211$:
	jr	00126$
00212$:
	ld	hl,#0x1F02
	push	hl
	call	_vdp_register
	pop	af
	jr	00127$
00126$:
;demo.c:1066: else vdp_register(2, 0x3F);
	ld	hl,#0x3F02
	push	hl
	call	_vdp_register
	pop	af
00127$:
;demo.c:1069: buf = -buf;
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
;demo.c:1071: ffa+=8;
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
;demo.c:1073: if (firstwave == 0) {
	ld	a,(#_firstwave+0)
	ld	hl,#_firstwave + 1
	or	a,(hl)
	jr	NZ,00153$
;demo.c:1074: firstwave = 1;
	ld	hl,#_firstwave + 0
	ld	(hl), #0x01
	ld	hl,#_firstwave + 1
	ld	(hl), #0x00
;demo.c:1075: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
00153$:
	ld	sp,ix
	pop	ix
	ret
_thewave_end::
;demo.c:1083: void drawtritile(uint8_t tx, int ty, uint8_t x, uint8_t y) {
;	---------------------------------
; Function drawtritile
; ---------------------------------
_drawtritile_start::
_drawtritile:
	push	ix
	ld	ix,#0
	add	ix,sp
;demo.c:1084: cmd.source_x = tx;
	ld	c,4 (ix)
	ld	b,#0x00
	ld	hl,#_cmd
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1085: cmd.source_y = ty-1;
	ld	bc,#_cmd + 2
	ld	e,5 (ix)
	ld	d,6 (ix)
	dec	de
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1086: cmd.dest_x = x;
	ld	bc,#_cmd + 4
	ld	e,7 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1087: cmd.dest_y = y;
	ld	bc,#_cmd + 6
	ld	e,8 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1088: cmd.size_x = 16;
	ld	hl, #_cmd + 8
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:1089: cmd.size_y = 16;
	ld	hl, #_cmd + 10
	ld	(hl),#0x10
	inc	hl
	ld	(hl),#0x00
;demo.c:1090: cmd.data = 0;
;demo.c:1091: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1092: cmd.command = 0xd0; // HMMM
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1093: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	ix
	ret
_drawtritile_end::
;demo.c:1100: void drawtilescreen(char* tripic) {
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
;demo.c:1102: if(tilei >= 192) return;
	ld	a,(#_tilei+0)
	sub	a,#0xC0
	ld	a,(#_tilei+1)
	sbc	a,#0x00
	jp	M,00102$
	jp	00112$
00102$:
;demo.c:1104: tiletick++;
	ld	iy,#_tiletick
	inc	0 (iy)
;demo.c:1105: if (tiletick > 6) { tiletick = 0;}
	ld	a,#0x06
	ld	iy,#_tiletick
	sub	a,0 (iy)
	jr	NC,00104$
	ld	iy,#_tiletick
	ld	0 (iy),#0x00
	jr	00118$
00104$:
;demo.c:1106: else return;
	jp	00112$
;demo.c:1107: for (i=0;i<20;i++) {
00118$:
	ld	-1 (ix),#0x00
00108$:
	ld	a,-1 (ix)
	sub	a,#0x14
	jp	NC,00112$
;demo.c:1108: drawtritile(tri_lookup_x[tripic[tilei]],tri_lookup_y[tripic[tilei]],tilex,tiley);
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
;demo.c:1109: tilex+=16;
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
;demo.c:1110: tilei++;
	ld	iy,#_tilei
	inc	0 (iy)
	jr	NZ,00119$
	ld	iy,#_tilei
	inc	1 (iy)
00119$:
;demo.c:1111: if (tilex >= 256) {tilex = 0; tiley+=16; return; }
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
;demo.c:1107: for (i=0;i<20;i++) {
	inc	-1 (ix)
	jp	00108$
00112$:
	ld	sp,ix
	pop	ix
	ret
_drawtilescreen_end::
;demo.c:1116: void drawtilescreen_full(char* tripic) {
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
;demo.c:1117: int x = 0;
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
;demo.c:1120: while(i < 192) {
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
;demo.c:1121: drawtritile(tri_lookup_x[tripic[i]],tri_lookup_y[tripic[i]],x,y);
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
;demo.c:1122: x+=16;
	ld	a,-2 (ix)
	add	a,#0x10
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
;demo.c:1123: if (x >= 256) {x = 0; y+=16;}
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
;demo.c:1124: i++;
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
;demo.c:1140: void tritiles() {
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
;demo.c:1147: if (tri_inited == 0 || tri_inited == 2) {
	xor	a,a
	ld	iy,#_tri_inited
	or	a,0 (iy)
	jr	Z,00106$
	ld	iy,#_tri_inited
	ld	a,0 (iy)
	sub	a,#0x02
	jp	NZ,00107$
00106$:
;demo.c:1149: cmd.size_x = 2;
	ld	hl, #_cmd + 8
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:1150: cmd.size_y = 78;
	ld	hl, #_cmd + 10
	ld	(hl),#0x4E
	inc	hl
	ld	(hl),#0x00
;demo.c:1151: cmd.data = 0;
;demo.c:1152: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1153: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1154: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1155: cmd.source_y = 0;
	ld	bc,#_cmd + 2
	ld	l,c
	ld	h,b
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1157: for (x = 0; x < 128; x+=2) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00167$:
	ld	a,-2 (ix)
	sub	a,#0x80
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00170$
;demo.c:1158: waitVB();
		halt 
;demo.c:1159: cmd.dest_y = 256+78;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x4E
	inc	hl
	ld	(hl),#0x01
;demo.c:1160: cmd.dest_x = 128-x;
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
;demo.c:1161: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1162: cmd.dest_y = 0+78;
	ld	hl, #_cmd + 6
	ld	(hl),#0x4E
	inc	hl
	ld	(hl),#0x00
;demo.c:1163: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1164: cmd.dest_y = 256+78;
	ld	hl, #_cmd + 6
	ld	(hl),#0x4E
	inc	hl
	ld	(hl),#0x01
;demo.c:1165: cmd.dest_x = 128+x;
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
;demo.c:1166: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1167: cmd.dest_y = 0+78;
	ld	hl, #_cmd + 6
	ld	(hl),#0x4E
	inc	hl
	ld	(hl),#0x00
;demo.c:1168: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1157: for (x = 0; x < 128; x+=2) {
	ld	a,-2 (ix)
	add	a,#0x02
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
	jp	00167$
00170$:
;demo.c:1171: scratch_clear();
	call	_scratch_clear
;demo.c:1172: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1174: tri_inited++;
	ld	iy,#_tri_inited
	inc	0 (iy)
;demo.c:1175: vdp_register(9,2); // 50hz,192
	ld	hl,#0x0209
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1179: vdp_register(2, 0x1f);
	ld	hl,#0x1F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1180: tick = 0;
	ld	hl,#_tick + 0
	ld	(hl), #0x00
	ld	hl,#_tick + 1
	ld	(hl), #0x00
;demo.c:1183: if (tri_inited == 0) vdp_load_palette(boxes_palette);
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
;demo.c:1184: else if (tri_inited == 2) { 
	ld	a,(#_tri_inited+0)
	sub	a,#0x02
	jr	NZ,00105$
;demo.c:1185: vdp_load_palette(boxes_palette); 
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1186: triframes = 0; 
	ld	hl,#_triframes + 0
	ld	(hl), #0x00
	ld	hl,#_triframes + 1
	ld	(hl), #0x00
;demo.c:1188: tripal[0] = 4;
	ld	hl,#_tripal
	ld	(hl),#0x04
;demo.c:1189: tripal[1] = 4;
	ld	a,#0x04
	ld	(#_tripal + 1),a
;demo.c:1190: tripal[2] = 3;
	ld	a,#0x03
	ld	(#_tripal + 2),a
;demo.c:1192: tripal[3] = 2;
	ld	a,#0x02
	ld	(#_tripal + 3),a
;demo.c:1193: tripal[4] = 3;
	ld	a,#0x03
	ld	(#_tripal + 4),a
;demo.c:1194: tripal[5] = 4;
	ld	a,#0x04
	ld	(#_tripal + 5),a
;demo.c:1196: tripal[6] = 1;
	ld	a,#0x01
	ld	(#_tripal + 6),a
;demo.c:1197: tripal[7] = 3;
	ld	a,#0x03
	ld	(#_tripal + 7),a
;demo.c:1198: tripal[8] = 1;
	ld	a,#0x01
	ld	(#_tripal + 8),a
00105$:
;demo.c:1201: msx2_palette(15,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x0F
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1202: triframes = 1350;
	ld	hl,#_triframes + 0
	ld	(hl), #0x46
	ld	hl,#_triframes + 1
	ld	(hl), #0x05
00107$:
;demo.c:1206: if (tri_inited == 1) triframes++;
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
;demo.c:1208: if (triframes == 150) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1209: if (triframes >= 150 && triframes < 300) {
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
;demo.c:1210: drawtilescreen(tri_up);
	ld	hl,#_tri_up
	push	hl
	call	_drawtilescreen
	pop	af
00114$:
;demo.c:1213: if (triframes == 300) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1214: if (triframes >= 300 && triframes < 450) {
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
;demo.c:1215: drawtilescreen(tri_dia);
	ld	hl,#_tri_dia
	push	hl
	call	_drawtilescreen
	pop	af
00119$:
;demo.c:1218: if (triframes == 450) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1219: if (triframes >= 450 && triframes < 600) {
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
;demo.c:1220: drawtilescreen(tri_side1);
	ld	hl,#_tri_side1
	push	hl
	call	_drawtilescreen
	pop	af
00124$:
;demo.c:1223: if (triframes == 600) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1224: if (triframes >= 600 && triframes < 750) {
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
;demo.c:1225: drawtilescreen(tri_side2);
	ld	hl,#_tri_side2
	push	hl
	call	_drawtilescreen
	pop	af
00129$:
;demo.c:1228: if (triframes == 750) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1229: if (triframes >= 750 && triframes < 900) {
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
;demo.c:1230: drawtilescreen(tri_inva1);
	ld	hl,#_tri_inva1
	push	hl
	call	_drawtilescreen
	pop	af
00134$:
;demo.c:1233: if (triframes == 900) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1234: if (triframes >= 900 && triframes < 1050) {
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
;demo.c:1235: drawtilescreen(tri_inva2);
	ld	hl,#_tri_inva2
	push	hl
	call	_drawtilescreen
	pop	af
00139$:
;demo.c:1238: if (triframes == 1050) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1239: if (triframes >= 1050 && triframes < 1200) {
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
;demo.c:1240: drawtilescreen(tri_inva3);
	ld	hl,#_tri_inva3
	push	hl
	call	_drawtilescreen
	pop	af
00144$:
;demo.c:1243: if (triframes == 1200) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1244: if (triframes >= 1200 && triframes < 1350) {
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
;demo.c:1245: drawtilescreen(tri_inva4);
	ld	hl,#_tri_inva4
	push	hl
	call	_drawtilescreen
	pop	af
00149$:
;demo.c:1248: if (triframes == 1350) { tilei = 0; tilex = 0; tiley = 0; }
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
;demo.c:1249: if (triframes >= 1350 && triframes < 1500) {
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
;demo.c:1250: drawtilescreen(tri_center);
	ld	hl,#_tri_center
	push	hl
	call	_drawtilescreen
	pop	af
00154$:
;demo.c:1253: if (triframes > 1500) triframes = 149;
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
;demo.c:1256: msx2_palette(2,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x02
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1257: msx2_palette(11,0,0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x0B
	push	hl
	call	_msx2_palette
	pop	af
	pop	af
;demo.c:1259: if (PLY_PSGReg10 > 4) {
	ld	a,#0x04
	ld	iy,#_PLY_PSGReg10
	sub	a,0 (iy)
	jp	NC,00159$
;demo.c:1260: vdp_register(VDP_VOFFSET,192-sintabx[(PLY_PSGReg10 + tripaltick) & 255]>>3);
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
;demo.c:1262: msx2_palette(3,tripal[0]+PLY_PSGReg10,tripal[1],tripal[2]);
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
;demo.c:1263: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
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
;demo.c:1264: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
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
;demo.c:1267: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1269: msx2_palette(3,tripal[0],tripal[1],tripal[2]);
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
;demo.c:1270: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
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
;demo.c:1271: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
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
;demo.c:1275: if (tick > 28) tick = 0;
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
;demo.c:1277: tripaltick++;
	ld	iy,#_tripaltick
	inc	0 (iy)
;demo.c:1278: if (tripaltick > 6) {
	ld	a,#0x06
	ld	iy,#_tripaltick
	sub	a,0 (iy)
	jp	NC,00175$
;demo.c:1279: tripaltick2++;
	ld	iy,#_tripaltick2
	inc	0 (iy)
;demo.c:1280: if (tripaltick2 > 6) tripaltick2 = 0;
	ld	a,#0x06
	ld	iy,#_tripaltick2
	sub	a,0 (iy)
	jr	NC,00164$
	ld	hl,#_tripaltick2 + 0
	ld	(hl), #0x00
00164$:
;demo.c:1282: r = tripal[0];
	ld	hl,#_tripal
	ld	c,(hl)
	ld	-3 (ix),c
;demo.c:1283: g = tripal[1];
	ld	de,#_tripal + 1
	ld	a,(de)
	ld	-4 (ix),a
;demo.c:1284: b = tripal[2];
	ld	hl,#_tripal + 2
	ld	e,(hl)
	ld	-5 (ix),e
;demo.c:1286: for (x = 0; x < 6; x++) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00171$:
	ld	a,-2 (ix)
	sub	a,#0x06
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00174$
;demo.c:1287: tripal[x] = tripal[x+3];
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
;demo.c:1286: for (x = 0; x < 6; x++) {
	inc	-2 (ix)
	jr	NZ,00245$
	inc	-1 (ix)
00245$:
	jr	00171$
00174$:
;demo.c:1290: tripal[6] = r;
	ld	bc,#_tripal + 6
	ld	a,-3 (ix)
	ld	(bc),a
;demo.c:1291: tripal[7] = g;
	ld	bc,#_tripal + 7
	ld	a,-4 (ix)
	ld	(bc),a
;demo.c:1292: tripal[8] = b;
	ld	bc,#_tripal + 8
	ld	a,-5 (ix)
	ld	(bc),a
;demo.c:1293: tripaltick = 0;
	ld	hl,#_tripaltick + 0
	ld	(hl), #0x00
00175$:
	ld	sp,ix
	pop	ix
	ret
_tritiles_end::
;demo.c:1298: int abs (int n) {
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
;demo.c:1299: const int ret[2] = { n, -n };
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
;demo.c:1300: return ret [n<0];
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
;demo.c:1309: void logoeffu() {
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
;demo.c:1313: fadein();
	call	_fadein
;demo.c:1315: v = abs(sintabx[(vbicount) & 255]>>4);
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
;demo.c:1317: for (y = 0; y < 116; y+=2) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00111$:
	ld	a,-2 (ix)
	sub	a,#0x74
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00114$
;demo.c:1318: cmd.size_x = 108;
	ld	de,#_cmd + 8
	ex	de,hl
	ld	(hl),#0x6C
	inc	hl
	ld	(hl),#0x00
;demo.c:1319: cmd.size_y = 2;
	ld	de,#_cmd + 10
	ex	de,hl
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:1320: cmd.data = 0;
	ld	de,#_cmd + 12
	ld	a,#0x00
	ld	(de),a
;demo.c:1321: cmd.argument = 0x00;
	ld	de,#_cmd + 13
	ld	a,#0x00
	ld	(de),a
;demo.c:1322: cmd.command = 0xd0; 
	ld	de,#_cmd + 14
	ld	a,#0xD0
	ld	(de),a
;demo.c:1323: cmd.source_x = 74;
	ld	hl,#_cmd
	ld	(hl),#0x4A
	inc	hl
	ld	(hl),#0x00
;demo.c:1324: cmd.source_y = 256+y;
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
;demo.c:1325: v+=y;
	ld	a,-4 (ix)
	add	a,-2 (ix)
	ld	-4 (ix),a
	ld	a,-3 (ix)
	adc	a,-1 (ix)
	ld	-3 (ix),a
;demo.c:1326: v -= powa;
	ld	hl,#_powa
	ld	a,-4 (ix)
	sub	a,(hl)
	ld	-4 (ix),a
	ld	a,-3 (ix)
	inc	hl
	sbc	a,(hl)
;demo.c:1327: if (v<0) v = 0;
	ld	-3 (ix),a
	bit	7,a
	jr	Z,00102$
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
00102$:
;demo.c:1328: if (v>150) v = 150;
	ld	a,#0x96
	sub	a,-4 (ix)
	ld	a,#0x00
	sbc	a,-3 (ix)
	jp	P,00104$
	ld	-4 (ix),#0x96
	ld	-3 (ix),#0x00
00104$:
;demo.c:1329: cmd.dest_x = 74+v;
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
;demo.c:1330: cmd.dest_y = 50+y+1;
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
;demo.c:1331: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1317: for (y = 0; y < 116; y+=2) {
	ld	a,-2 (ix)
	add	a,#0x02
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
	jp	00111$
00114$:
;demo.c:1334: if (vbicount > scenetimings[2]+84 && onceclear > 182) {
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
;demo.c:1335: cmd.size_x = 4;
	ld	hl, #_cmd + 8
	ld	(hl),#0x04
	inc	hl
	ld	(hl),#0x00
;demo.c:1336: cmd.size_y = 116;
	ld	hl, #_cmd + 10
	ld	(hl),#0x74
	inc	hl
	ld	(hl),#0x00
;demo.c:1337: cmd.data = 0;
;demo.c:1338: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1339: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1340: cmd.source_x = 20;
	ld	hl,#_cmd
	ld	(hl),#0x14
	inc	hl
	ld	(hl),#0x00
;demo.c:1341: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1342: cmd.dest_x = onceclear;
	ld	bc,#_cmd + 4
	ld	hl,#_onceclear + 0
	ld	e,(hl)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1343: cmd.dest_y = 68;
	ld	hl, #_cmd + 6
	ld	(hl),#0x44
	inc	hl
	ld	(hl),#0x00
;demo.c:1344: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1345: onceclear-=4;
	ld	hl,#_onceclear
	ld	a,(hl)
	add	a,#0xFC
	ld	(hl),a
00106$:
;demo.c:1349: powa+=2;
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
;demo.c:1350: powatick = 0;
	ld	hl,#_powatick + 0
	ld	(hl), #0x00
	ld	hl,#_powatick + 1
	ld	(hl), #0x00
;demo.c:1352: if (vbicount > 320 && stereodone == 0) {
	ld	a,#0x40
	ld	iy,#_vbicount
	sub	a,0 (iy)
	ld	a,#0x01
	ld	iy,#_vbicount
	sbc	a,1 (iy)
	jp	P,00115$
	ld	a,(#_stereodone+0)
	ld	hl,#_stereodone + 1
	or	a,(hl)
	jr	NZ,00115$
;demo.c:1353: drawstrslowcolor("in stereo",101,168);
	ld	hl,#0xA865
	push	hl
	ld	hl,#__str_9
	push	hl
	call	_drawstrslowcolor
	pop	af
	pop	af
;demo.c:1354: stereodone = 1;
	ld	hl,#_stereodone + 0
	ld	(hl), #0x01
	ld	hl,#_stereodone + 1
	ld	(hl), #0x00
00115$:
	ld	sp,ix
	pop	ix
	ret
_logoeffu_end::
__str_9:
	.ascii "in stereo"
	.db 0x00
;demo.c:1364: void points() {
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
;demo.c:1368: if (initpoints == 0) {
	xor	a,a
	ld	hl,#_initpoints + 0
	or	a,(hl)
	jp	NZ,00105$
;demo.c:1369: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1370: cmd.size_y = 4;
	ld	hl, #_cmd + 10
	ld	(hl),#0x04
	inc	hl
	ld	(hl),#0x00
;demo.c:1371: cmd.data = 0;
;demo.c:1372: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1373: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1374: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1375: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1377: for (y = 0; y < 212; y+=4) {
	ld	-1 (ix),#0x00
00116$:
	ld	a,-1 (ix)
	sub	a,#0xD4
	jp	NC,00119$
;demo.c:1378: if (PLY_PSGReg10 > 4) {
	ld	a,#0x04
	ld	iy,#_PLY_PSGReg10
	sub	a,0 (iy)
	jp	NC,00102$
;demo.c:1379: vdp_register(VDP_VOFFSET,192-sintabx[(PLY_PSGReg10 + tripaltick) & 255]>>3);
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
;demo.c:1381: msx2_palette(3,tripal[0]+PLY_PSGReg10,tripal[1],tripal[2]);
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
;demo.c:1382: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
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
;demo.c:1383: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
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
;demo.c:1386: vdp_register(VDP_VOFFSET,0);
	ld	hl,#0x0017
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1388: msx2_palette(3,tripal[0],tripal[1],tripal[2]);
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
;demo.c:1389: msx2_palette(14,tripal[3],tripal[4],tripal[5]);
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
;demo.c:1390: msx2_palette(6,tripal[6],tripal[7],tripal[8]);
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
;demo.c:1393: waitVB();
		halt 
;demo.c:1394: cmd.source_y = 193;
	ld	hl, #_cmd + 2
	ld	(hl),#0xC1
	inc	hl
	ld	(hl),#0x00
;demo.c:1395: cmd.dest_y = y;
	ld	bc,#_cmd + 6
	ld	e,-1 (ix)
	ld	d,#0x00
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1396: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1377: for (y = 0; y < 212; y+=4) {
	inc	-1 (ix)
	inc	-1 (ix)
	inc	-1 (ix)
	inc	-1 (ix)
	jp	00116$
00119$:
;demo.c:1400: vdp_load_palette(bulbs_palette);
	ld	hl,#_bulbs_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1402: for (x = 0; x < 256; x+=1) {
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
00120$:
	ld	a,-3 (ix)
	sub	a,#0x00
	ld	a,-2 (ix)
	sbc	a,#0x01
	jp	P,00123$
;demo.c:1404: cmd.data = 1+((pointframe>>2) & 0xe);
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
;demo.c:1405: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-3 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-2 (ix)
	ld	(hl),a
;demo.c:1406: cmd.dest_y = y;
	ld	hl, #_cmd + 6
	ld	(hl),#0x1D
	inc	hl
	ld	(hl),#0x00
;demo.c:1407: cmd.command = 0x50;
	ld	a,#0x50
	ld	(#_cmd + 14),a
;demo.c:1408: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1411: cmd.data = 1+((pointframe>>2) & 0xe);
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
;demo.c:1412: cmd.dest_y = y;
	ld	hl, #_cmd + 6
	ld	(hl),#0xA2
	inc	hl
	ld	(hl),#0x00
;demo.c:1413: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1415: pointframe+=1;
	ld	iy,#_pointframe
	inc	0 (iy)
	jr	NZ,00149$
	ld	iy,#_pointframe
	inc	1 (iy)
00149$:
;demo.c:1402: for (x = 0; x < 256; x+=1) {
	inc	-3 (ix)
	jr	NZ,00150$
	inc	-2 (ix)
00150$:
	jp	00120$
00123$:
;demo.c:1418: initpoints = 1;
	ld	hl,#_initpoints + 0
	ld	(hl), #0x01
;demo.c:1419: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00105$:
;demo.c:1422: cmd.argument = 0x0;
	ld	a,#0x00
	ld	(#_cmd + 13),a
;demo.c:1424: cmd.data = 1+((pointframe>>2) & 0xe);
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
;demo.c:1426: for (x = 30; x < 162; x+=1) {
	ld	-3 (ix),#0x1E
	ld	-2 (ix),#0x00
00124$:
	ld	a,-3 (ix)
	sub	a,#0xA2
	ld	a,-2 (ix)
	sbc	a,#0x00
	jp	P,00127$
;demo.c:1427: y = 64+(sintabx[(x+pointframe) & 255]>>1);
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
;demo.c:1428: cmd.dest_x = y;
	ld	de,#_cmd + 4
	ld	b,#0x00
	ld	l,e
	ld	h,d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1429: cmd.dest_y = x;
	ld	hl, #_cmd + 6
	ld	a,-3 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-2 (ix)
	ld	(hl),a
;demo.c:1430: cmd.command = 0x53;
	ld	a,#0x53
	ld	(#_cmd + 14),a
;demo.c:1431: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1426: for (x = 30; x < 162; x+=1) {
	inc	-3 (ix)
	jr	NZ,00152$
	inc	-2 (ix)
00152$:
	jr	00124$
00127$:
;demo.c:1433: pointframe+=2;
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
;demo.c:1435: if (greetindex == 0) {
	ld	a,(#_greetindex+0)
	ld	hl,#_greetindex + 1
	or	a,(hl)
	jr	NZ,00107$
;demo.c:1436: slowend = 27;
	ld	hl,#_slowend + 0
	ld	(hl), #0x1B
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1437: drawstrslow("GREETINGS TO VARIOUS GROUPS",10,20);
	ld	hl,#0x140A
	push	hl
	ld	hl,#__str_10
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00107$:
;demo.c:1439: if (greetindex == 1) {
	ld	a,(#_greetindex+0)
	sub	a,#0x01
	jr	NZ,00153$
	ld	a,(#_greetindex+1)
	or	a,a
	jr	Z,00154$
00153$:
	jr	00109$
00154$:
;demo.c:1440: slowend = 33;
	ld	hl,#_slowend + 0
	ld	(hl), #0x21
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1441: drawstrslow("Trilobit  Prismbeings  Ivory Labs",10,164);
	ld	hl,#0xA40A
	push	hl
	ld	hl,#__str_11
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00109$:
;demo.c:1443: if (greetindex == 2) {
	ld	a,(#_greetindex+0)
	sub	a,#0x02
	jr	NZ,00155$
	ld	a,(#_greetindex+1)
	or	a,a
	jr	Z,00156$
00155$:
	jr	00111$
00156$:
;demo.c:1444: slowend = 29;
	ld	hl,#_slowend + 0
	ld	(hl), #0x1D
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1445: drawstrslow("PWP  Dekadence  Paraguay  ISO",18,174);
	ld	hl,#0xAE12
	push	hl
	ld	hl,#__str_12
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00111$:
;demo.c:1447: if (greetindex == 3) {
	ld	a,(#_greetindex+0)
	sub	a,#0x03
	jr	NZ,00157$
	ld	a,(#_greetindex+1)
	or	a,a
	jr	Z,00158$
00157$:
	jr	00113$
00158$:
;demo.c:1448: slowend = 17;
	ld	hl,#_slowend + 0
	ld	(hl), #0x11
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1449: drawstrslow("Furry Trash Group",26,184);
	ld	hl,#0xB81A
	push	hl
	ld	hl,#__str_13
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00113$:
;demo.c:1451: if (ltrpointer >= slowend) { greetindex++; ltrpointer = 0; }
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
;demo.c:1453: msx2_palette(4,0,0,0);
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
__str_10:
	.ascii "GREETINGS TO VARIOUS GROUPS"
	.db 0x00
__str_11:
	.ascii "Trilobit  Prismbeings  Ivory Labs"
	.db 0x00
__str_12:
	.ascii "PWP  Dekadence  Paraguay  ISO"
	.db 0x00
__str_13:
	.ascii "Furry Trash Group"
	.db 0x00
;demo.c:1457: void bigtext() {
;	---------------------------------
; Function bigtext
; ---------------------------------
_bigtext_start::
_bigtext:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;demo.c:1459: if (bigtextp == 0) {
	ld	a,(#_bigtextp+0)
	ld	iy,#_bigtextp
	or	a,1 (iy)
	jp	NZ,00102$
;demo.c:1460: cmd.size_x = 2;
	ld	hl, #_cmd + 8
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
;demo.c:1461: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1462: cmd.data = 0;
;demo.c:1463: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1464: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1465: cmd.source_x = 255;
	ld	hl,#_cmd
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;demo.c:1466: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1468: for (x = 0; x < 256; x+=4) {
	ld	bc,#0x0000
00128$:
	ld	a,c
	sub	a,#0x00
	ld	a,b
	sbc	a,#0x01
	jp	P,00131$
;demo.c:1469: waitVB();
		halt 
;demo.c:1470: cmd.dest_y = 256;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1471: cmd.dest_x = x;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1472: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1473: cmd.dest_y = 0;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1474: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1468: for (x = 0; x < 256; x+=4) {
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	jr	00128$
00131$:
;demo.c:1477: for (x = 254; x > 0; x-=4) {
	ld	bc,#0x00FE
00132$:
	ld	a,#0x00
	sub	a,c
	ld	a,#0x00
	sbc	a,b
	jp	P,00135$
;demo.c:1478: waitVB();
		halt 
;demo.c:1479: cmd.dest_y = 256;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1480: cmd.dest_x = x;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;demo.c:1481: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1482: cmd.dest_y = 0;
	ld	de,#_cmd + 6
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1483: vdp_copier(&cmd);
	push	bc
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
	pop	bc
;demo.c:1477: for (x = 254; x > 0; x-=4) {
	ld	a,c
	add	a,#0xFC
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	jr	00132$
00135$:
;demo.c:1486: bigtextp++;
	ld	iy,#_bigtextp
	inc	0 (iy)
	jr	NZ,00188$
	ld	iy,#_bigtextp
	inc	1 (iy)
00188$:
;demo.c:1487: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1488: drawstr2x("DIGITAL",26,44);
	ld	hl,#0x2C1A
	push	hl
	ld	hl,#__str_14
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1489: drawstr2x("SOUNDS",27,84);
	ld	hl,#0x541B
	push	hl
	ld	hl,#__str_15
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1490: drawstr2x("SYSTEM",25,124);
	ld	hl,#0x7C19
	push	hl
	ld	hl,#__str_16
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1492: tri_inited = 2;
	ld	hl,#_tri_inited + 0
	ld	(hl), #0x02
;demo.c:1493: ff = 0;
	ld	hl,#_ff + 0
	ld	(hl), #0x00
	ld	hl,#_ff + 1
	ld	(hl), #0x00
;demo.c:1494: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00102$:
;demo.c:1497: msx2_palette(4,ff>>2,ff>>3,ff>>2);
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
;demo.c:1498: ff+=2;
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
;demo.c:1500: if (ff == 600) {
	ld	a,(#_ff+0)
	sub	a,#0x58
	jr	NZ,00191$
	ld	a,(#_ff+1)
	sub	a,#0x02
	jr	Z,00192$
00191$:
	jp	00104$
00192$:
;demo.c:1501: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1502: cmd.size_y = 3;
	ld	hl, #_cmd + 10
	ld	(hl),#0x03
	inc	hl
	ld	(hl),#0x00
;demo.c:1503: cmd.data = 0;
;demo.c:1504: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1505: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1506: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1507: cmd.source_y = 28;
	ld	hl, #_cmd + 2
	ld	(hl),#0x1C
	inc	hl
	ld	(hl),#0x00
;demo.c:1509: cmd.dest_y = 512;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1510: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1511: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1513: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1514: cmd.source_y = 512;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1516: for (x = 0; x < 66; x+=1) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00136$:
	ld	a,-2 (ix)
	sub	a,#0x42
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00139$
;demo.c:1517: msx2_palette(4,ff>>2,ff>>3,ff>>2);
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
;demo.c:1518: ff+=2;
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
;demo.c:1520: waitVB();
		halt 
;demo.c:1521: cmd.dest_y = 28+x;
	ld	bc,#_cmd + 6
	ld	a,-2 (ix)
	add	a,#0x1C
	ld	e,a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1522: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1523: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1524: cmd.dest_y = 161-x;
	ld	bc,#_cmd + 6
	ld	a,#0xA1
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
;demo.c:1525: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1526: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1516: for (x = 0; x < 66; x+=1) {
	inc	-2 (ix)
	jr	NZ,00195$
	inc	-1 (ix)
00195$:
	jp	00136$
00139$:
;demo.c:1529: for (x = 0; x < 66; x+=1) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00140$:
	ld	a,-2 (ix)
	sub	a,#0x42
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00143$
;demo.c:1530: msx2_palette(4,ff>>2,ff>>3,ff>>2);
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
;demo.c:1531: ff+=2;
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
;demo.c:1533: waitVB();
		halt 
;demo.c:1534: cmd.dest_y = 28+66-x;
	ld	bc,#_cmd + 6
	ld	a,#0x5E
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
;demo.c:1535: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1536: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1537: cmd.dest_y = 161-66+x;
	ld	bc,#_cmd + 6
	ld	a,-2 (ix)
	add	a,#0x5F
	ld	e,a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	d,a
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1538: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1539: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1529: for (x = 0; x < 66; x+=1) {
	inc	-2 (ix)
	jr	NZ,00198$
	inc	-1 (ix)
00198$:
	jp	00140$
00143$:
;demo.c:1543: drawstr2x("COMMAND",4,44);
	ld	hl,#0x2C04
	push	hl
	ld	hl,#__str_17
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1544: drawstr2x("   THE  ",32,84);
	ld	hl,#0x5420
	push	hl
	ld	hl,#__str_18
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1545: drawstr2x("  BASS ",35,124);
	ld	hl,#0x7C23
	push	hl
	ld	hl,#__str_19
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
00104$:
;demo.c:1548: if (ff == 1200) {
	ld	a,(#_ff+0)
	sub	a,#0xB0
	jr	NZ,00199$
	ld	a,(#_ff+1)
	sub	a,#0x04
	jr	Z,00200$
00199$:
	jp	00106$
00200$:
;demo.c:1549: cmd.size_x = 3;
	ld	hl, #_cmd + 8
	ld	(hl),#0x03
	inc	hl
	ld	(hl),#0x00
;demo.c:1550: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1551: cmd.data = 0;
;demo.c:1552: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1553: cmd.command = 0xd0; // vram to vram, y only
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1554: cmd.source_x = 255;
	ld	hl,#_cmd
	ld	(hl),#0xFF
	inc	hl
	ld	(hl),#0x00
;demo.c:1555: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1557: for (x = 254; x > 0; x-=4) {
	ld	-2 (ix),#0xFE
	ld	-1 (ix),#0x00
00144$:
	ld	a,#0x00
	sub	a,-2 (ix)
	ld	a,#0x00
	sbc	a,-1 (ix)
	jp	P,00147$
;demo.c:1558: msx2_palette(4,ff>>2,ff>>3,ff>>2);
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
;demo.c:1559: ff+=2;
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
;demo.c:1560: waitVB();
		halt 
;demo.c:1561: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1562: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:1563: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1564: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1565: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1557: for (x = 254; x > 0; x-=4) {
	ld	a,-2 (ix)
	add	a,#0xFC
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	jp	00144$
00147$:
;demo.c:1569: for (x = 0; x < 256; x+=4) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00148$:
	ld	a,-2 (ix)
	sub	a,#0x00
	ld	a,-1 (ix)
	sbc	a,#0x01
	jp	P,00151$
;demo.c:1570: msx2_palette(4,ff>>2,ff>>3,ff>>2);
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
;demo.c:1571: ff+=2;
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
;demo.c:1572: waitVB();
		halt 
;demo.c:1573: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1574: cmd.dest_x = x;
	ld	hl, #_cmd + 4
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;demo.c:1575: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1576: cmd.dest_y = 0;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1577: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1569: for (x = 0; x < 256; x+=4) {
	ld	a,-2 (ix)
	add	a,#0x04
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0x00
	ld	-1 (ix),a
	jp	00148$
00151$:
;demo.c:1580: drawstr2x("REVISION",10,44);
	ld	hl,#0x2C0A
	push	hl
	ld	hl,#__str_20
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1581: drawstr2x("   IS OUR",0,84);
	ld	hl,#0x5400
	push	hl
	ld	hl,#__str_21
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
;demo.c:1582: drawstr2x("  PARTY",12,124);
	ld	hl,#0x7C0C
	push	hl
	ld	hl,#__str_22
	push	hl
	call	_drawstr2x
	pop	af
	pop	af
00106$:
;demo.c:1585: if (ff >= 1600 && ff < 1700) {
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
;demo.c:1586: slowend = 37;
	ld	hl,#_slowend + 0
	ld	(hl), #0x25
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1587: drawstrslow("Give a big hand to all the organizers",28,164+6);
	ld	hl,#0xAA1C
	push	hl
	ld	hl,#__str_23
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00108$:
;demo.c:1590: if (ff == 1700) {
	ld	a,(#_ff+0)
	sub	a,#0xA4
	jr	NZ,00205$
	ld	a,(#_ff+1)
	sub	a,#0x06
	jr	Z,00206$
00205$:
	jr	00111$
00206$:
;demo.c:1591: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00111$:
;demo.c:1594: if (ff > 1700 && ff < 1800) {
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
;demo.c:1595: slowend = 21;
	ld	hl,#_slowend + 0
	ld	(hl), #0x15
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1596: drawstrslow("of this amazing party",64,164+16);
	ld	hl,#0xB440
	push	hl
	ld	hl,#__str_24
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00113$:
;demo.c:1599: if (ff >= 1900 && ff < 3890) {
	ld	a,(#_ff+0)
	sub	a,#0x6C
	ld	a,(#_ff+1)
	sbc	a,#0x07
	jp	M,00116$
	ld	a,(#_ff+0)
	sub	a,#0x32
	ld	a,(#_ff+1)
	sbc	a,#0x0F
	jp	P,00116$
;demo.c:1600: cmd.size_x = 1;
	ld	hl, #_cmd + 8
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:1601: cmd.size_y = 17;
	ld	hl, #_cmd + 10
	ld	(hl),#0x11
	inc	hl
	ld	(hl),#0x00
;demo.c:1602: cmd.data = 0;
;demo.c:1603: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1604: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1605: cmd.source_x = 128+20*(((ff-1901)>>3) % 6);
	ld	a,(#_ff+0)
	add	a,#0x93
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
;demo.c:1606: cmd.source_y = 768+30;
	ld	hl, #_cmd + 2
	ld	(hl),#0x1E
	inc	hl
	ld	(hl),#0x03
;demo.c:1607: cmd.dest_x = (255)-((ff-1900)>>3);
	ld	bc,#_cmd + 4
	ld	a,(#_ff+0)
	add	a,#0x94
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
;demo.c:1608: cmd.dest_y = 12;
	ld	hl, #_cmd + 6
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:1609: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1612: cmd.size_x = 20;
	ld	hl, #_cmd + 8
	ld	(hl),#0x14
	inc	hl
	ld	(hl),#0x00
;demo.c:1613: cmd.size_y = 17;
	ld	hl, #_cmd + 10
	ld	(hl),#0x11
	inc	hl
	ld	(hl),#0x00
;demo.c:1614: cmd.data = 0;
;demo.c:1615: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1616: cmd.command = 0xd0; // vram to vram, y only
	ld	a,#0xD0
	ld	(#_cmd + 14),a
;demo.c:1617: cmd.source_x = 128+20*(((ff-1900)>>3) % 6);
	ld	a,(#_ff+0)
	add	a,#0x94
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
;demo.c:1618: cmd.source_y = 768;
	ld	de,#_cmd + 2
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x03
;demo.c:1619: cmd.dest_x = (256-20)-((ff-1900)>>3);
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
;demo.c:1620: cmd.dest_y = 12;
	ld	hl, #_cmd + 6
	ld	(hl),#0x0C
	inc	hl
	ld	(hl),#0x00
;demo.c:1621: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
00116$:
;demo.c:1626: if (ff == 2700) {
	ld	a,(#_ff+0)
	sub	a,#0x8C
	jr	NZ,00210$
	ld	a,(#_ff+1)
	sub	a,#0x0A
	jr	Z,00211$
00210$:
	jr	00119$
00211$:
;demo.c:1627: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00119$:
;demo.c:1630: if (ff > 2700 && ff < 2800) {
	ld	a,#0x8C
	ld	iy,#_ff
	sub	a,0 (iy)
	ld	a,#0x0A
	ld	iy,#_ff
	sbc	a,1 (iy)
	jp	P,00121$
	ld	a,(#_ff+0)
	sub	a,#0xF0
	ld	a,(#_ff+1)
	sbc	a,#0x0A
	jp	P,00121$
;demo.c:1631: slowend = 21;
	ld	hl,#_slowend + 0
	ld	(hl), #0x15
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1632: drawstrslow("Digital Sounds System",0,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#__str_25
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00121$:
;demo.c:1635: if (ff == 3200) {
	ld	a,(#_ff+0)
	sub	a,#0x80
	jr	NZ,00212$
	ld	a,(#_ff+1)
	sub	a,#0x0C
	jr	Z,00213$
00212$:
	jr	00124$
00213$:
;demo.c:1636: ltrpointer = 0;
	ld	hl,#_ltrpointer + 0
	ld	(hl), #0x00
	ld	hl,#_ltrpointer + 1
	ld	(hl), #0x00
00124$:
;demo.c:1639: if (ff > 3200 && ff < 3400) {
	ld	a,#0x80
	ld	iy,#_ff
	sub	a,0 (iy)
	ld	a,#0x0C
	ld	iy,#_ff
	sbc	a,1 (iy)
	jp	P,00152$
	ld	a,(#_ff+0)
	sub	a,#0x48
	ld	a,(#_ff+1)
	sbc	a,#0x0D
	jp	P,00152$
;demo.c:1640: slowend = 19;
	ld	hl,#_slowend + 0
	ld	(hl), #0x13
	ld	hl,#_slowend + 1
	ld	(hl), #0x00
;demo.c:1641: drawstrslow("mew mew mew miu mou",134,0);
	ld	hl,#0x0086
	push	hl
	ld	hl,#__str_26
	push	hl
	call	_drawstrslow
	pop	af
	pop	af
00152$:
	ld	sp,ix
	pop	ix
	ret
_bigtext_end::
__str_14:
	.ascii "DIGITAL"
	.db 0x00
__str_15:
	.ascii "SOUNDS"
	.db 0x00
__str_16:
	.ascii "SYSTEM"
	.db 0x00
__str_17:
	.ascii "COMMAND"
	.db 0x00
__str_18:
	.ascii "   THE  "
	.db 0x00
__str_19:
	.ascii "  BASS "
	.db 0x00
__str_20:
	.ascii "REVISION"
	.db 0x00
__str_21:
	.ascii "   IS OUR"
	.db 0x00
__str_22:
	.ascii "  PARTY"
	.db 0x00
__str_23:
	.ascii "Give a big hand to all the organizers"
	.db 0x00
__str_24:
	.ascii "of this amazing party"
	.db 0x00
__str_25:
	.ascii "Digital Sounds System"
	.db 0x00
__str_26:
	.ascii "mew mew mew miu mou"
	.db 0x00
;demo.c:1646: void waiter() {
;	---------------------------------
; Function waiter
; ---------------------------------
_waiter_start::
_waiter:
;demo.c:1648: }
	ret
_waiter_end::
;demo.c:1656: void credits() {
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
;demo.c:1662: if (initcredits == 0) {
	ld	a,(#_initcredits+0)
	ld	hl,#_initcredits + 1
	or	a,(hl)
	jp	NZ,00102$
;demo.c:1663: uninstall_isr();
	call	_uninstall_isr
;demo.c:1664: PLY_Stop();
	call	_PLY_Stop
;demo.c:1665: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:1667: scratch_clear();
	call	_scratch_clear
;demo.c:1668: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1671: vdp_register(9,130); // 50hz,212
	ld	hl,#0x8209
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1673: bitbuster(loading_pck,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_loading_pck
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1675: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1676: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1677: cmd.data = 0;
;demo.c:1678: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1679: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1680: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1681: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1682: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1683: cmd.dest_y = 768;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x03
;demo.c:1684: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1686: pause();
	call	_pause
;demo.c:1688: vdp_register(2,0x7f);
	ld	hl,#0x7F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1689: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1691: initcredits = 1;
	ld	hl,#_initcredits + 0
	ld	(hl), #0x01
	ld	hl,#_initcredits + 1
	ld	(hl), #0x00
;demo.c:1693: raw_load("CREDIT2 PCK", 4724, packbuffer,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	ld	hl,#0x1274
	push	hl
	ld	hl,#__str_27
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	af
;demo.c:1695: bitbuster(packbuffer,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1697: cmd.size_x = 512;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1698: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1699: cmd.data = 0;
;demo.c:1700: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1701: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1702: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1703: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1704: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1705: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1706: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1708: raw_load("CREDIT3 PCK", 3723, packbuffer,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	ld	hl,#0x0E8B
	push	hl
	ld	hl,#__str_28
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	af
;demo.c:1710: bitbuster(packbuffer,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1712: cmd.size_x = 512;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1713: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1714: cmd.data = 0;
;demo.c:1715: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1716: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1717: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1718: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1719: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1720: cmd.dest_y = 512;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1721: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1723: raw_load("CREDIT1 PCK", 3323, packbuffer,0);
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	ld	hl,#0x0CFB
	push	hl
	ld	hl,#__str_29
	push	hl
	call	_raw_load
	pop	af
	pop	af
	pop	af
	pop	af
;demo.c:1725: bitbuster(packbuffer,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_packbuffer
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1727: scratch_clear();
	call	_scratch_clear
;demo.c:1728: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1730: vdp_register(0,8); // mode 512x212
	ld	hl,#0x0800
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1731: vdp_register(9,130); // 50hz,192
	ld	hl,#0x8209
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1733: install_isr(my_isr);
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
;demo.c:1735: memcpy(cur_palette, credits_palette, 32);
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
;demo.c:1737: scratch_clear();
	call	_scratch_clear
;demo.c:1738: pointframe = 0;
	ld	hl,#_pointframe + 0
	ld	(hl), #0x00
	ld	hl,#_pointframe + 1
	ld	(hl), #0x00
;demo.c:1739: curpage = 0;
	ld	hl,#_curpage + 0
	ld	(hl), #0x00
	ld	hl,#_curpage + 1
	ld	(hl), #0x00
;demo.c:1740: myoffs = 180;
	ld	hl,#_myoffs + 0
	ld	(hl), #0xB4
	ld	hl,#_myoffs + 1
	ld	(hl), #0x00
;demo.c:1741: vdp_register(2,0x1f);
	ld	hl,#0x1F02
	push	hl
	call	_vdp_register
	pop	af
00102$:
;demo.c:1745: if (credittimer < 400) fadein();
	ld	a,(#_credittimer+0)
	sub	a,#0x90
	ld	a,(#_credittimer+1)
	sbc	a,#0x01
	jp	P,00104$
	call	_fadein
00104$:
;demo.c:1747: if(credittimer >= 1000 && curpage == 0) { vdp_register(2, 0x3f); curpage = 256; myoffs = 100; }
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
;demo.c:1748: if(credittimer >= 1500 && curpage == 256) { vdp_register(2, 0x5f); curpage = 512; myoffs = 200; }
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
;demo.c:1750: credittimer+=3;
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
;demo.c:1751: if (credittimer == 1500) {
	ld	a,(#_credittimer+0)
	sub	a,#0xDC
	jr	NZ,00142$
	ld	a,(#_credittimer+1)
	sub	a,#0x05
	jr	Z,00143$
00142$:
	jr	00112$
00143$:
;demo.c:1752: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
00112$:
;demo.c:1755: if (credittimer >= 300 && credittimer < 700 && flipo < 211) {
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
;demo.c:1756: cmd.size_x = 64;
	ld	hl, #_cmd + 8
	ld	(hl),#0x40
	inc	hl
	ld	(hl),#0x00
;demo.c:1757: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:1758: cmd.data = 0;
;demo.c:1759: cmd.argument = 0x00; // from 70xY to left
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1760: cmd.command = 0x93; // vram to vram, y only
	ld	a,#0x93
	ld	(#_cmd + 14),a
;demo.c:1761: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1762: cmd.source_y = 211-(flipo>>4);
	ld	bc,#_cmd + 2
	ld	hl,#_flipo + 0
	ld	e,(hl)
	ld	hl,#_flipo + 1
	ld	d,(hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	a,#0xD3
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
;demo.c:1764: cmd.dest_x = flipo;
	ld	bc,#_cmd + 4
	ld	de,(_flipo)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1765: cmd.dest_y = flipo;
	ld	bc,#_cmd + 6
	ld	de,(_flipo)
	ld	l,c
	ld	h,b
	ld	(hl),e
	inc	hl
	ld	(hl),d
;demo.c:1766: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1767: flipo+=2;
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
;demo.c:1770: if (credittimer > 700) {
	ld	a,#0xBC
	ld	iy,#_credittimer
	sub	a,0 (iy)
	ld	a,#0x02
	ld	iy,#_credittimer
	sbc	a,1 (iy)
	jp	P,00118$
;demo.c:1771: msx2_palette(0,PLY_PSGReg10,PLY_PSGReg10,PLY_PSGReg10);
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
;demo.c:1773: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1774: cmd.size_y = 1;
	ld	hl, #_cmd + 10
	ld	(hl),#0x01
	inc	hl
	ld	(hl),#0x00
;demo.c:1775: cmd.data = 0;
	ld	bc,#_cmd + 12
	ld	a,#0x00
	ld	(bc),a
;demo.c:1776: cmd.argument = 0x00; // from 70xY to left
	ld	hl,#_cmd + 13
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	(hl),#0x00
;demo.c:1777: cmd.command = 0xd0; // vram to vram, y only
	ld	hl,#_cmd + 14
	ld	-6 (ix),l
	ld	-5 (ix),h
	ld	(hl),#0xD0
;demo.c:1778: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1779: cmd.dest_x = 0;
	ld	de,#_cmd + 4
	ex	de,hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1780: cmd.argument = 0x0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
;demo.c:1782: cmd.data = 1+((pointframe>>2) & 0xe);
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
;demo.c:1783: cmd.command = 0x53;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),#0x53
;demo.c:1784: for (x = 0; x < 212; x+=1) {
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
00120$:
	ld	a,-2 (ix)
	sub	a,#0xD4
	ld	a,-1 (ix)
	sbc	a,#0x00
	jp	P,00123$
;demo.c:1785: y = 64+(sintabx[(x+pointframe) & 255]>>1);
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
;demo.c:1786: cmd.dest_x = myoffs+y;
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
;demo.c:1787: cmd.dest_y = curpage+x;
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
;demo.c:1788: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1784: for (x = 0; x < 212; x+=1) {
	inc	-2 (ix)
	jr	NZ,00146$
	inc	-1 (ix)
00146$:
	jp	00120$
00123$:
;demo.c:1790: pointframe+=2;
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
;demo.c:1793: msx2_palette(0,0,0,0);
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
__str_27:
	.ascii "CREDIT2 PCK"
	.db 0x00
__str_28:
	.ascii "CREDIT3 PCK"
	.db 0x00
__str_29:
	.ascii "CREDIT1 PCK"
	.db 0x00
;demo.c:1802: void do_quit() {
;	---------------------------------
; Function do_quit
; ---------------------------------
_do_quit_start::
_do_quit:
;demo.c:1803: waitVB();
		halt 
;demo.c:1804: uninstall_isr();
	call	_uninstall_isr
;demo.c:1805: PLY_Stop();
	call	_PLY_Stop
;demo.c:1806: PLY_SendRegisters();
	call	_PLY_SendRegisters
;demo.c:1808: screen(0);
	ld	a,#0x00
	push	af
	inc	sp
	call	_screen
	inc	sp
;demo.c:1809: vdp_load_palette(twister_palette);
	ld	hl,#_twister_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1811: puts("bye friends.\r\n\r\n");
	ld	hl,#__str_30
	push	hl
	call	_puts
	pop	af
;demo.c:1813: exit(0);	
	ld	a,#0x00
	push	af
	inc	sp
	call	_exit
	inc	sp
	ret
_do_quit_end::
__str_30:
	.ascii "bye friends."
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
;demo.c:1819: void main() {
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
;demo.c:1820: unsigned char quit=0;
	ld	-1 (ix),#0x00
;demo.c:1826: spindown();
	call	_spindown
;demo.c:1828: puts("[starting DSS MSX demosystem]\r\n\r\n");
	ld	hl,#__str_31
	push	hl
	call	_puts
	pop	af
;demo.c:1830: for (y = 0; y < 2; y++) {
	ld	-5 (ix),#0x00
	ld	-4 (ix),#0x00
00118$:
	ld	a,-5 (ix)
	sub	a,#0x02
	ld	a,-4 (ix)
	sbc	a,#0x00
	jp	P,00121$
;demo.c:1831: for (x = 0; x < 16; x++) {
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
;demo.c:1832: tri_lookup_x[(y*16)+x] = x * 16;
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
;demo.c:1833: tri_lookup_y[(y*16)+x] = (768+129)+(y * 16);
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
;demo.c:1831: for (x = 0; x < 16; x++) {
	inc	-3 (ix)
	jr	NZ,00146$
	inc	-2 (ix)
00146$:
	jp	00114$
00120$:
;demo.c:1830: for (y = 0; y < 2; y++) {
	inc	-5 (ix)
	jr	NZ,00147$
	inc	-4 (ix)
00147$:
	jp	00118$
00121$:
;demo.c:1837: for (x = 0; x < 26; x++) {
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
;demo.c:1838: twelvetimes[x] = x * 12;
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
;demo.c:1839: eighttimes[x] = x * 8;
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
;demo.c:1837: for (x = 0; x < 26; x++) {
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
;demo.c:1842: puts("init sweet PSG bleeps...");
	ld	hl,#__str_32
	push	hl
	call	_puts
	pop	af
;demo.c:1844: PLY_SongPtr = (char *)0x0103;
	ld	hl,#_PLY_SongPtr + 0
	ld	(hl), #0x03
	ld	hl,#_PLY_SongPtr + 1
	ld	(hl), #0x01
;demo.c:1845: PLY_Init();
	call	_PLY_Init
;demo.c:1846: puts("done.\r\n");
	ld	hl,#__str_33
	push	hl
	call	_puts
	pop	af
;demo.c:1848: puts("detecting ya vdp type...\r\n");
	ld	hl,#__str_34
	push	hl
	call	_puts
	pop	af
;demo.c:1849: if(isvdp2())
	call	_isvdp2
	xor	a,a
	or	a,l
	jr	Z,00102$
;demo.c:1851: puts("vdp2 found! setting 50hz...\r\n");
	ld	hl,#__str_35
	push	hl
	call	_puts
	pop	af
	jr	00103$
00102$:
;demo.c:1854: puts(" vdp1 found.\r\nSorry, this demo requires a VDP2 with 128k for VRAM.\r\n");
	ld	hl,#__str_36
	push	hl
	call	_puts
	pop	af
;demo.c:1855: do_quit();
	call	_do_quit
00103$:
;demo.c:1858: memcpy(cur_palette, twister_pl5+7, 32);
	ld	bc,#_twister_pl5 + 7
	ld	hl,#0x0020
	push	hl
	push	bc
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1859: memcpy(twister_palette, cur_palette, 32);
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
;demo.c:1861: memcpy(cur_palette, boxes_pl5+7, 32);
	ld	bc,#_boxes_pl5 + 7
	ld	hl,#0x0020
	push	hl
	push	bc
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1862: memcpy(boxes_palette, cur_palette, 32);
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
;demo.c:1864: memcpy(cur_palette, bulbs_pl5+7, 32);
	ld	bc,#_bulbs_pl5 + 7
	ld	hl,#0x0020
	push	hl
	push	bc
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1865: memcpy(bulbs_palette, cur_palette, 32);
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
;demo.c:1867: memcpy(cur_palette, credit1_pl6+7, 32);
	ld	bc,#_credit1_pl6 + 7
	ld	hl,#0x0020
	push	hl
	push	bc
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1868: memcpy(credits_palette, cur_palette, 32);
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
;demo.c:1871: puts("all good, starting the demo!\r\n");
	ld	hl,#__str_37
	push	hl
	call	_puts
	pop	af
;demo.c:1873: pause();
	call	_pause
;demo.c:1874: pause();
	call	_pause
;demo.c:1875: pause();
	call	_pause
;demo.c:1876: pause();
	call	_pause
;demo.c:1877: pause();
	call	_pause
;demo.c:1878: pause();
	call	_pause
;demo.c:1880: vdp_set_screen5();
	call	_vdp_set_screen5
;demo.c:1882: scratch_clear();
	call	_scratch_clear
;demo.c:1883: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1885: bitbuster(loading_pck,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_loading_pck
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1887: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1888: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1889: cmd.data = 0;
;demo.c:1890: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1891: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1892: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1893: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1894: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1895: cmd.dest_y = 768;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x03
;demo.c:1896: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1898: vdp_register(2,0x7f);
	ld	hl,#0x7F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1899: vdp_load_palette(boxes_palette);
	ld	hl,#_boxes_palette
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1903: pck_load("BULBS   PCK",2431,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x097F
	push	hl
	ld	hl,#__str_38
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1905: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1906: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1907: cmd.data = 0;
;demo.c:1908: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1909: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1910: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1911: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1912: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1913: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1914: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1916: pck_load("TWISTER PCK",4032,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x0FC0
	push	hl
	ld	hl,#__str_39
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1918: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1919: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1920: cmd.data = 0;
;demo.c:1921: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1922: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1923: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1924: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1925: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1926: cmd.dest_y = 512;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x02
;demo.c:1927: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1929: scratch_clear();
	call	_scratch_clear
;demo.c:1930: vdp_load_palette(scratch);
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_palette
	pop	af
;demo.c:1932: vdp_register(2,0x1f);
	ld	hl,#0x1F02
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1934: pck_load("BOXES   PCK",3002,0x0000,VRAM_0,0);
	ld	hl,#0x0000
	push	hl
	ld	l, #0x01
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl,#0x0BBA
	push	hl
	ld	hl,#__str_40
	push	hl
	call	_pck_load
	ld	iy,#0x000A
	add	iy,sp
	ld	sp,iy
;demo.c:1936: cmd.size_x = 256;
	ld	hl, #_cmd + 8
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1937: cmd.size_y = 212;
	ld	hl, #_cmd + 10
	ld	(hl),#0xD4
	inc	hl
	ld	(hl),#0x00
;demo.c:1938: cmd.data = 0;
;demo.c:1939: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1940: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1941: cmd.source_x = 0;
	ld	hl,#_cmd
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1942: cmd.source_y = 0;
	ld	hl, #_cmd + 2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1943: cmd.dest_x = 0;
	ld	hl, #_cmd + 4
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;demo.c:1944: cmd.dest_y = 768;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x03
;demo.c:1945: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1947: bitbuster(dsslogo_pck,0x0000,VRAM_0);
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0000
	push	hl
	ld	hl,#_dsslogo_pck
	push	hl
	call	_bitbuster
	pop	af
	pop	af
	inc	sp
;demo.c:1949: cmd.size_x = 108;
	ld	hl, #_cmd + 8
	ld	(hl),#0x6C
	inc	hl
	ld	(hl),#0x00
;demo.c:1950: cmd.size_y = 116;
	ld	hl, #_cmd + 10
	ld	(hl),#0x74
	inc	hl
	ld	(hl),#0x00
;demo.c:1951: cmd.data = 0;
;demo.c:1952: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1953: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1954: cmd.source_x = 75;
	ld	hl,#_cmd
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1955: cmd.source_y = 50;
	ld	hl, #_cmd + 2
	ld	(hl),#0x32
	inc	hl
	ld	(hl),#0x00
;demo.c:1956: cmd.dest_x = 75;
	ld	hl, #_cmd + 4
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1957: cmd.dest_y = 256;
	ld	hl, #_cmd + 6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;demo.c:1958: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1960: cmd.size_x = 108;
	ld	hl, #_cmd + 8
	ld	(hl),#0x6C
	inc	hl
	ld	(hl),#0x00
;demo.c:1961: cmd.size_y = 60;
	ld	hl, #_cmd + 10
	ld	(hl),#0x3C
	inc	hl
	ld	(hl),#0x00
;demo.c:1962: cmd.data = 0;
;demo.c:1963: cmd.argument = 0x00;
	ld	a,#0x00
	ld	(#_cmd + 12),a
	ld	(#_cmd + 13),a
;demo.c:1964: cmd.command = 0xd0; 
	ld	bc,#_cmd + 14
	ld	a,#0xD0
	ld	(bc),a
;demo.c:1965: cmd.source_x = 75;
	ld	hl,#_cmd
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1966: cmd.source_y = 256+110;
	ld	hl, #_cmd + 2
	ld	(hl),#0x6E
	inc	hl
	ld	(hl),#0x01
;demo.c:1967: cmd.dest_x = 75;
	ld	hl, #_cmd + 4
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1968: cmd.dest_y = 40;
	ld	hl, #_cmd + 6
	ld	(hl),#0x28
	inc	hl
	ld	(hl),#0x00
;demo.c:1969: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1970: cmd.dest_x = 75;
	ld	hl, #_cmd + 4
	ld	(hl),#0x4B
	inc	hl
	ld	(hl),#0x00
;demo.c:1971: cmd.dest_y = 100;
	ld	hl, #_cmd + 6
	ld	(hl),#0x64
	inc	hl
	ld	(hl),#0x00
;demo.c:1972: vdp_copier(&cmd);
	ld	hl,#_cmd
	push	hl
	call	_vdp_copier
	pop	af
;demo.c:1974: memcpy(cur_palette, dsslogo_pl5+7, 32);
	ld	bc,#_dsslogo_pl5 + 7
	ld	hl,#0x0020
	push	hl
	push	bc
	ld	hl,#_cur_palette
	push	hl
	call	_memcpy
	pop	af
	pop	af
	pop	af
;demo.c:1976: scratch_clear();
	call	_scratch_clear
;demo.c:1978: vdp_register(9,130); // 50hz,212
	ld	hl,#0x8209
	push	hl
	call	_vdp_register
	pop	af
;demo.c:1980: install_isr(my_isr);
	ld	hl,#_my_isr
	push	hl
	call	_install_isr
	pop	af
;demo.c:1984: while (!quit) {
00111$:
	xor	a,a
	or	a,-1 (ix)
	jp	NZ,00113$
;demo.c:1986: if (vbicount >= scenetimings[timeindex+1]) {
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
;demo.c:1987: sceneindex++;
	ld	iy,#_sceneindex
	inc	0 (iy)
	jr	NZ,00153$
	ld	iy,#_sceneindex
	inc	1 (iy)
00153$:
;demo.c:1988: timeindex+=2;
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
;demo.c:1991: if (vbicount >= scenetimings[timeindex] && vbicount < scenetimings[timeindex+1]) {
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
;demo.c:1992: waitVB();
		halt 
;demo.c:1993: scenepointers[sceneindex]();
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
;demo.c:1997: if(space())
	ld	hl,#0x0108
	push	hl
	call	_ispressed
	pop	af
	xor	a,a
	or	a,l
	jp	Z,00111$
;demo.c:1998: quit=1;
	ld	-1 (ix),#0x01
	jp	00111$
00113$:
;demo.c:2001: do_quit();
	call	_do_quit
	ld	sp,ix
	pop	ix
	ret
_main_end::
__str_31:
	.ascii "[starting DSS MSX demosystem]"
	.db 0x0D
	.db 0x0A
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_32:
	.ascii "init sweet PSG bleeps..."
	.db 0x00
__str_33:
	.ascii "done."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_34:
	.ascii "detecting ya vdp type..."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_35:
	.ascii "vdp2 found! setting 50hz..."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_36:
	.ascii " vdp1 found."
	.db 0x0D
	.db 0x0A
	.ascii "Sorry, this demo requires a VDP2 with 128k for"
	.ascii " VRAM."
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_37:
	.ascii "all good, starting the demo!"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_38:
	.ascii "BULBS   PCK"
	.db 0x00
__str_39:
	.ascii "TWISTER PCK"
	.db 0x00
__str_40:
	.ascii "BOXES   PCK"
	.db 0x00
	.area _CODE
	.area _CABS
