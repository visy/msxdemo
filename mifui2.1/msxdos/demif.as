; This file is part of MifView
;
;    MifView is free software: you can redistribute it and/or modify
;    it under the terms of the GNU General Public License as published by
;    the Free Software Foundation, either version 3 of the License, or
;    (at your option) any later version.
;
;    MifView is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU General Public License for more details.
;
;    You should have received a copy of the GNU General Public License
;    along with MifView. If not, see <http://www.gnu.org/licenses/>.
;

	global DecTab, Error, Buffer, BuffSize

	psect text

MsxDOS	MACRO X			; Macro for MSX-DOS calls
	ld	c,X
	call	5
	ENDM

MsxBIOS	MACRO X			; Macro for MSX-BIOS calls
	ld	ix,X
	ld	iy,(0FCC1h - 1)
	call	1Ch
	ENDM


vdp	equ	060h



setreg	macro X
	ld	a,X
	out	(vdp+4),a
	endm

outreg	macro X
	ld	a,X
	out	(vdp+3),a
	endm

inreg	macro
	in	a,(vdp+3)
	endm

;-----------------------------------------------------------------------------

WrVdp	MACRO reg, value		; Macro to write a data into to VDP's
	ld	a,value		; registers
	out	(99h),a
	ld	a,reg + 80h
	out	(99h),a
	ENDM

;-----------------------------------------------------------------------------

TxtMod::	xor	a		; Set the screen to text (screen 0) mode
	MsxBIOS 5Fh
	call	ResPal		; And also resets the palette
	call	RefPal
	MsxBIOS 156h
	ret

;-----------------------------------------------------------------------------

ResPal:	ld	hl,DefPal		; Reset the palette to the MSX's
	ld	de,Palet		; default values
	ld	bc,32
	ldir
	ret

DefPal:	defw	000h, 000h, 611h, 733h, 117h, 327h, 151h, 627h
	defw	171h, 373h, 661h, 664h, 411h, 265h, 555h, 777h

;-----------------------------------------------------------------------------

IniScr:	ld	a,(Screen)
	cp	10
	ret	nc

	ld	e,a		; Initialize the screen parameters
	ld	d,0		; (Screen) contains the number of the new
				; screen mode
	ld	b,13
	ld	hl,Screens
IniScr1:	add	hl,de
	djnz	IniScr1

	ld	de,Reg0
	ld	bc,13
	ldir

	ld	hl,(Rdb)
	ld	(RdbH + 1),hl

	ld	a,(Screen)
	cp	6
	jr	z,Ini90
	cp	7
	jr	z,Ini90

	WrVdp 0,(Reg0)
	ld	a,(Reg1)
	and	010111111B
	WrVdp	1,a
	WrVdp 2,(Reg2)
	WrVdp 3,(Reg3)
	WrVdp 4,(Reg4)
	WrVdp 25,(Reg25)
	
	
	WrVdp 7,(Border)
	WrVdp 8,00101010B
	ld	hl,(ClsHook)
	jp	(hl)

Ini90:	call	Init90
	ld	a,4
	call	SetScreen90

	ld	a,(Screen)
	cp	6
	ld	a,2
	jr	z,SetCol
	inc	a
SetCol:	call	SetColors90

	ld	a,1
	jp	SetImages90


Screen:	defb	0		; Screen number (0=screen 5, 1=screen 6, ...)
Border:	defb	0		; Border color
IntMode:	defb	0		; Interlaced mode ON/OFF

Reg0:	defb	0		; Value of register 0 for this screen mode
Reg1:	defb	0		; Value of register 1 for this screen mode
Reg2:	defb	0		; Value of register 2 for this screen mode
Reg3:	defb	0		; Value of register 3 for this screen mode
Reg4:	defb	0		; Value of register 4 for this screen mode
Reg25:	defb	0		; Value of register 25 for this screen mode
IsWide:	defb	0		; Is the screen Wide (screen 6 and 7)
IsLarge:	defb	0		; Is the screen Large (screen 7, 8, 11 and 12)
IsPal:	defb	0		; Does the screen require a palet
				; (screen 5, 6, 7 and 11)
Rdb:	defw	0
ClsHook:	defw	0

	; Current palet
Palet:	defw	000h, 000h, 611h, 733h, 117h, 327h, 151h, 627h
	defw	171h, 373h, 661h, 664h, 411h, 265h, 555h, 777h

;-----------------------------------------------------------------------------

	;	Reg0   Reg1  Reg2  Reg3  Reg4   Reg25   Wid  Lar Pal

