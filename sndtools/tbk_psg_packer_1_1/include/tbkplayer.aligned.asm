;
;  this is a heavily modded version of the player for TBK PSG Packer. the original player is
;  extremely fast; this modification is slower, because it is designed to be used in border,
;  multicolour and other precisely timed effects.
;  
;  the original player was written by psndcj^tbk (11.02.2012)
;  this mod is written by introspec, who worked hard to introduce as many bugs into this as was humanly possible.
;
;  there are 4 entry points:
;  START+16+0:	initialise the player (constant time: 226t)
;  START+16+5:	unpack one frame into the buffer (760 t-states or less, the number of t-states is divisible by 4)
;  START+16+8:	shut down the playback (constant time: 212t)
;  START+16+10:	send the frame buffer to PSG (constant time: 569t)
;
;  worst case running time (per frame) without proper looping: 569+760 = 1329t
;               - * -                  with proper looping: 569+760+496 = 1825t
;
;  ver.1.0.0 (06/12/2013)
;    first working version of the player. one frame buffer results in a reasonably good efficiency, but
;    it limits what can be done with this kind of player. version 1.1 will have a buffer for 16 frames
;    (but will be quite a bit slower).
;  ver.1.0.1 (25/01/2014)
;    rewrite aimed at speeding things up and cleaning up the code. new player runs ~150 t-states faster.
;

			MODULE	TBKPSGPlayer

			;DEFINE	FAST_LOOP
			;DEFINE	PROPER_LOOP

			ALIGN	256

BufferPSG:		ds	16, 0
FramesToPush:		EQU	BufferPSG+15

@InitPSG:		; START: init psg player
			ld	hl, PackedPSG		; 10t
			jr	Initialise		; 12t => 22t

@UnpackPSG:		; START+5: play frame
			jp	UnpackFrame		; 10t

@StopPSG:		; START+8: stop psg playback
			jr	StopPlayBack

@PlayBufferPSG:		; START+10: stop psg playback
			ld	hl, BufferPSG		; 10t
			ld	de, #FFBF		; 10t
			ld	bc, #FFFD		; 10t = 30t
			DUP	13
			out	(c), l			; 12t
			ld	b, e			; 4t
			outi				; 16t
			ld	b, d			; 4t = 13*36t = 468t
			EDUP

			ld	a, (hl)			; 7t
			ld	(hl), d			; 7t
			out	(c), l			; 12t
			ld	b, e			; 4t
			inc	l			; 4t
			inc	a			; 4t
			jr	z, SkipReg13		; 12t/7t

			outi				; 16t
			ret				; 10t => 7+7+12+4+4+4+7 + 16+10 = 71t

SkipReg13:		ld	a, (hl)			; 7t
			nop				; 4t
			ret				; 10t => 7+7+12+4+4+4+12 + 7+4+10 = 71t

							; (30+468+71 = 569t)

;
;  just a way to stop PSG playing (cannot be restarted, really)
;

StopPlayBack:		ld	a, 201			; 7t (RET)
			ld	(UnpackFrame), a	; 13t (disable playback)
			jr	EmptyFrame		; 12t => 7+13+12 = 32t

;
;  player initialisation
;

Initialise:		ld	(CurPSGAddress+1), hl	; 16t
			ld	a, 33			; 7t (LD HL, nn)
			ld	(UnpackFrame), a	; 13t => 16+7+13 = 36t

EmptyFrame:		ld	a, low UnpackFrame	; 7t
			ld	(UnpackPSG+1), a	; 13t => 7+13 = 20t

			ld	hl, 0			; 10t
			ld	(BufferPSG), hl		; 16t
			ld	(BufferPSG+2), hl	; 16t
			ld	(BufferPSG+4), hl	; 16t
			ld	(BufferPSG+6), hl	; 16t
			ld	(BufferPSG+8), hl	; 16t
			ld	(BufferPSG+10), hl	; 16t
			ld	(BufferPSG+12), hl	; 16t
			ld	(BufferPSG+14), hl	; 16t
			ret				; 10t => 10+16*8+10 = 148t

							; (InitPSG: 22+36+20+148 = 226t)
							; (StopPSG: 12+32+20+148 = 212t)

;
;  processing of pause command
;

