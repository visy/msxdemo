;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Thu Mar 29 12:33:00 2018
;--------------------------------------------------------
	.module msxlib
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ispressed
	.globl _screen
	.globl _vdp_address
	.globl _vdp_poke
	.globl _vdp_peek
	.globl _vdp_set
	.globl _vdp_slowset
	.globl _vdp_copy
	.globl _vdp_slowcopy
	.globl _vdp_bigcopy
	.globl _vdp_register
	.globl _msx2_sethz
	.globl _vdp_status
	.globl _vdp2_status
	.globl _sprite_col
	.globl _sprite_pos
	.globl _sprite_pat
	.globl _msx2_palette
	.globl _joy_status
	.globl _mouse_status
	.globl _isvdp2
	.globl _spindown
	.globl _random
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_vdp1	=	0x0098
_vdp2	=	0x0099
_vdp3	=	0x009a
_kbd1	=	0x00a9
_kbd2	=	0x00aa
_psgsel	=	0x00a0
_psgw	=	0x00a1
_psgr	=	0x00a2
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_retvalli:
	.ds 1
_randomseed:
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
;msxlib.c:576: static unsigned randomseed=0x83cd;
	ld	iy,#_randomseed
	ld	0 (iy),#0xCD
	ld	iy,#_randomseed
	ld	1 (iy),#0x83
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;msxlib.c:17: char ispressed(unsigned char line,unsigned char bitti)
;	---------------------------------
; Function ispressed
; ---------------------------------
_ispressed_start::
_ispressed:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:20: c=(kbd2&0xf0)|line;
	in	a,(_kbd2)
	and	a,#0xF0
	or	a,4 (ix)
;msxlib.c:21: kbd2=c;
	ld	c,a
	out	(_kbd2),a
;msxlib.c:22: c=kbd1&bitti;
	in	a,(_kbd1)
	and	a,5 (ix)
	ld	b,a
	ld	c,b
;msxlib.c:24: if(c==0)
	xor	a,a
	or	a,c
	jr	NZ,00102$
;msxlib.c:25: return(1);
	ld	l,#0x01
	jr	00104$
00102$:
;msxlib.c:27: return(0);
	ld	l,#0x00
00104$:
	pop	ix
	ret
_ispressed_end::
;msxlib.c:30: void screen(char mode)
;	---------------------------------
; Function screen
; ---------------------------------
_screen_start::
_screen:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:49: __endasm;
	
		   push iy
		   push bc
		   push de
		   push hl
	
		   ld a,4(ix)
		   ld (0xfcaf),a
		   ld ix,#0x5f
		   ld iy,(0xfcc0)
		   call 0x1c
	
		   pop hl
		   pop de
		   pop bc
		   pop iy
		   
	pop	ix
	ret
_screen_end::
;msxlib.c:52: void vdp_address(unsigned addr)
;	---------------------------------
; Function vdp_address
; ---------------------------------
_vdp_address_start::
_vdp_address:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:54: vdp2=addr;
	ld	a,4 (ix)
	out	(_vdp2),a
;msxlib.c:55: vdp2=(addr>>8)|0x40;
	ld	c,5 (ix)
	ld	b,#0x00
	ld	a,c
	or	a,#0x40
	ld	c,a
	out	(_vdp2),a
	pop	ix
	ret
_vdp_address_end::
;msxlib.c:58: void vdp_poke(unsigned addr,unsigned char c)
;	---------------------------------
; Function vdp_poke
; ---------------------------------
_vdp_poke_start::
_vdp_poke:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:60: vdp2=addr;
	ld	a,4 (ix)
	out	(_vdp2),a
;msxlib.c:61: vdp2=(addr>>8)|0x40;
	ld	c,5 (ix)
	ld	b,#0x00
	ld	a,c
	or	a,#0x40
	ld	c,a
	out	(_vdp2),a
;msxlib.c:62: vdp1=c;
	ld	a,6 (ix)
	out	(_vdp1),a
	pop	ix
	ret