Screens:	defb	0x06, 0x60, 0x1F, 0x80, 0x00, 00000B,   0,   0,  -1	; Screen 5
	defw	Rdb8
	defw	ClsMSX2

	defb	0x08, 0x60, 0x1F, 0x80, 0x00, 0,  -1,  0, -1	; Screen 6
	defw	Rdb8
	defw	ClsMSX2

	defb	0x0A, 0x60, 0x1F, 0xFF, 0x01, 00000B,  -1, -1, -1	; Screen 7
	defw	Rdb8
	defw	ClsMSX2

	defb	0x0E, 0x60, 0x1F, 0xFF, 0x01, 00000B,   0, -1,  0	; Screen 8
	defw	Rdb8
	defw	ClsMSX2

	defb	0x0E, 0x60, 0x1F, 0x80, 0x00, 011000B,   0, -1, -1	; Screen 11
	defw	Rdb8
	defw	ClsMSX2

	defb	0x0E, 0x60, 0x1F, 0x80, 0x00,  01000B,   0, -1, 0	; Screen 12
	defw	Rdb8
	defw	ClsMSX2

	defb	1110B, 0x00, 0x00, 0x00, 0x00, 01000B,   0, -1,  1	; GFX9000 - 64 colors
	defw	Rdb6
	defw	0

	defb	1110B, 0x00, 0x00, 0x00, 0x00, 01000B,   0, -1,  0	; GFX9000 - 32768 colors
	defw	Rdb5
	defw	0

	defb	0x02, 0x60, 0x06, 0xFF, 0x03, 01000B,   0, 0, -1	; Screen 2
	defw	Rdb8
	defw	ClsScreen2

	defb	0x00, 0x68, 0x02, 0xFF, 0x00, 01000B,   0, 0, -1	; Screen 3
	defw	Rdb8
	defw	ClsScreen3
	
;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------

SetOut:	ld	(WriteH1 + 1),hl	; Sets the decompression unit
	ld	(WriteH2 + 1),hl	; default output to (hl)
	ret

;-----------------------------------------------------------------------------

Decmp:	ld	c,10000000B		; C register is the bit-boundary counter

DecBlock: ld	a,2
	ld	(BitSize),a		; Size of an entry (in bits)
	ld	hl,2
	ld	(BitSve),hl
	exx
	ld	de,4		; DE' contains the number of entry to read
	exx			; before to change the BitSize + 1
	ld	ix,DecTab		; IX is the current position in DecTab

DecLoop:	exx
	dec	de
	ld	a,d
	or	e
	exx
	call	z,AdjBits		; Must we adjust the BitSize ?

	ld	de,3		; Set IX to next entry
	add	ix,de

	ex	af,af'
	rlc	c
	call	c,Read		; If the bit read is set, we have raw data,
	rla			; else it's a coded entry
	jr	nc,Coded

	ld	e,0
RdbH:	call	0
	ex	af,af'

	ld	(ix-3),e		; Add the new entry in the decompression table
	ld	(ix+1),d
	ld	(ix+2),e
	ld	a,e
WriteH1:	call	0		; and write it to the output stream
	jp	DecLoop


Coded:	ld	b,2		; Read the coded entry
BitSize	equ	$-1
	ld	de,0
RdBit3:	rlc	c
	call	c,Read
	rla			; A' contains the last bits not used
	rl	e
	rl	d
	djnz	RdBit3
	ex	af,af'

	ld	a,(ix-6)
	ld	(ix-3),a

	ld	hl,DecTab + 3		; Transforms the entry in an address in RAM
	add	hl,de
	add	hl,de
	add	hl,de

	defb	0DDh
	ld	a,h
	cp	h
	jr	nz,Diff1

	defb	0DDh
	ld	a,l
	cp	l
	jp	z,DecBlock		; If the entry address is the same as the
Diff1:	ret	c		; current position, this is an end of block
				; If i's greater, it's the end of the file

	ld	(ix+1),h		; Add the new entry in DecTab as a prefix
	ld	(ix+2),l

	ld	de,DecTab + 3FFFh	; Set the virtual stack at the end
				; of DecTab (4096 bytes free)

PushLoop: ld	a,(hl)			; Push each suffix in the stack until a
	ld	(de),a		; non-coded prefix is found
	dec	de
	inc	hl
	ld	a,(hl)
	or	a
	inc	hl
	ld	l,(hl)
	ld	h,a
	jp	nz,PushLoop
	ld	a,l
	ld	(ix-3),a
	ld	(de),a