PauseFrame:		
PauseFramesLeft:	ld	a, 0			; 7t
			dec	a			; 4t
			ld	(PauseFramesLeft+1), a	; 13t
			jp	nz, StillPausing	; 10t

			ld	a, low UnpackFrame	; 7t
			ld	(UnpackPSG+1), a	; 13t

StillPausing:		jp	FrameBookkeeping	; 10t => 10 + 7+4+13+10 + 10 / 10 + 7+4+13+10 + 7+13+10 = 54t / 74t
			
;
;  OK, I'll try to document the format of the compressed music here.
;  It looks to me that the music is stored as a sequence of instructions. Some of these instructions
;  provide a mechanism for "patterns", while the others are direct values of the PSG registers.
;
;  At the top level, there are 4 commands:
;  "00": playback of a PSG1 record, or a pause, or the end of the track
;  "01": playback of a PSG2 record
;  "10": playback of a frame that occured in the compressed stream earlier (cannot be nested!)
;        11hhhhhh llllllll
;  "11": playback of frames that occured in the compressed stream earlier (cannot be nested!)
;        11hhhhhh llllllll nnnnnnnn
;        means "save current pos, which is where nnnnnnnn is, and the new pos for playback
;        is HL-hhhhhhllllllll-2".
;  the last two commands play nothing, so after them we always have to read whatever comes next.
;  a worst case scenario in terms of execution time seems to be 11 followed by 01 with lots of registers.
;

UnpackFrame:
CurPSGAddress:		ld	hl, 0			; 10t
			ld	a, (hl)			; 7t
			add	a			; 4t
			jp	nc, Command0X		; 10t => 10+7+4+10 = 31t	(10+31 = 41t .. 10+31 = 41t)

Command1X:		ld	b, (hl)			; 7t
			inc	hl			; 6t
			ld	c, (hl)			; 7t
			res	7, b			; 8t
			res	6, b			; 8t
			inc	bc			; 6t => 7+6+7+8+8+6 = 42t

			add	a			; 4t
			ld	a, 1			; 7t
			jr	nc, Command10		; 12t/7t

Command11:		inc	hl			; 6t
			ld	a, (hl)			; 7t => 4+7+12 = 23t or 4+7+7+6+7 = 31t

Command10:		ld	(PrevPSGAddress+1), hl	; 16t
			ld	(FramesToPush), a	; 13t
			sbc	hl, bc			; 15t
			ld	a, (hl)			; 7t
			add	a			; 4t => 16+13+15+7+4 = 55t, so overall this takes 42+23+55 = 120t or 42+31+55 = 128t

Command0X:		add	a			; 4t
			jp	nc, Command00		; 10t => 4+10 = 14t		(41+14 = 55t .. 41+128+14 = 183t)

;
;  playback of PSG2 data record
;  best case scenario:	37+30*6+4+30*7+16 = 447t
;  worst case scenario:	37+30*6+4+30*7+4+7+29 = 471t
;

Command01:		ex	af, af'			; 4t
			inc	hl			; 6t
			ld	a, (hl)			; 7t
			inc	hl			; 6t
			ex	af, af'			; 4t
			ld	de, BufferPSG		; 10t => 4+6+7+6+4+10 = 37t	(55+37 = 92t .. 183+37 = 220t)

			DUP	6
			add	a			; 4t
			jp	c, 000f			; 10t
			inc	de			; 6t
			db	1			; 10t (LD BC, nn)
000:			ldi				; 16t => 4+10+6+10 or 4+10+16 = 30t
			EDUP

			ex	af, af'			; 4t

			DUP	7
			add	a			; 4t
			jp	c, 000f			; 10t
			inc	de			; 6t
			db	1			; 10t (LD BC, nn)
000:			ldi				; 16t => 4+10+6+10 or 4+10+16 = 30t
			EDUP

			add	a			; 4t
			jr	nc, FrameUnpacked	; 12t/7t

			ld	(de), a			; 7t (by now A contains zero)
			inc	de			; 6t
			ldi				; 16t => 7+6+16 = 29t

							; (92+30*6+4+30*7 + 4+12 = 502t .. 220+30*6+4+30*7 + 4+7+29 = 654t)

FrameUnpacked:		ld	(CurPSGAddress+1), hl	; 16t

