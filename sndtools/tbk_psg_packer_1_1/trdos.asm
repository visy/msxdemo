;
;  tr-dos loader	(c) 2013 introspec
;

 			DEVICE	ZXSPECTRUM48

			EMPTYTRD "test.trd"

;
;  control codes used by zx spectrum basic:
;
;  						6	PRINT comma	7	EDIT
;  8	LEFT		9	RIGHT		10	DOWN		11	UP
;  12	DELETE		13	ENTER		14	number
;  16	INK control	17	PAPER control	18	FLASH control	19	BRIGHT control
;  20	INVERSE control	21	OVER control	22	AT control	23	TAB control
;
;  			165	RND		166	INKEY$		167	PI		
;  168	FN		169	POINT		170	SCREEN$		171	ATTR
;  172	AT		173	TAB		174	VAL$		175	CODE
;  176	VAL		177	LEN		178	SIN		179	COS
;  180	TAN		181	ASN		182	ACS		183	ATN
;  184	LN		185	EXP		186	INT		187	SOR
;  188	SGN		189	ABS		190	PEEK		191	IN
;  192	USR		193	STR$		194	CHR$		195	NOT
;  196	BIN		197	OR		198	AND		199	<=
;  200	>=		201	<>		202	LINE		203	THEN
;  204	TO		205	STEP		206	DEF FN		207	CAT
;  208	FORMAT		209	MOVE		210	ERASE		211	OPEN #
;  212	CLOSE #		213	MERGE		214	VERIFY		215	BEEP
;  216	CIRCLE		217	INK		218	PAPER		219	FLASH
;  220	BRIGHT		221	INVERSE		222	OVER		223	OUT
;  224	LPRINT		225	LLIST		226	STOP		227	READ
;  228	DATA		229	RESTORE		230	NEW		231	BORDER
;  232	CONTINUE	233	DIM		234	REM		235	FOR
;  236	GO TO		237	GO SUB		238	INPUT		239	LOAD
;  240	LIST		241	LET		242	PAUSE		243	NEXT
;  244	POKE		245	PRINT		246	PLOT		247	RUN
;  248	SAVE		249	RANDOMIZE	250	IF		251	CLS
;  252	DRAW		253	CLEAR		254	RETURN		255	COPY 	
;

			DEFINE	ccRET 13
			DEFINE	ccINK 16
			DEFINE	ccPAPER 17
			DEFINE	zxCODE 175
			DEFINE	zxVAL 176
			DEFINE	zxPEEK 190
			DEFINE	zxUSR 192
			DEFINE	zxREM 234
			DEFINE	zxLOAD 239
			DEFINE	zxPRINT 245
			DEFINE	zxRUN 247
			DEFINE	zxRANDOMIZE 249
			DEFINE	zxCLEAR 253

			MACRO	zxBasicLine x
			db	high x, low x
			ENDM

			MACRO	zxInteger x
			db	14, 0, 0
			dw	x
			db	0
			ENDM

			DEFINE	BASIC_PROG 23867	; 23755 for plain 48K basic, 23867 for TR-DOS

			ORG	BASIC_PROG

BasicStart:		zxBasicLine 1
			dw	SecondLine-BasicStart-4	; length of the current line
			db	zxCLEAR, zxVAL, '"', "3E4", '"', ':'
			db	zxRANDOMIZE, zxUSR, '0'
			zxInteger 15619
			db	':', zxREM, ':', zxLOAD, '"', "psg", '"', zxCODE, ccRET

SecondLine:		zxBasicLine 2
			dw	BasicEnd-SecondLine-4
			db	zxRANDOMIZE, zxUSR, '0'
			zxInteger 32768
			db	ccRET

BasicEnd:		EQU	$

			SAVETRD	"test.trd", "boot.B", BasicStart, BasicEnd-BasicStart, 1
			SHELLEXEC "bin\trdtool.exe + test.trd test.$C"
			SHELLEXEC "bin\trx2x.exe test.trd test.scl"
