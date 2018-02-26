
#include "msxlib.h"
#include "ioport.h"
#include "interrupt.h"

__sfr __at 0x98 vdp1;
__sfr __at 0x99 vdp2;
__sfr __at 0x9a vdp3;

__sfr __at 0xa9 kbd1;
__sfr __at 0xaa kbd2;

__sfr __at 0xa0 psgsel;
__sfr __at 0xa1 psgw;
__sfr __at 0xa2 psgr;

char ispressed(unsigned char line,unsigned char bitti)
{
    char    c;
    c=(kbd2&0xf0)|line;
    kbd2=c;
    c=kbd1&bitti;

    if(c==0)
    	return(1);
    else
	return(0);
}

void screen(char mode)
{
    mode;
    __asm
    push    iy
    push    bc
    push    de
    push    hl

    ld      a,4(ix)
    ld      (0xfcaf),a
    ld      ix,#0x5f
    ld      iy,(0xfcc0)
    call    0x1c

    pop     hl
    pop     de
    pop     bc
    pop     iy
    __endasm;
}

void vdp_address(unsigned addr)
{
    vdp2=addr;
    vdp2=(addr>>8)|0x40;
}

void vdp_poke(unsigned addr,unsigned char c)
{
    vdp2=addr;
    vdp2=(addr>>8)|0x40;
    vdp1=c;
}

unsigned char vdp_peek(unsigned addr)
{
    vdp2=addr;
    vdp2=addr>>8;
    return(vdp1);
}