_vdp_poke_end::
;msxlib.c:65: unsigned char vdp_peek(unsigned addr)
;	---------------------------------
; Function vdp_peek
; ---------------------------------
_vdp_peek_start::
_vdp_peek:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:67: vdp2=addr;
	ld	a,4 (ix)
	out	(_vdp2),a
;msxlib.c:68: vdp2=addr>>8;
	ld	c,5 (ix)
	ld	b,#0x00
	ld	a,c
	out	(_vdp2),a
;msxlib.c:69: return(vdp1);
	in	a,(_vdp1)
	ld	l,a
	pop	ix
	ret
_vdp_peek_end::
;msxlib.c:72: void vdp_set(unsigned char c,unsigned bytes)
;	---------------------------------
; Function vdp_set
; ---------------------------------
_vdp_set_start::
_vdp_set:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:133: __endasm;
	
		   push de
		   push bc
	
		   ld d,4(ix) ; Parametrit
		   ld c,5(ix)
		   ld b,6(ix)
		   push bc
	
		   srl b ; BC/8
		   rr c
		   srl b
		   rr c
		   srl b
		   rr c
		   ld a,b
		   or c
		   jp z,1$
	
; NOPs needed due to MSX2 :(((
	0$:
		   ld a,d
		   out (0x98),a
		   nop
		   out (0x98),a
		   nop
		   out (0x98),a
		   nop
		   out (0x98),a
		   nop
		   out (0x98),a
		   nop
		   out (0x98),a
		   nop
		   out (0x98),a
		   nop
		   out (0x98),a
		   dec bc
		   ld a,b
		   or c
		   jp nz,0$
	
	1$:
		   pop bc ; The modulo part
		   ld a,c
		   and #7
		   jp z,2$
	
		   ld c,a
		   ld a,d
	3$:
		   out (0x98),a
		   dec c
		   jp nz,3$
	
	2$:
		   pop bc
		   pop de
		   
	pop	ix
	ret
_vdp_set_end::
;msxlib.c:136: void vdp_slowset(unsigned char c,unsigned bytes)
;	---------------------------------
; Function vdp_slowset
; ---------------------------------
_vdp_slowset_start::
_vdp_slowset:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:220: __endasm;
	
		   push de
		   push bc
	
		   ld d,4(ix) ; Parametrit
		   ld c,5(ix)
		   ld b,6(ix)
		   push bc
	
		   srl b ; BC/8
		   rr c
		   srl b
		   rr c
		   srl b
		   rr c
		   ld a,b
		   or c
		   jp z,1$
	
	0$:
		   ld a,d
		   out (0x98),a
		   nop
		   nop
		   nop
		   nop
		   out (0x98),a
		   nop
		   nop
		   nop
		   nop
		   out (0x98),a
		   nop
		   nop
		   nop
		   nop
		   out (0x98),a
		   nop
		   nop
		   nop
		   nop
		   out (0x98),a
		   nop
		   nop
		   nop
		   nop
		   out (0x98),a
		   nop
		   nop
		   nop
		   nop
		   out (0x98),a
		   nop
		   nop
		   nop
		   nop
		   out (0x98),a
		   dec bc
		   ld a,b
		   or c
		   jp nz,0$
	
	1$:
		   pop bc ; The modulo part
		   ld a,c
		   and #7
		   jp z,2$
	
		   ld c,a
		   ld a,d
	3$:
		   out (0x98),a
		   nop
		   nop
		   nop
		   dec c
		   jp nz,3$
	
	2$:
		   pop bc
		   pop de
		   
	pop	ix
	ret
_vdp_slowset_end::
;msxlib.c:223: void vdp_copy(unsigned char *src,unsigned bytes)
;	---------------------------------
; Function vdp_copy
; ---------------------------------
_vdp_copy_start::
_vdp_copy:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:275: __endasm;
	
		   push de
		   push hl
		   push bc
	
		   ld l,4(ix) ; Parametrit
		   ld h,5(ix)
		   ld e,6(ix)
		   ld d,7(ix)
		   push de
		   ld c,#0x98
	
		   srl d ; DE/8
		   rr e
		   srl d
		   rr e
		   srl d
		   rr e
		   ld a,d
		   or e
		   jp z,1$
	
	0$:
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   dec de
		   ld a,d
		   or e
		   jp nz,0$
	
	1$:
		   pop de ; The modulo part
		   ld a,e
		   and #7
		   jp z,2$
	
		   ld b,a
		   otir
	
	2$:
		   pop bc
		   pop hl
		   pop de
		   
	pop	ix
	ret
_vdp_copy_end::
;msxlib.c:278: void vdp_slowcopy(unsigned char *src,unsigned bytes)
;	---------------------------------
; Function vdp_slowcopy
; ---------------------------------
_vdp_slowcopy_start::
_vdp_slowcopy:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:347: __endasm;
	
		   push de
		   push hl
		   push bc
	
		   ld l,4(ix) ; Parametrit
		   ld h,5(ix)
		   ld e,6(ix)
		   ld d,7(ix)
		   push de
		   ld c,#0x98
	
		   srl d ; DE/8
		   rr e
		   srl d
		   rr e
		   srl d
		   rr e
		   ld a,d
		   or e
		   jp z,1$
	
	0$:
		   outi
		   nop
		   nop
		   outi
		   nop
		   nop
		   outi
		   nop
		   nop
		   outi
		   nop
		   nop
		   outi
		   nop
		   nop
		   outi
		   nop
		   nop
		   outi
		   nop
		   nop
		   outi
		   dec de
		   ld a,d
		   or e
		   jp nz,0$
	
	1$:
		   pop de ; The modulo part
		   ld a,e
		   and #7
		   jp z,2$
	
		   ld b,a
	3$:
	outi
		   ld a,b
		   or a
		   jp nz,3$
	
	2$:
		   pop bc
		   pop hl
		   pop de
		   
	pop	ix
	ret
_vdp_slowcopy_end::
;msxlib.c:350: void vdp_bigcopy(unsigned char *src,unsigned block32)
;	---------------------------------
; Function vdp_bigcopy
; ---------------------------------
_vdp_bigcopy_start::
_vdp_bigcopy:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:408: __endasm;
	
		   push de
		   push hl
		   push bc
	
		   ld l,4(ix) ; Parametrit
		   ld h,5(ix)
		   ld e,6(ix)
		   ld d,7(ix)
		   ld c,#0x98
	
	0$:
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
	
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
	
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
	
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   outi
		   dec de
		   ld a,d
		   or e
		   jp nz,0$
	
		   pop bc
		   pop hl
		   pop de
		   
	pop	ix
	ret
_vdp_bigcopy_end::
;msxlib.c:411: void vdp_register(unsigned char reg,unsigned char c)
;	---------------------------------
; Function vdp_register
; ---------------------------------
_vdp_register_start::
_vdp_register:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:413: vdp2=c;
	ld	a,5 (ix)
	out	(_vdp2),a
;msxlib.c:414: vdp2=reg|0x80;
	ld	a,4 (ix)
	or	a,#0x80
	out	(_vdp2),a
	pop	ix
	ret
_vdp_register_end::
;msxlib.c:417: void msx2_sethz(char hz)
;	---------------------------------
; Function msx2_sethz
; ---------------------------------
_msx2_sethz_start::
_msx2_sethz:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:419: if(hz==50)
	ld	a,4 (ix)
	sub	a,#0x32
	jr	NZ,00102$
;msxlib.c:420: vdp_register(VDP_MODE3,2);
	ld	hl,#0x0209
	push	hl
	call	_vdp_register
	pop	af
	jr	00104$
00102$:
;msxlib.c:422: vdp_register(VDP_MODE3,0);
	ld	hl,#0x0009
	push	hl
	call	_vdp_register
	pop	af
00104$:
	pop	ix
	ret
_msx2_sethz_end::
;msxlib.c:425: unsigned char vdp_status()
;	---------------------------------
; Function vdp_status
; ---------------------------------
_vdp_status_start::
_vdp_status:
;msxlib.c:427: return vdp2;
	in	a,(_vdp2)
	ld	l,a
	ret
_vdp_status_end::
;msxlib.c:430: unsigned char vdp2_status(unsigned char reg)
;	---------------------------------
; Function vdp2_status
; ---------------------------------
_vdp2_status_start::
_vdp2_status:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:434: vdp_register(15,reg);
	ld	a,4 (ix)
	push	af
	inc	sp
	ld	a,#0x0F
	push	af
	inc	sp
	call	_vdp_register
	pop	af
;msxlib.c:435: c=vdp2;
	in	a,(_vdp2)
	ld	c,a
;msxlib.c:436: vdp_register(15,0);
	push	bc
	ld	hl,#0x000F
	push	hl
	call	_vdp_register
	pop	af
	pop	bc
;msxlib.c:438: return c;
	ld	l,c
	pop	ix
	ret
_vdp2_status_end::
;msxlib.c:441: void sprite_col(int num,char col)
;	---------------------------------
; Function sprite_col
; ---------------------------------
_sprite_col_start::
_sprite_col:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:443: vdp_poke(0x7800+(num<<2)+3,col);
	ld	c,6 (ix)
	ld	e,4 (ix)
	ld	d,5 (ix)
	sla	e
	rl	d
	sla	e
	rl	d
	ld	hl,#0x7803
	add	hl,de
	ex	de,hl
	ld	a,c
	push	af
	inc	sp
	push	de
	call	_vdp_poke
	pop	af
	inc	sp
	pop	ix
	ret
_sprite_col_end::
;msxlib.c:446: void sprite_pos(int num,unsigned char x,unsigned char y)
;	---------------------------------
; Function sprite_pos
; ---------------------------------
_sprite_pos_start::
_sprite_pos:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:448: vdp_poke(0x7a00+(num<<2),y);
	ld	c,4 (ix)
	ld	b,5 (ix)
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x7A00
	add	hl,bc
	ex	de,hl
	push	bc
	ld	a,7 (ix)
	push	af
	inc	sp
	push	de
	call	_vdp_poke
	pop	af
	inc	sp
	pop	bc
;msxlib.c:449: vdp_poke(0x7a00+(num<<2)+1,x);
	ld	hl,#0x7A01
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,6 (ix)
	push	af
	inc	sp
	push	bc
	call	_vdp_poke
	pop	af
	inc	sp
	pop	ix
	ret
_sprite_pos_end::
;msxlib.c:452: void sprite_pat(int num,unsigned char pat)
;	---------------------------------
; Function sprite_pat
; ---------------------------------
_sprite_pat_start::
_sprite_pat:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:454: vdp_poke(0x7000+(num<<2)+2,pat);
	ld	c,4 (ix)
	ld	b,5 (ix)
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x7002
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,6 (ix)
	push	af
	inc	sp
	push	bc
	call	_vdp_poke
	pop	af
	inc	sp
	pop	ix
	ret
_sprite_pat_end::
;msxlib.c:457: void msx2_palette(char col,char r,char g,char b)
;	---------------------------------
; Function msx2_palette
; ---------------------------------
_msx2_palette_start::
_msx2_palette:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:459: vdp2=col;
	ld	a,4 (ix)
	out	(_vdp2),a
;msxlib.c:460: vdp2=0x90;
	ld	a,#0x90
	out	(_vdp2),a
;msxlib.c:461: vdp3=(r<<4)+b;
	ld	a,5 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	c,a
	add	a,7 (ix)
	out	(_vdp3),a
;msxlib.c:462: vdp3=g;
	ld	a,6 (ix)
	out	(_vdp3),a
	pop	ix
	ret
_msx2_palette_end::
;msxlib.c:465: char joy_status(char num)
;	---------------------------------
; Function joy_status
; ---------------------------------
_joy_status_start::
_joy_status:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:469: psgsel=0xf;
	ld	a,#0x0F
	out	(_psgsel),a
;msxlib.c:470: c=psgr;
	in	a,(_psgr)
	ld	c,a
;msxlib.c:472: if(num==1)
	ld	a,4 (ix)
	sub	a,#0x01
	jr	NZ,00102$
;msxlib.c:473: psgw=c&0x80|0x03;
	ld	a,c
	and	a,#0x80
	ld	b,a
	or	a,#0x03
	out	(_psgw),a
	jr	00103$
00102$:
;msxlib.c:475: psgw=c&0x80|0x4c;
	ld	a,c
	and	a,#0x80
	ld	c,a
	or	a,#0x4C
	out	(_psgw),a
00103$:
;msxlib.c:477: psgsel=0xe;
	ld	a,#0x0E
	out	(_psgsel),a
;msxlib.c:478: return(psgr^0xff);
	in	a,(_psgr)
	xor	a,#0xFF
	ld	l,a
	pop	ix
	ret
_joy_status_end::
;msxlib.c:481: static void waitmouse(void)
;	---------------------------------
; Function waitmouse
; ---------------------------------
_waitmouse:
;msxlib.c:484: for(n=0;n<8;n++)
	ld	c,#0x08
00103$:
;msxlib.c:488: __endasm;
	
		 nop
		 
	dec	c
;msxlib.c:484: for(n=0;n<8;n++)
	xor	a,a
	or	a,c
	jr	NZ,00103$
	ret
;msxlib.c:493: char mouse_status(char num,signed char *x,signed char *y)
;	---------------------------------
; Function mouse_status
; ---------------------------------
_mouse_status_start::
_mouse_status:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;msxlib.c:498: if(num==1)
	ld	a,4 (ix)
	sub	a,#0x01
	jr	NZ,00102$
;msxlib.c:500: outval=0x93;
;msxlib.c:501: xorval=0x10;
	ld	bc,#0x1093
	jr	00103$
00102$:
;msxlib.c:505: outval=0xec;
;msxlib.c:506: xorval=0x20;
	ld	bc,#0x20EC
00103$:
;msxlib.c:509: waitmouse();
	push	bc
	call	_waitmouse
	pop	bc
;msxlib.c:510: waitmouse();
	push	bc
	call	_waitmouse
	pop	bc
;msxlib.c:511: psgsel=15;
	ld	a,#0x0F
	out	(_psgsel),a
;msxlib.c:512: psgw=outval;
	ld	a,c
	out	(_psgw),a
;msxlib.c:513: outval^=xorval;
	ld	a,c
	xor	a,b
	ld	c,a
;msxlib.c:514: waitmouse();
	push	bc
	call	_waitmouse
	pop	bc
;msxlib.c:515: psgsel=14;
	ld	a,#0x0E
	out	(_psgsel),a
;msxlib.c:516: c=butt=psgr;
	in	a,(_psgr)
;msxlib.c:517: ex=(c&0xf)<<4;
	ld	d,a
	and	a,#0x0F
	ld	e,a
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	-2 (ix),a
;msxlib.c:519: psgsel=15;
	ld	a,#0x0F
	out	(_psgsel),a
;msxlib.c:520: psgw=outval;
	ld	a,c
	out	(_psgw),a
;msxlib.c:521: outval^=xorval;
	ld	a,c
	xor	a,b
	ld	c,a
;msxlib.c:522: waitmouse();
	push	bc
	push	de
	call	_waitmouse
	pop	de
	pop	bc
;msxlib.c:523: psgsel=14;
	ld	a,#0x0E
	out	(_psgsel),a
;msxlib.c:524: c=psgr;
	in	a,(_psgr)
;msxlib.c:525: ex|=c&0xf;
	ld	-1 (ix),a
	and	a,#0x0F
	ld	e,a
	or	a,-2 (ix)
	ld	-2 (ix),a
;msxlib.c:527: psgsel=15;
	ld	a,#0x0F
	out	(_psgsel),a
;msxlib.c:528: psgw=outval;
	ld	a,c
	out	(_psgw),a
;msxlib.c:529: outval^=xorval;
	ld	a,c
	xor	a,b
	ld	c,a
;msxlib.c:530: waitmouse();
	push	bc
	push	de
	call	_waitmouse
	pop	de
	pop	bc
;msxlib.c:531: psgsel=14;
	ld	a,#0x0E
	out	(_psgsel),a
;msxlib.c:532: c=psgr;
	in	a,(_psgr)
;msxlib.c:533: ey=(c&0xf)<<4;
	ld	-1 (ix),a
	and	a,#0x0F
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	b,a
;msxlib.c:535: psgsel=15;
	ld	a,#0x0F
	out	(_psgsel),a
;msxlib.c:536: psgw=outval;
	ld	a,c
	out	(_psgw),a
;msxlib.c:538: waitmouse();
	push	bc
	push	de
	call	_waitmouse
	pop	de
	pop	bc
;msxlib.c:539: psgsel=14;
	ld	a,#0x0E
	out	(_psgsel),a
;msxlib.c:540: c=psgr;
	in	a,(_psgr)
;msxlib.c:541: ey|=c&0xf;
	ld	-1 (ix),a
	and	a,#0x0F
	or	a,b
	ld	b,a
;msxlib.c:543: *x=-ex;
	push	hl
	ld	l,5 (ix)
	ld	h,6 (ix)
	push	hl
	pop	iy
	pop	hl
	xor	a,a
	sbc	a,-2 (ix)
	ld	c,a
	ld	(iy),c
;msxlib.c:544: *y=-ey;
	push	hl
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	pop	iy
	pop	hl
	xor	a,a
	sbc	a,b
	ld	b,a
	ld	(iy),b
;msxlib.c:545: return(butt^0xff);
	ld	a,d
	xor	a,#0xFF
	ld	l,a
	ld	sp,ix
	pop	ix
	ret
_mouse_status_end::
;msxlib.c:548: char isvdp2(void) // Thanks to Nyyrikki
;	---------------------------------
; Function isvdp2
; ---------------------------------
_isvdp2_start::
_isvdp2:
;msxlib.c:552: DI;
		di 
;msxlib.c:553: vdp2=1;
	ld	a,#0x01
	out	(_vdp2),a
;msxlib.c:554: vdp2=0x8f;
	ld	a,#0x8F
	out	(_vdp2),a
;msxlib.c:555: c=vdp2;
	in	a,(_vdp2)
	ld	c,a
;msxlib.c:556: vdp2=0;
	ld	a,#0x00
	out	(_vdp2),a
;msxlib.c:557: vdp2=0x8f;
	ld	a,#0x8F
	out	(_vdp2),a
;msxlib.c:558: EI;
		ei 
;msxlib.c:560: if(c&2==2)
	ld	a,c
	and	a,#0x01
	jr	Z,00102$
;msxlib.c:561: return(0);
	ld	l,#0x00
	ret
00102$:
;msxlib.c:562: return(1);
	ld	l,#0x01
	ret
_isvdp2_end::
;msxlib.c:567: void spindown(void)
;	---------------------------------
; Function spindown
; ---------------------------------
_spindown_start::
_spindown:
;msxlib.c:569: DI;
		di 
;msxlib.c:570: *(unsigned *)0xf1c1=1;
	ld	iy,#0xF1C1
	ld	0 (iy),#0x01
	ld	1 (iy),#0x00
;msxlib.c:571: EI;
		ei 
;msxlib.c:572: waitVB();
		halt 
;msxlib.c:573: waitVB();
		halt 
	ret
_spindown_end::
;msxlib.c:578: unsigned random(void)
;	---------------------------------
; Function random
; ---------------------------------
_random_start::
_random:
;msxlib.c:594: __endasm;
	
		push de
	
		ld hl,(_randomseed)
		ld de,#0x83cd
		ld a,r
		add a,e
		ld e,a
		add hl,de
		rrc h
		rr l
		ld (_randomseed),hl
	
		pop de
		
;msxlib.c:596: return(randomseed);
	ld	hl,(_randomseed)
	ret
_random_end::
	.area _CODE
	.area _CABS