DecTabEnd	equ	DecTab + 4000h	
	
PopLoop:	ld	a,(de)		; Outputs the whole stack to the output
WriteH2:	call	0		; stream
	inc	de
	ld	a,e
	cp	DecTabEnd .and. 0FFh
	jp	nz,PopLoop
	ld	a,d
	cp	DecTabEnd .shr. 8
	jp	nz,PopLoop

	jp	DecLoop


RdBit	MACRO
	rlc	c
	call	c,Read
	rla
	rl	e
	rl	d
	ENDM

Rdb8:	RdBit 			; Use of macro for more speed (instead of slow DJNZ)
	RdBit
	RdBit
	RdBit
	RdBit
	RdBit
	RdBit
	RdBit
	ret

Rdb6:	RdBit
	RdBit
	RdBit
	RdBit
	RdBit
	RdBit
	ret

Rdb5:	RdBit
	RdBit
	RdBit
	RdBit
	RdBit
	ret

;-----------------------------------------------------------------------------

AdjBits:	exx			; Adjust the bit-size of the current entry
	ld	de,(BitSve)
	sla	e
	rl	d
	ld	(BitSve),de
	exx
	ld	hl,BitSize
	inc	(hl)
	ret

BitSve:	defw	2

;-----------------------------------------------------------------------------
;-----------------------------------------------------------------------------

LoadMIF::	call	OpenR		; Open the MIF file
	call	Read		; Read the first byte

	ld	hl,IntMode
	ld	(hl),0
	bit	4,a		; Is the picture interlaced ?
	jr	z,NoInt2
	ld	(hl),-1

NoInt2:	and	1111B		; Get the screen ID
	ld	(Screen),a
	call	Read		; and the border color
	ld	(Border),a

	call	IniScr		; Initialize the screen

	call	ResPal		; Reset the palette
	ld	a,(IsPal)
	or	a
	call	nz,ReadPal		; and read the file-palette if necessary

	call	RefPal		; Refresh the palette (to the VDP)

	call	OutIni		; Decide which output stream to use
				; (interlaced or not)

	call	SetOut		; and sets it

	ld	a,(Screen)
	cp	6
	jr	z,LoadMif1
	cp	7
	jr	z,LoadMif1

	ld	a,(Reg1)		; Sets screen ON
	or	64
	WrVdp	1,a

LoadMif1:	call	Decmp		; Launch the decompression process
	jp	CloseR		; and close the MIF file

;-----------------------------------------------------------------------------

ReadPal:	ld	a,(Screen)
	cp	6
	jr	z,ReadP2

	ld	de,Palet		; Read the palette from the MIF file
	ld	b,32
ReadP1:	call	Read
	ld	(de),a
	inc	de
	djnz	ReadP1
	ret

ReadP2:	ld	b,64
	ld	ix, palette_data
SkipPal:	push	bc
	call	Read
	ld	l,a
	call	Read
	ld	h,a

	ld	a,l
	and	31
	ld	(ix+2),a
	rr	h
	rr	l
	rr	h
	rr	l
	ld	a,h
	and	31
	ld	(ix+1),a
	rr	h
	rr	l
	rr	h
	rr	l
	rr	h
	rr	l
	ld	a,l
	and	31
	ld	(ix),a

	inc	ix
	inc	ix
	inc	ix

	pop	bc
	djnz	SkipPal

;-----------------------------------------------------------------------------

OutIni:	ld	a,(Screen)
	cp	6
	jr	z,OutIni90
	cp	7
	jr	z,OutIni90

OutIni58:	xor	a		; Set the VRAM write to 0
	ld	(IntPage),a
	ld	hl,0
	call	SetVM

	ld	hl,VRAMOut		; VRAMOut is the default output stream

	ld	a,(IntMode)		; if we are not in interlaced mode
	or	a
	ret	z

	ld	hl,IntLine		; else, initialize the interlaced output
	ld	(hl),0		; parameters
	ld	a,(IsLarge)
	or	a
	jr	nz,OutIni1
	ld	(hl),128

OutIni1:	ld	hl,0
	ld	(IntAdr),hl
	ld	hl,IntOut		; and set the output stream to IntOut
	ret

OutIni90:	ld	a,0
	ld	de,0
	call	SetVM90
	ld	iy,Rv
	ld	a,3
	ld	(V90Cnt),a

	ld	a,(Screen)
	cp	6
	ld	hl,V90Pal
	ret	z
	ld	hl,V90RGB
	ret


