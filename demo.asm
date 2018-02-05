;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Mac OS X x86_64)
;--------------------------------------------------------
	.module demo
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _cls
	.globl _pause
	.globl _pal_load
	.globl _ge5_load
	.globl _strcat
	.globl _vdp_load_screen
	.globl _vdp_set_write_address
	.globl _vdp_load_palette
	.globl _vdp_set_screen5
	.globl _memset
	.globl _memcpy
	.globl _block_read
	.globl _block_set_data_ptr
	.globl _close
	.globl _open
	.globl _puts
	.globl _scratch
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_scratch::
	.ds 128
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;demo.c:10: char *strcat(char *dest, char *src)
;	---------------------------------
; Function strcat
; ---------------------------------
_strcat::
	call	___sdcc_enter_ix
;demo.c:12: char *rdest = dest;
	ld	c,4 (ix)
	ld	b,5 (ix)
;demo.c:14: while (*dest)
	push	bc
	pop	iy
00101$:
	ld	a, 0 (iy)
	or	a, a
	jr	Z,00111$
;demo.c:15: dest++;
	inc	iy
	jr	00101$
;demo.c:16: while (*dest++ = *src++)
00111$:
	ld	e,6 (ix)
	ld	d,7 (ix)
00104$:
	ld	a,(de)
	inc	de
	ld	0 (iy), a
	inc	iy
	or	a, a
	jr	NZ,00104$
;demo.c:18: return rdest;
	ld	l, c
	ld	h, b
	pop	ix
	ret
