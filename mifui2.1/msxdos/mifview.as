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

	global TxtMod, CurFCB, LoadMIF, OpenR, CloseR, Read, DecTab, Buffer, BuffSize

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

BuffSize	equ	16384		; Size of the read buffer
StackSize equ	256			; Size of the program stack
MaxFile	equ	256		; Max number of files to handle

;-----------------------------------------------------------------------------

_main::	ld	hl,ExeEnd+StackSize	; Check if there is enough memory
	or	a		; to run MV. If there is not enough
	sbc	hl,sp		; memory, try to reduce BuffSize or
	jr	nc,OutMem		; MaxFile

	call	GetFiles		; Get the list of files to display

Begin:	ld	hl,Files		; Set HL to the start of the file
	ld	(FilePos),hl		; list

Slide:	ld	hl,(FilePos)		; Are we at the end of the file list ?
	ld	a,(hl)
	or	a
	jp	z,TxtMod		; If yes, exit in text mode

	ld	de,CurFCB+1		; Else, load and display the file
	ld	bc,11
	ldir
	ld	(FilePos),hl
	call	LoadMIF

	call	WaitClik		; Wait for the user to click
	bit	1,l		; Is button 2 pressed ?
	jr	z,Slide 		; If no, loop to the next file
	jp	TxtMod		; else exit in text mode

OutMem:	ld	de,OutMess		; Display the out of memory message
	MsxDOS 9
	ret

OutMess:	defb	13, 10, 'Not enough memory to run MifView...', 13, 10, '$'

Usage:	defb	"      MifView version 2.1",13,10
	defb	"coded by Louthrax in December 2013", 13,10
	defb	"==================================", 13,10
	defb	13,10
	defb	"Usage: mifview.com <mif_file> | -F<list_file>", 13, 10, '$'

;-----------------------------------------------------------------------------

WaitClik:	ld	l,11B	; Wait for the user to press a button
	call	Trig1
	call	Trig2
	ld	a,l
	or	a
	jr	z,WaitClik
	ret

Trig1:	ld	a,0	; Button 1 is space-bar or joystick button 1
	MsxBIOS 0D8h
	or	a
	ret	nz
	ld	a,1
	MsxBIOS 0D8h
	or	a
	ret	nz
	res	0,l
	ret

Trig2:	ld	a,3	; Button 2 is [Graph] or [Esc] key
	MsxBIOS 0D8h		; or joystick button 2
	or	a
	ret	nz
	ld	a,6
	MsxBIOS 141h
	bit	2,a
	ret	z
	ld	a,7
	MsxBIOS 141h
	bit	2,a
	ret	z
	res	1,l
	ret

;-----------------------------------------------------------------------------

GetFiles:	ld	hl,Files	; Resets the file list
	ld	(FilePos),hl
	ld	de,Files+1
	ld	bc,MaxFile*11 - 1
	ld	(hl),0
	ldir
	
	ld	a,(5Dh) 	; Check the command line for -F
	cp	"-"
	jr	nz,WCards
	ld	a,(5Eh)
	cp	"F"
	jr	z,ListFile
	cp	"f"
	jr	nz,WCards
	

ListFile:	ld	hl,6Ch	; This section gets the files from a list
	ld	de,CurFCB	; file
	ld	bc,12
	ldir
	call	OpenR	; Open the list file

	ld	ix,Files - 11
GetF1:	ld	de,11
	add	ix,de
	push	ix
	ld	b,8
	call	SkipCR
	pop	ix
	ld	(ix+8),"M"      ; Set the file extension to MIF anyway
	ld	(ix+9),"I"
	ld	(ix+10),"F"
	jr	nz,GetF1	; If z is set, we are at the end of the file

	jp	CloseR	; Close the list-file.

SkipCR:	call	Read	; Skip the empty lines
	ret	z
	cp	13
	jr	nz,RdLine1
	call	Read
	jr	SkipCR

RdLine2:	call	Read	; Read file name until CR found or 8
	ret	z	; characters read
	cp	13
	jr	z,EOL
RdLine1:	ld	(ix),a
	inc	ix
	djnz	RdLine2

WEOL:	call	Read	; Read the rest of the line
	ret	z
	cp	13
	jr	nz,WEOL
	jp	Read

EOL:	ld	(ix)," "        ; The file name is shorter as 8 characters
	inc	ix	; so wo have to fill the rest with spaces
	djnz	EOL
	jp	Read

;-----------------------------------------------------------------------------

WCards:	ld	hl,5Ch	; This section gets the files from a
	ld	a,(hl)	; wild-carded expression
	ld	(CurFCB),a
	ld	de,GetFCB
	ld	bc,9
	ldir

	ld	de,FcbRes
	MsxDOS 1Ah

	ld	de,GetFCB	; Get the first file
	MsxDOS 11h
	or	a
	jr	z,1f
	
	ld	de,Usage
	MsxDOS	9
	jp	0

1:	ld	de,Files
GetLoop:	ld	hl,FcbRes+1	; and the other ones
	ld	bc,11
	ldir
	push	de
	MsxDOS 12h
	pop	de
	or	a
	jr	z,GetLoop	; until the end
	ret

GetFCB:	defb	0	; This FCB is used only by this routine to
	defb	"????????MIF"   ; get all of the .MIF files
	defb	0,0,0,0,0
	defb	0,0,0,0,0
	defb	0,0,0,0,0
	defb	0,0,0,0,0
	defb	0,0,0,0,0

FcbRes:	defs	37	; This is the result FCB, where the name of
			; the MIF files are during scanning

FilePos:	defw	0	; Position in the file list

;-----------------------------------------------------------------------------

Error::	MsxBIOS 0C0h		; Error handler routine, call by
	call	WaitClik	; MVI.GEN when a file cannot be opened
	bit	1,l
	jp	z,OpenR
	call	TxtMod
	ld	hl,CurFCB+1	; Patch the file name in message
	ld	de,FName
	ld	bc,8
	ldir

	ld	de,ErrMess	; Display the message
	MsxDOS 9		; and exit to MSX-DOS
	jp	0

ErrMess:	defb	13, 10, "File "
FName:	defb	"        .MIF not found !", 13, 10, '$'

;-----------------------------------------------------------------------------

psect bss

Files:
Buffer	equ	Files + MaxFile*11
DecTab	equ	Buffer + BuffSize
ExeEnd	equ	DecTab + 4000h