;-----------------------------------------------------------------------------

VRAMOut:	out	(98h),a 		; Output a byte in VRAM...
	ret

;-----------------------------------------------------------------------------

IntOut:	out	(98h),a 		; Output a byte in interlaced VRAM
	ld	hl,IntLine
	dec	(hl)		; Are we at the end of a screen line ?
	ret	nz

	ld	a,(IsLarge)		; If yes, refresh the VRAM output position
	or	a		; for the next line
	jr	nz,IntOut1

	ld	(hl),128
	ld	a,(IntPage)
	xor	1
	ld	(IntPage),a
	ld	hl,(IntAdr)
	bit	0,a
	jr	nz,SetVM
	push	bc
	ld	bc,128
	add	hl,bc
	pop	bc
	ld	(IntAdr),hl
	jr	SetVM

IntOut1:	ld	a,(IntPage)
	xor	1
	ld	(IntPage),a

	ld	hl,(IntAdr)
	bit	0,a
	jr	nz,SetVM
	inc	h
	ld	(IntAdr),hl


SetVM:	ld	a,(IntMode)		; This routine sets the VRAM output position
	or	a		; using (IntMode), (IntPage), (IsLarge) and
	jr	z,SetVM2		; hl as an offset

	ld	a,(IntPage)
	or	a
	jr	z,SetVM2

	ld	a,(IsLarge)
	or	a
	jr	z,SetVM1
	ld	a,1
	jr	SetVM2
SetVM1:	set	7,h

SetVM2:	sla	h
	rla
	sla	h
	rla
	out	(99h),a
	ld	a,8Eh
	out	(99h),a
	ld	a,l
	out	(99h),a
	ld	a,h
	rra
	rra
	or	01000000B
	out	(99h),a
	ret

SetVMMSX1:	xor	a
	jr	SetVM2

;-----------------------------------------------------------------------------

IntPage:	defb	0
IntLine:	defb	0
IntAdr:	defw	0

;-----------------------------------------------------------------------------

OpenR::	call	ResFCB		; Open a file for input
	ld	de,CurFCB
	MsxDOS	0Fh
	or	a
	jp	nz,Error
	exx
	ld	bc,1		; BC' is the number of bytes in the
	ld	(CurFCB + 0Eh),bc	; read-buffer - 1
	exx
	ret

;-----------------------------------------------------------------------------

CloseR::	ld	de,CurFCB		; Close the input file
	MsxDOS	10h
	ret

;-----------------------------------------------------------------------------

Read::	exx			; Read a byte from input file
	dec	bc
	ld	a,b
	or	c
	jr	z,RdBuffer		; Is the read-buffer empty ?
Read2:	ld	a,(hl)		; HL' contains the current position in
	inc	hl		; read-buffer
	exx
	ret


RdBuffer:	push	de
	exx
	push	de
	push	bc
	push	ix

	ld	de,Buffer		; Fill the read-buffer with new datas from
	MsxDOS 1Ah			; the input file
	ld	hl,BuffSize
	ld	de,CurFCB
	MsxDOS 27h
	di
	ld	a,h
	or	l
	push	hl
	exx
	pop	bc
	ld	hl,Buffer
	exx

	pop	ix
	pop	bc
	pop	de
	exx
	pop	de
	jr	Read2

;-----------------------------------------------------------------------------

ResFCB:	ld	hl,CurFCB+12		; Reset the rest of the FCB (pos. 12 to 37)
	ld	de,CurFCB+13
	ld	bc,24
	ld	(hl),0
	ldir
	ret

CurFCB::	defb	0
	defb	"           "
	defs	25

;-----------------------------------------------------------------------------

RefPal:	ld	a,(Screen)
	cp	6
	jr	nz,RefPal1

	setreg	13
	outreg	0
	outreg	0
	ld	hl,palette_data
	ld	c,vdp+1
	ld	b,64*3
	otir
	ret


RefPal1:	ld	hl,Palet		; Refresh the palette to the VDP
	xor	a
	ld	c,99h
	out	(c),a
	ld	a,80h+10h
	out	(c),a
	inc	c
	ld	b,20h
	otir
	ret

;-----------------------------------------------------------------------------

ClsScreen3:
	WrVdp 9,0
	ld	hl,0
	call	SetVMMSX1
	ld	c,98h
	
	ld	e,0
	ld	hl,800h