void vdp_set(unsigned char c,unsigned bytes)
{
    c;bytes;
    __asm
    push    de
    push    bc

    ld      d,4(ix) ; Parametrit
    ld      c,5(ix)
    ld      b,6(ix)
    push    bc

    srl     b   ; BC/8
    rr      c
    srl     b
    rr      c
    srl     b
    rr      c
    ld      a,b
    or      c
    jp      z,1$

; NOPs needed due to MSX2 :(((
0$:
    ld      a,d
    out     (0x98),a
    nop
    out     (0x98),a
    nop
    out     (0x98),a
    nop
    out     (0x98),a
    nop
    out     (0x98),a
    nop
    out     (0x98),a
    nop
    out     (0x98),a
    nop
    out     (0x98),a
    dec     bc
    ld      a,b
    or      c
    jp      nz,0$

1$:
    pop     bc      ; The modulo part
    ld      a,c
    and     #7
    jp      z,2$

    ld      c,a
    ld      a,d
3$:
    out     (0x98),a
    dec     c
    jp      nz,3$

2$:
    pop     bc
    pop     de
    __endasm;
}

void vdp_slowset(unsigned char c,unsigned bytes)
{
    c;bytes;
    __asm
    push    de
    push    bc

    ld      d,4(ix) ; Parametrit
    ld      c,5(ix)
    ld      b,6(ix)
    push    bc

    srl     b   ; BC/8
    rr      c
    srl     b
    rr      c
    srl     b
    rr      c
    ld      a,b
    or      c
    jp      z,1$

0$:
    ld      a,d
    out     (0x98),a
    nop
    nop
    nop
    nop
    out     (0x98),a
    nop
    nop
    nop
    nop
    out     (0x98),a
    nop
    nop
    nop
    nop
    out     (0x98),a
    nop
    nop
    nop
    nop
    out     (0x98),a
    nop
    nop
    nop
    nop
    out     (0x98),a
    nop
    nop
    nop
    nop
    out     (0x98),a
    nop
    nop
    nop
    nop
    out     (0x98),a
    dec     bc
    ld      a,b
    or      c
    jp      nz,0$

1$:
    pop     bc      ; The modulo part
    ld      a,c
    and     #7
    jp      z,2$

    ld      c,a
    ld      a,d
3$:
    out     (0x98),a
    nop
    nop
    nop
    dec     c
    jp      nz,3$

2$:
    pop     bc
    pop     de
    __endasm;
}

void vdp_copy(unsigned char *src,unsigned bytes)
{
    src;bytes;
    __asm
    push    de
    push    hl
    push    bc

    ld      l,4(ix) ; Parametrit
    ld      h,5(ix)
    ld      e,6(ix)
    ld      d,7(ix)
    push    de
    ld      c,#0x98

    srl     d   ; DE/8
    rr      e
    srl     d
    rr      e
    srl     d
    rr      e
    ld      a,d
    or      e
    jp      z,1$

0$:
    outi
    outi
    outi
    outi
    outi
    outi
    outi
    outi
    dec     de
    ld      a,d
    or      e
    jp      nz,0$

1$:
    pop     de      ; The modulo part
    ld      a,e
    and     #7
    jp      z,2$
    
    ld      b,a
    otir

2$:
    pop     bc
    pop     hl
    pop     de
    __endasm;
}

void vdp_slowcopy(unsigned char *src,unsigned bytes)
{
    src;bytes;
    __asm
    push    de
    push    hl
    push    bc

    ld      l,4(ix) ; Parametrit
    ld      h,5(ix)
    ld      e,6(ix)
    ld      d,7(ix)
    push    de
    ld      c,#0x98

    srl     d   ; DE/8
    rr      e
    srl     d
    rr      e
    srl     d
    rr      e
    ld      a,d
    or      e
    jp      z,1$

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
    dec     de
    ld      a,d
    or      e
    jp      nz,0$

1$:
    pop     de      ; The modulo part
    ld      a,e
    and     #7
    jp      z,2$

    ld      b,a
3$: outi
    ld	    a,b
    or      a
    jp      nz,3$

2$:
    pop     bc
    pop     hl
    pop     de
    __endasm;
}

void vdp_bigcopy(unsigned char *src,unsigned block32)
{
    src;block32;
    __asm
    push    de
    push    hl
    push    bc

    ld      l,4(ix) ; Parametrit
    ld      h,5(ix)
    ld      e,6(ix)
    ld      d,7(ix)
    ld      c,#0x98

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
    dec     de
    ld      a,d
    or      e
    jp      nz,0$

    pop     bc
    pop     hl
    pop     de
    __endasm;
}

void vdp_register(unsigned char reg,unsigned char c)
{
    vdp2=c;
    vdp2=reg|0x80;
}

void msx2_sethz(char hz)
{
    if(hz==50)
        vdp_register(VDP_MODE3,2);
    else
        vdp_register(VDP_MODE3,0);
}

unsigned char vdp_status()
{
    return vdp2;
}

unsigned char vdp2_status(unsigned char reg)
{
    unsigned char c;

    vdp_register(15,reg);
    c=vdp2;
    vdp_register(15,0);

    return c;
}

void sprite_col(int num,char col)
{
    vdp_poke(0x7800+(num<<2)+3,col);
}

void sprite_pos(int num,unsigned char x,unsigned char y)
{
    vdp_poke(0x7a00+(num<<2),y);
    vdp_poke(0x7a00+(num<<2)+1,x);
}

void sprite_pat(int num,unsigned char pat)
{
    vdp_poke(0x7000+(num<<2)+2,pat);
}

void msx2_palette(char col,char r,char g,char b)
{
	vdp2=col;
	vdp2=0x90;
	vdp3=(r<<4)+b;
	vdp3=g;
}

char joy_status(char num)
{
	unsigned char c;

	psgsel=0xf;
	c=psgr;
	
	if(num==1)
		psgw=c&0x80|0x03;
	else
		psgw=c&0x80|0x4c;
	
	psgsel=0xe;
	return(psgr^0xff);
}

static void waitmouse(void)
{
	unsigned char n;
	for(n=0;n<8;n++)
	{
		__asm
		nop
		__endasm;
	}
}

// Thanks to Edwin
char mouse_status(char num,signed char *x,signed char *y)
{
	unsigned char outval,xorval,c;
	signed char ex,ey,butt;

	if(num==1)
	{
		outval=0x93;
		xorval=0x10;
	}
	else
	{
		outval=0xec;
		xorval=0x20;
	}

	waitmouse();
	waitmouse();
	psgsel=15;
	psgw=outval;
	outval^=xorval;
	waitmouse();
	psgsel=14;
	c=butt=psgr;
	ex=(c&0xf)<<4;

	psgsel=15;
	psgw=outval;
	outval^=xorval;
	waitmouse();
	psgsel=14;
	c=psgr;
	ex|=c&0xf;

	psgsel=15;
	psgw=outval;
	outval^=xorval;
	waitmouse();
	psgsel=14;
	c=psgr;
	ey=(c&0xf)<<4;

	psgsel=15;
	psgw=outval;
	outval^=xorval;
	waitmouse();
	psgsel=14;
	c=psgr;
	ey|=c&0xf;

	*x=-ex;
	*y=-ey;
	return(butt^0xff);
}

char isvdp2(void) // Thanks to Nyyrikki
{
	unsigned char c;

	DI;
	vdp2=1;
	vdp2=0x8f;
	c=vdp2;
	vdp2=0;
	vdp2=0x8f;
	EI;

	if(c&2==2)
		return(0);
	return(1);
}

static char retvalli;

void spindown(void)
{
	DI;
	*(unsigned *)0xf1c1=1;
	EI;
	waitVB();
	waitVB();
}

static unsigned randomseed=0x83cd;

unsigned random(void)
{
	__asm
	push	de

	ld	hl,(_randomseed)
	ld	de,#0x83cd
	ld	a,r
	add	a,e
	ld	e,a
	add	hl,de
	rrc	h
	rr	l
	ld	(_randomseed),hl

	pop	de
	__endasm;

	return(randomseed);
}
