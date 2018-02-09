;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (Mac OS X i386)
; This file was generated Fri Feb  9 03:50:08 2018
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
	.globl _readfile
	.globl _spindown
	.globl _print
	.globl _random
	.globl _mem_set
	.globl _mem_set_stack
	.globl _mem_cpy
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
;msxlib.c:713: static unsigned randomseed=0x83cd;
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
;msxlib.c:443: vdp_poke(0x1b00+(num<<2)+3,col);
	ld	c,6 (ix)
	ld	e,4 (ix)
	ld	d,5 (ix)
	sla	e
	rl	d
	sla	e
	rl	d
	ld	hl,#0x1B03
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
;msxlib.c:448: vdp_poke(0x1b00+(num<<2),y);
	ld	c,4 (ix)
	ld	b,5 (ix)
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x1B00
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
;msxlib.c:449: vdp_poke(0x1b00+(num<<2)+1,x);
	ld	hl,#0x1B01
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
;msxlib.c:454: vdp_poke(0x1b00+(num<<2)+2,pat);
	ld	c,4 (ix)
	ld	b,5 (ix)
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#0x1B02
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
;msxlib.c:567: static void asm_readfile(char *name,unsigned char *dest)
;	---------------------------------
; Function asm_readfile
; ---------------------------------
_asm_readfile:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:636: __endasm;
	
		   push ix
		   ld ix,#0
		   add ix,sp
		   push de
		   push hl
		   push bc
	
		   ld de,#$21
		   ld b,#40 ; Clear FCB
		   xor a
	$25:
		   ld (de),a
		   inc de
		   djnz $25
	
		   ld de,#$21+1 ; Copy name
		   ld l,6(ix)
		   ld h,7(ix)
		   ld bc,#11
		   ldir
	
		   ld de,#$21
		   ld c,#0xf ; Open file
		   push ix
		   call 5
		   pop ix
		   ld (_retvalli),a
	
		   xor a
		   ld ($21+12),a
		   ld ($21+13),a
		   ld ($21+32),a
	
		   ld e,8(ix)
		   ld d,9(ix)
	
	$23:
		   push de
		   ld de,#$21
		   ld c,#0x14
		   call 5
		   pop de
		   or a
		   jr nz,$24
		   ld hl,#0x80
		   ld bc,#128
		   ldir
		   jp $23
	
	$24:
		   ld de,#$21
		   ld c,#0x10
		   call 5
		   jp $22
	
	$21:
		   .db 0,0,0,0,0, 0,0,0,0,0
		   .db 0,0,0,0,0, 0,0,0,0,0
		   .db 0,0,0,0,0, 0,0,0,0,0
		   .db 0,0,0,0,0, 0,0,0,0,0
	$22:
		   pop bc
		   pop hl
		   pop de
		   pop ix
		   
	pop	ix
	ret
;msxlib.c:639: int readfile(char *name,unsigned char *dest)
;	---------------------------------
; Function readfile
; ---------------------------------
_readfile_start::
_readfile:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-22
	add	hl,sp
	ld	sp,hl
;msxlib.c:641: char namn[]="             ";
	ld	hl,#0x0008
	add	hl,sp
	ld	-22 (ix),l
	ld	-21 (ix),h
	ld	(hl),#0x20
	ld	e,-22 (ix)
	ld	d,-21 (ix)
	inc	de
	ld	a,#0x20
	ld	(de),a
	ld	e,-22 (ix)
	ld	d,-21 (ix)
	inc	de
	inc	de
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x03
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x04
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x05
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x06
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x07
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x08
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x09
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x0A
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x0B
	ld	c,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	b,a
	ld	a,#0x20
	ld	(bc),a
	ld	a,-22 (ix)
	add	a,#0x0C
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x20
	ld	(de),a
	ld	a,-22 (ix)
	add	a,#0x0D
	ld	e,a
	ld	a,-21 (ix)
	adc	a,#0x00
	ld	d,a
	ld	a,#0x00
	ld	(de),a
;msxlib.c:644: for(n=0;n<11;n++)
	ld	-16 (ix),#0x00
	ld	-15 (ix),#0x00
00127$:
	ld	a,-16 (ix)
	sub	a,#0x0B
	ld	a,-15 (ix)
	sbc	a,#0x00
	jp	P,00130$
;msxlib.c:645: namn[n]=' ';
	ld	a,-22 (ix)
	add	a,-16 (ix)
	ld	e,a
	ld	a,-21 (ix)
	adc	a,-15 (ix)
	ld	d,a
	ld	a,#0x20
	ld	(de),a