;demo.c:21: uint8_t ge5_load(char *file_name, uint8_t vramh, uint16_t vraml) {
;	---------------------------------
; Function ge5_load
; ---------------------------------
_ge5_load::
	call	___sdcc_enter_ix
	ld	hl,#-47
	add	hl,sp
	ld	sp,hl
;demo.c:25: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0001
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x002e
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_memset
	pop	af
	pop	af
	inc	sp
	pop	bc
;demo.c:27: f.record_size = 128;
	ld	hl,#0x000f
	add	hl,bc
	ld	(hl),#0x80
;demo.c:28: f.drive = 0;
	xor	a, a
	ld	(bc),a
;demo.c:30: memcpy(f.name, file_name, 11);
	ld	e, c
	ld	d, b
	inc	de
	push	bc
	ld	hl,#0x000b
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	push	de
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;demo.c:32: if (open(&f) != 0)
	ld	e, c
	ld	d, b
	push	bc
	push	de
	call	_open
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00102$
;demo.c:33: return 0;
	ld	l,#0x00
	jp	00113$
00102$:
;demo.c:35: vdp_set_write_address(vramh, vraml);
	push	bc
	ld	l,7 (ix)
	ld	h,8 (ix)
	push	hl
	ld	a,6 (ix)
	push	af
	inc	sp
	call	_vdp_set_write_address
	pop	af
	inc	sp
	pop	bc
;demo.c:37: for (i = 0; i < 213; i++) {
	ld	e, c
	ld	d, b
	ld	-47 (ix),#0x00
00111$:
;demo.c:38: if (block_set_data_ptr(scratch) != 0)
	push	bc
	push	de
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00104$
;demo.c:39: return 0;
	ld	l,#0x00
	jr	00113$
00104$:
;demo.c:40: if (block_read(&f) != 0)
	ld	l, e
	ld	h, d
	push	bc
	push	de
	push	hl
	call	_block_read
	pop	af
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00106$
;demo.c:41: return 0;
	ld	l,#0x00
	jr	00113$
00106$:
;demo.c:42: if (i == 0)
	ld	a,-47 (ix)
	or	a, a
	jr	NZ,00108$
;demo.c:43: vdp_load_screen(scratch + 7, 121);   // to skip GE5 header
	push	bc
	push	de
	ld	a,#0x79
	push	af
	inc	sp
	ld	hl,#(_scratch + 0x0007)
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	pop	de
	pop	bc
	jr	00112$
00108$:
;demo.c:45: vdp_load_screen(scratch, 128);
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
00112$:
;demo.c:37: for (i = 0; i < 213; i++) {
	inc	-47 (ix)
	ld	a,-47 (ix)
	sub	a, #0xd5
	jr	C,00111$
;demo.c:48: close(&f);
	push	bc
	call	_close
	pop	af
;demo.c:50: return 1;
	ld	l,#0x01
00113$:
	ld	sp, ix
	pop	ix
	ret
;demo.c:53: uint8_t pal_load(char *file_name) {
;	---------------------------------
; Function pal_load
; ---------------------------------
_pal_load::
	call	___sdcc_enter_ix
	ld	hl,#-46
	add	hl,sp
	ld	sp,hl
;demo.c:56: memset((uint8_t *) &f, 0, sizeof(fcb));
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x002e
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_memset
	pop	af
	inc	sp
	ld	hl,#0x0080
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
	pop	bc
;demo.c:59: f.record_size = 128;
	ld	hl,#0x000f
	add	hl,bc
	ld	(hl),#0x80
;demo.c:60: f.drive = 0;
	xor	a, a
	ld	(bc),a
;demo.c:62: memcpy(f.name, file_name, 11);
	ld	e, c
	ld	d, b
	inc	de
	push	bc
	ld	hl,#0x000b
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	push	de
	call	_memcpy
	pop	af
	pop	af
	pop	af
	pop	bc
;demo.c:64: if (open(&f) != 0)
	ld	e, c
	ld	d, b
	push	bc
	push	de
	call	_open
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00102$
;demo.c:65: return 0;
	ld	l,#0x00
	jr	00107$
00102$:
;demo.c:67: if (block_set_data_ptr(scratch) != 0)
	push	bc
	ld	hl,#_scratch
	push	hl
	call	_block_set_data_ptr
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00104$
;demo.c:68: return 0;
	ld	l,#0x00
	jr	00107$
00104$:
;demo.c:70: if (block_read(&f) != 0)
	ld	e, c
	ld	d, b
	push	bc
	push	de
	call	_block_read
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00106$
;demo.c:71: return 0;
	ld	l,#0x00
	jr	00107$
00106$:
;demo.c:73: vdp_load_palette(scratch+7);
	push	bc
	ld	hl,#(_scratch + 0x0007)
	push	hl
	call	_vdp_load_palette
	pop	af
	call	_close
	pop	af
;demo.c:77: return 1;
	ld	l,#0x01
00107$:
	ld	sp, ix
	pop	ix
	ret
;demo.c:80: void pause() {
;	---------------------------------
; Function pause
; ---------------------------------
_pause::
;demo.c:81: uint8_t i,j,k = 0;
	ld	e,#0x00
;demo.c:82: for (i = 0; i < 255; i++) {	
	ld	b,#0x00
00106$:
;demo.c:83: for (j = 0; j < 255; j++) {
	ld	c,#0xff
00105$:
;demo.c:84: k++;
	inc	e
	ld	d,c
	dec	d
;demo.c:83: for (j = 0; j < 255; j++) {
	ld	a,d
	ld	c,a
	or	a, a
	jr	NZ,00105$
;demo.c:82: for (i = 0; i < 255; i++) {	
	inc	b
	ld	a,b
	sub	a, #0xff
	jr	C,00106$
	ret
;demo.c:89: void cls(uint8_t vramh, uint16_t vraml) {
;	---------------------------------
; Function cls
; ---------------------------------
_cls::
;demo.c:90: vdp_set_write_address(vramh, vraml);
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_vdp_set_write_address
;demo.c:91: memset((uint8_t *) &scratch, 0, 128);
	inc	sp
	ld	hl,#0x0080
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_memset
	pop	af
	pop	af
	inc	sp
;demo.c:92: vdp_load_screen(scratch, 128);
	ld	a,#0x80
	push	af
	inc	sp
	ld	hl,#_scratch
	push	hl
	call	_vdp_load_screen
	pop	af
	inc	sp
	ret
;demo.c:95: void main(char** argv, int argc) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	call	___sdcc_enter_ix
;demo.c:98: puts("demo init\r\n\r\n");
	ld	hl,#___str_0
	push	hl
	call	_puts
	pop	af
;demo.c:100: if(argc==0)
	ld	a,7 (ix)
	or	a,6 (ix)
	jr	NZ,00102$
;demo.c:102: puts("no parameters were passed.\r\n");
	ld	hl,#___str_1
	push	hl
	call	_puts
	pop	af
	jr	00115$
00102$:
;demo.c:104: puts("parameters passed:\r\n\r\n");
	ld	hl,#___str_2
	push	hl
	call	_puts
	pop	af
;demo.c:107: for(i=0;i<argc;i++)
00115$:
	ld	c,#0x00
00109$:
	ld	l,c
	ld	h,#0x00
	ld	a,l
	sub	a, 6 (ix)
	ld	a,h
	sbc	a, 7 (ix)
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P,00104$
;demo.c:109: puts(argv[i]);
	add	hl, hl
	ex	de,hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	call	_puts
	ld	hl, #___str_3
	ex	(sp),hl
	call	_puts
	pop	af
	pop	bc
;demo.c:107: for(i=0;i<argc;i++)
	inc	c
	jr	00109$
00104$:
;demo.c:113: pause();
	call	_pause
;demo.c:114: pause();
	call	_pause
;demo.c:115: pause();
	call	_pause
;demo.c:116: pause();
	call	_pause
;demo.c:118: vdp_set_screen5();
	call	_vdp_set_screen5
;demo.c:120: while (1) {
00106$:
;demo.c:121: cls(0, 0x0000);
	ld	hl,#0x0000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cls
;demo.c:122: pal_load("KETTU11 PL5");
	inc	sp
	ld	hl,#___str_4
	ex	(sp),hl
	call	_pal_load
;demo.c:123: ge5_load("KETTU11 SC5", 0, 0x0000);
	ld	hl, #0x0000
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#___str_5
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
;demo.c:124: pause();
	call	_pause
;demo.c:125: cls(0, 0x0000);
	ld	hl,#0x0000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cls
;demo.c:126: pal_load("KETTU12 PL5");
	inc	sp
	ld	hl,#___str_6
	ex	(sp),hl
	call	_pal_load
;demo.c:127: ge5_load("KETTU12 SC5", 0, 0x0000);
	ld	hl, #0x0000
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#___str_7
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
;demo.c:128: pause();
	call	_pause
;demo.c:129: cls(0, 0x0000);
	ld	hl,#0x0000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cls
;demo.c:130: pal_load("KETTU13 PL5");
	inc	sp
	ld	hl,#___str_8
	ex	(sp),hl
	call	_pal_load
;demo.c:131: ge5_load("KETTU13 SC5", 0, 0x0000);
	ld	hl, #0x0000
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#___str_9
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
;demo.c:132: pause();
	call	_pause
;demo.c:133: cls(0, 0x0000);
	ld	hl,#0x0000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cls
;demo.c:134: pal_load("KETTU14 PL5");
	inc	sp
	ld	hl,#___str_10
	ex	(sp),hl
	call	_pal_load
;demo.c:135: ge5_load("KETTU14 SC5", 0, 0x0000);
	ld	hl, #0x0000
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#___str_11
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
;demo.c:136: pause();
	call	_pause
;demo.c:137: cls(0, 0x0000);
	ld	hl,#0x0000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cls
;demo.c:138: pal_load("KETTU15 PL5");
	inc	sp
	ld	hl,#___str_12
	ex	(sp),hl
	call	_pal_load
;demo.c:139: ge5_load("KETTU15 SC5", 0, 0x0000);
	ld	hl, #0x0000
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#___str_13
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
;demo.c:140: pause();
	call	_pause
;demo.c:141: cls(0, 0x0000);
	ld	hl,#0x0000
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cls
;demo.c:142: pal_load("KETTU16 PL5");
	inc	sp
	ld	hl,#___str_14
	ex	(sp),hl
	call	_pal_load
;demo.c:143: ge5_load("KETTU16 SC5", 0, 0x0000);
	ld	hl, #0x0000
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#___str_15
	push	hl
	call	_ge5_load
	pop	af
	pop	af
	inc	sp
;demo.c:144: pause();
	call	_pause
	jp	00106$
;demo.c:153: exit(0);
	pop	ix
	ret
___str_0:
	.ascii "demo init"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "no parameters were passed."
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "parameters passed:"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_3:
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "KETTU11 PL5"
	.db 0x00
___str_5:
	.ascii "KETTU11 SC5"
	.db 0x00
___str_6:
	.ascii "KETTU12 PL5"
	.db 0x00
___str_7:
	.ascii "KETTU12 SC5"
	.db 0x00
___str_8:
	.ascii "KETTU13 PL5"
	.db 0x00
___str_9:
	.ascii "KETTU13 SC5"
	.db 0x00
___str_10:
	.ascii "KETTU14 PL5"
	.db 0x00
___str_11:
	.ascii "KETTU14 SC5"
	.db 0x00
___str_12:
	.ascii "KETTU15 PL5"
	.db 0x00
___str_13:
	.ascii "KETTU15 SC5"
	.db 0x00
___str_14:
	.ascii "KETTU16 PL5"
	.db 0x00
___str_15:
	.ascii "KETTU16 SC5"
	.db 0x00
___str_16:
	.ascii "demo exit"
	.db 0x0d
	.db 0x0a
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