FrameBookkeeping:	ld	hl, FramesToPush	; 10t
			dec	(hl)			; 11t
			jr	nz, ContinuePushing	; 12t/7t => 16 + 10+11+12 / 16 + 10+11+7 = 49t / 44t

PrevPSGAddress:		ld	hl, 0			; 10t
			inc	hl			; 6t
			ld	(CurPSGAddress+1), hl	; 16t
			ld	a, low UnpackFrame	; 7t
			ld	(UnpackPSG+1), a	; 13t
			ret				; 10t => 10+6+16+7+13+10 = 62t

							; (502+44+62 = 608t .. 654+44+62 = 760t) - WORST CASE SCENARIO

ContinuePushing:	ld	a, (hl)			; 7t
			inc	a			; 4t
			jr	nz, TheEnd		; 12t/7t

			ld	(hl), a			; 7t
			inc	hl			; 6t (waste tacts to align)

TheEnd:			ret				; 10t
			
							; (502+49 + 7+4+12+10 = 584t .. 654+49 + 7+4+7+7+6+10 = 744t)
	
;
;  playback of PSG1 data record
;  best case scenario:	14+7+25+12+41 = 99t
;  worst case scenario:	14+7+25+20+36+25+20+32 = 179t
;

Command00:		sub	120			; 7t
			jr	nc, CommandPause	; 12t/7t

			ld	d, high BufferPSG	; 7t

			ld	a, (hl)			; 7t
			and	#0F			; 7t
			ld	e, a			; 4t
			cp	13			; 7t => 7+7+4+7 = 25t		(55+7+7 + 7 + 25 = 101t .. 183+7+7 + 7 + 25 = 229t)

			jr	nz, NotThatOne1		; 12t/7t
			ld	(de), a			; 7t
			inc	de			; 6t => 12t / 7+7+6 = 20t
NotThatOne1:
			cp	(hl)			; 7t
			inc	hl			; 6t
			ldi				; 16t
			jr	nz, FrameUnpacked	; 12t/7t => 7+6+16+12 / 7+6+16+7 = 41t / 36t	(101+12+41 = 154t .. 229+20+41 = 290t)

			ld	a, (hl)			; 7t
			and	#0F			; 7t
			ld	e, a			; 4t
			cp	13			; 7t => 7+7+4+7 = 25t

			jr	nz, NotThatOne2		; 12t/7t
			ld	(de), a			; 7t
			inc	de			; 6t => 12t / 7+7+6 = 20t
NotThatOne2:
			inc	hl			; 6t
			ldi				; 16t
			jp	FrameUnpacked		; 12t => 6+16+10 = 32t		(101+12+36+25+20+32 = 226t .. 229+20+36+25+20+32 = 362t)

;
;  branches responsible for pause and other relatively fast and rare commands
;

CommandPause:		inc	hl			; 6t
			jp	z, FrameUnpacked	; 10t				(55+7+12+6+10 = 90t .. 183+7+12+6+10 = 218t)

			rrca				; 4t
			rrca				; 4t
			cp	33			; 7t
			jp	z, CommandStop		; 10t => 4+4+7+10 = 25t

			ld	(PauseFramesLeft+1), a	; 13t
			ld	a, low PauseFrame	; 7t
			ld	(UnpackPSG+1), a	; 13t
			jp	FrameUnpacked		; 10t => 25+13+7+13+10 = 68t

;
;  stop command can potentially have different behaviours
;

CommandStop:		
			IFDEF	FAST_LOOP

			ret	nz			; 5t (wasted to align t-states)
			jp	InitPSG			; 10t => 25+5+10 = 40t (this quickly re-starts the track, but 1 frame is lost in the process!!!)

			ELSE
			IFDEF	PROPER_LOOP

			call	InitPSG			; 17+226 = 243t
			jp	UnpackPSG		; 10t				(90+25+243+10 = 368t .. 218+25+243+10 = 496t)

			ELSE

			ld	a, (hl)			; 7t (wasted to align t-states)
			jp	StopPSG			; 10t => 25+7+10 = 42t

			ENDIF
			ENDIF

			DISPLAY	"player code occupies ", /D, $-InitPSG, " bytes"

			ENDMODULE