;msxlib.c:644: for(n=0;n<11;n++)
	inc	-16 (ix)
	jr	NZ,00149$
	inc	-15 (ix)
00149$:
	jr	00127$
00130$:
;msxlib.c:646: namn[11]=0;
	ld	a,#0x00
	ld	(bc),a
;msxlib.c:649: for(n=0;n<8;n++)
	ld	-16 (ix),#0x00
	ld	-15 (ix),#0x00
00105$:
	ld	a,-16 (ix)
	sub	a,#0x08
	ld	a,-15 (ix)
	sbc	a,#0x00
	jp	P,00108$
;msxlib.c:650: if(name[n]=='.' || name[n]==0)
	ld	a,4 (ix)
	add	a,-16 (ix)
	ld	e,a
	ld	a,5 (ix)
	adc	a,-15 (ix)
	ld	d,a
	ld	a,(de)
	ld	c,a
	sub	a,#0x2E
	jr	Z,00108$
	xor	a,a
	or	a,c
	jr	Z,00108$
;msxlib.c:653: namn[n]=name[n];
	ld	a,-22 (ix)
	add	a,-16 (ix)
	ld	e,a
	ld	a,-21 (ix)
	adc	a,-15 (ix)
	ld	d,a
	ld	a,c
	ld	(de),a
;msxlib.c:649: for(n=0;n<8;n++)
	inc	-16 (ix)
	jr	NZ,00151$
	inc	-15 (ix)
00151$:
	jr	00105$
00108$:
;msxlib.c:655: for(n=0;;n++)
	ld	bc,#0x0000
	ld	-16 (ix),#0x00
	ld	-15 (ix),#0x00
00121$:
;msxlib.c:657: if(name[n]=='.')
	ld	a,4 (ix)
	add	a,-16 (ix)
	ld	e,a
	ld	a,5 (ix)
	adc	a,-15 (ix)
	ld	d,a
	ld	a,(de)
	ld	e,a
	sub	a,#0x2E
	jr	NZ,00117$
;msxlib.c:659: n++;
	inc	bc
;msxlib.c:660: m=8;
	ld	-20 (ix),c
	ld	-19 (ix),b
	ld	-18 (ix),#0x08
	ld	-17 (ix),#0x00
00112$:
;msxlib.c:661: for(;m<11;n++,m++)
	ld	a,-18 (ix)
	sub	a,#0x0B
	ld	a,-17 (ix)
	sbc	a,#0x00
	jp	P,00123$
;msxlib.c:662: if(name[n]==0)
	ld	a,4 (ix)
	add	a,-20 (ix)
	ld	d,a
	ld	a,5 (ix)
	adc	a,-19 (ix)
	ld	l,d
	ld	h,a
	ld	c,(hl)
	xor	a,a
	or	a,c
	jr	Z,00123$
;msxlib.c:665: namn[m]=name[n];
	ld	a,-22 (ix)
	add	a,-18 (ix)
	ld	b,a
	ld	a,-21 (ix)
	adc	a,-17 (ix)
	ld	l,b
	ld	h,a
	ld	(hl),c
;msxlib.c:661: for(;m<11;n++,m++)
	inc	-20 (ix)
	jr	NZ,00154$
	inc	-19 (ix)
00154$:
	inc	-18 (ix)
	jr	NZ,00155$
	inc	-17 (ix)
00155$:
	jr	00112$
;msxlib.c:666: break;
00117$:
;msxlib.c:668: if(name[n]==0)
	xor	a,a
	or	a,e
	jr	Z,00123$
;msxlib.c:655: for(n=0;;n++)
	inc	-16 (ix)
	jr	NZ,00156$
	inc	-15 (ix)
00156$:
	ld	c,-16 (ix)
	ld	b,-15 (ix)
	jp	00121$
00123$:
;msxlib.c:672: asm_readfile(namn,dest);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,-22 (ix)
	ld	h,-21 (ix)
	push	hl
	call	_asm_readfile
	pop	af
	pop	af
;msxlib.c:674: if(retvalli)
	xor	a,a
	ld	hl,#_retvalli + 0
	or	a,(hl)
	jr	Z,00125$
;msxlib.c:675: return(-1);
	ld	hl,#0xFFFFFFFF
	jr	00131$
00125$:
;msxlib.c:677: return(0);
	ld	hl,#0x0000
00131$:
	ld	sp,ix
	pop	ix
	ret
_readfile_end::
;msxlib.c:680: void spindown(void)
;	---------------------------------
; Function spindown
; ---------------------------------
_spindown_start::
_spindown:
;msxlib.c:682: DI;
		di 
;msxlib.c:683: *(unsigned *)0xf1c1=1;
	ld	iy,#0xF1C1
	ld	0 (iy),#0x01
	ld	1 (iy),#0x00