1:	out	(c),e
	dec	hl
	ld	a,h
	or	l
	jp	nz,1b

	ld	d,0
	
2:	ld	e,0
	ld	hl,32*4
1:	ld	a,e
	and	31
	or	d
	out	(c),a
	inc	e
	dec	hl
	ld	a,h
	or	l
	jp	nz,1b

	ld	a,d
	add	a,20h
	ld	d,a
	cp	0C0h
	jr	c,2b
	ret

;-----------------------------------------------------------------------------

ClsScreen2:	
	WrVdp 9,0

	ld	hl,0
	call	SetVMMSX1
	ld	c,98h
	
	ld	e,0
	ld	hl,1800h
1:	out	(c),e
	dec	hl
	ld	a,h
	or	l
	jp	nz,1b
	
	ld	e,0
	ld	hl,256*3
1:	out	(c),e
	inc	e
	dec	hl
	ld	a,h
	or	l
	jp	nz,1b
	
	ld	hl,2000h
	call	SetVMMSX1
	ld	e,0
	ld	hl,1800h
1:	out	(c),e
	dec	hl
	ld	a,h
	or	l
	jp	nz,1b
	ret

;-----------------------------------------------------------------------------

ClsMSX2:	
	ld	a,(IntMode)
	or	a
	ld	bc,0001111110000000B
	jr	z,1f
	ld	bc,0011111110001100B

1:
	WrVdp 2,b
	WrVdp 9,c

	ld	a,(Border)		; Clear the whole screen
	ld	(Cr),a

	ld	hl,0
	ld	(Dy),hl

	ld	a,(IsWide)
	or	a
	ld	hl,256		; Check the screen width
	jr	z,Cls1
	ld	hl,512
Cls1:	ld	(Nx),hl

	call	VdpExe

	ld	a,(IntMode)
	or	a
	ret	z		; If we are in interlaced mode, we have 2
				; pages to clear

	ld	hl,256		; so we just repeat the VDP command with a
	ld	(Dy),hl 		; different Y offset

VdpExe:	ld	c,99h		; Execute a VDP command
	ld	a,36
	out	(c),a
	ld	a,91h
	out	(c),a
	ld	hl,VdpData
	ld	b,0Bh
	inc	c
	inc	c
	otir
	call	WaitVdp
	ret

VdpData:	defw 0	; dx : destination x
Dy:	defw 0	; dy : destination y
Nx:	defw 256	; nx : width x
	defw 212	; ny : height y
Cr:	defb 0	; cr : color
	defb 0	; pa : parameters
	defb 0C0h	; co : command #

;-----------------------------------------------------------------------------

WaitVdp:	WrVdp 15,2			; Wait for the VDP to be ready to accept
WaitV1:	in	a,(99h) 		; a new command
	rra
	jr	c,WaitV1
	WrVdp 15,0
	ret

;-----------------------------------------------------------------------------

V90Pal:	out	(vdp),a
	ret

V90RGB:	ld	(iy),a
	inc	iy
	ld	a,0
V90Cnt	equ	$-1
	dec	a
	ld	(V90Cnt),a
	or	a
	ret	nz
	ld	iy,Rv
	ld	a,3
	ld	(V90Cnt),a

	ld	hl,(Gv)
	ld	a,(Rv)
	sla	a
	sla	a
	sla	a
	sla	a
	rl	l
	sla	a
	rl	l

	or	h
	out	(vdp),a
	ld	a,l
	out	(vdp),a
	ret

Rv:	defb	0
Gv:	defb	0
Bv:	defb	0


Init90:	xor	a
	out	(vdp+7),a
	setreg	6
	outreg	10000011B
	ld	a,(IntMode)
	or	a
	ld	a,10000000B
	jr	z,init1
	ld	a,10000110B
init1:	outreg	a
	outreg	10000010B
	ret

SetVM90:	push	af
	setreg	0
	outreg	e
	outreg	d
	pop	af
	outreg	a
	ret

SetScreen90:	ld	a,0
	out	(vdp+7),a
	setreg	6+01000000B
	inreg
	and	10011111B
	or	10010000B
	outreg	a
	inreg
	and	10111110B
	outreg	a
	ret

palette_data:
	defs	64*3

SetColors90:	ld	b,a
	setreg	6+11000000B
	inreg
	and	11111100B
	or	b
	outreg	a
	ret

SetImages90:	add	a,a
	add	a,a
	ld	b,a
	setreg	6+11000000B
	inreg
	and	11110011B
	or	b
	outreg	a
	ret