;msxlib.c:684: EI;
		ei 
;msxlib.c:685: waitVB();
		halt 
;msxlib.c:686: waitVB();
		halt 
	ret
_spindown_end::
;msxlib.c:689: void print(char* str) __naked
;	---------------------------------
; Function print
; ---------------------------------
_print_start::
_print:
;msxlib.c:710: __endasm; 
	
		       ld hl,#2
		       add hl,sp
		       ld a,(hl)
		       inc hl
		       ld h,(hl)
		       ld l,a
	
	PRLOOP:
	ld	a,(hl)
		       or a
		       ret z
		       ld e,a
		       ld c,#2
		       push hl
		       call #5
		       pop hl
		       inc hl
		       jr PRLOOP
		       
;msxlib.c:715: unsigned random(void)
;	---------------------------------
; Function random
; ---------------------------------
_random_start::
_random:
;msxlib.c:731: __endasm;
	
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
		
;msxlib.c:733: return(randomseed);
	ld	hl,(_randomseed)
	ret
_random_end::
;msxlib.c:736: void mem_set(void *dest,unsigned char c,unsigned len)
;	---------------------------------
; Function mem_set
; ---------------------------------
_mem_set_start::
_mem_set:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:800: __endasm;
	
		    push de
		    push hl
		    push bc
	
		    ld l,4(ix) ; Parametrit
		    ld h,5(ix)
		    ld c,6(ix)
		    ld e,7(ix)
		    ld d,8(ix)
		    push de
	
		    srl d ; DE/8
		    rr e
		    srl d
		   rr e
		    srl d
		    rr e
		    ld a,d
		    or e
		    jp z,2$
	
	1$:
		   ld (hl),c
		inc hl
		   ld (hl),c
		inc hl
		   ld (hl),c
		inc hl
		   ld (hl),c
		inc hl
		   ld (hl),c
		inc hl
		   ld (hl),c
		inc hl
		   ld (hl),c
		inc hl
		   ld (hl),c
		inc hl
	
		dec de
		    ld a,d
		    or e
		    jp nz,1$
	
	2$:
		    pop de ; The modulo part
		    ld a,e
		    and #7
		    jp z,4$
	
		ld b,a
	3$:
		    ld (hl),c
		inc hl
		    djnz 3$
	
	4$:
		    pop bc
		    pop hl
		    pop de
		    
	pop	ix
	ret
_mem_set_end::
;msxlib.c:803: void mem_set_stack(void *dest,unsigned char c,unsigned len)
;	---------------------------------
; Function mem_set_stack
; ---------------------------------
_mem_set_stack_start::
_mem_set_stack:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:871: __endasm;
	
		    push de
		    push hl
		    push bc
	
		    ld l,4(ix) ; Parametrit
		    ld h,5(ix)
		    ld c,6(ix)
		ld b,c
		    ld e,7(ix)
		    ld d,8(ix)
		push hl
		    push de
		add hl,de
	
		    srl d ; DE/16
		    rr e
		    srl d
		   rr e
		    srl d
		    rr e
		    srl d
		    rr e
		    ld a,d
		    or e
		    jp z,2$
	
		ld ix,#0
		add ix,sp
		ld sp,hl
	
	1$:
		push bc
		push bc
		push bc
		push bc
		push bc
		push bc
		push bc
		push bc
	
		dec de
		    ld a,d
		    or e
		    jp nz,1$
	
		ld sp,ix
	
	2$:
		pop de
		    pop hl ; The modulo part
		    ld a,e
		    and #15
		    jp z,4$
	
		ld b,a
	3$:
		    ld (hl),c
		inc hl
		    djnz 3$
	
	4$:
		    pop bc
		    pop hl
		    pop de
		    
	pop	ix
	ret
_mem_set_stack_end::
;msxlib.c:874: void mem_cpy(void *dest,void *src,unsigned len)
;	---------------------------------
; Function mem_cpy
; ---------------------------------
_mem_cpy_start::
_mem_cpy:
	push	ix
	ld	ix,#0
	add	ix,sp
;msxlib.c:898: __endasm;
	
		    push de
		    push hl
		    push bc
	
		    ld e,4(ix) ; Parametrit
		    ld d,5(ix)
		    ld l,6(ix)
		    ld h,7(ix)
		    ld c,8(ix)
		    ld b,9(ix)
	
		ld a,c
		or b
		jp z,$1
		ldir
	
	$1:
		   pop bc
		    pop hl
		    pop de
		    
	pop	ix
	ret
_mem_cpy_end::
	.area _CODE
	.area _CABS
