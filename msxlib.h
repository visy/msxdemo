
#ifndef MSXLIB_H
#define MSXLIB_H

#define TRANSPARENT 0 /* MSX color name defines */
#define BLACK       1
#define GREEN       2
#define LIGHT_GREEN 3
#define DARK_BLUE   4
#define LIGHT_BLUE  5
#define DARK_RED    6
#define CYAN        7
#define RED         8
#define LIGHT_RED   9
#define DARK_YELLOW 10
#define LIGHT_YELLOW 11
#define DARK_GREEN  12
#define MAGENTA     13
#define GRAY        14
#define GREY        14
#define WHITE       15

#define FG_TRANSPARENT 0 /* MSX foreground color name defines */
#define FG_BLACK       0x10
#define FG_GREEN       0x20
#define FG_LIGHT_GREEN 0x30
#define FG_DARK_BLUE   0x40
#define FG_LIGHT_BLUE  0x50
#define FG_DARK_RED    0x60
#define FG_CYAN        0x70
#define FG_RED         0x80
#define FG_LIGHT_RED   0x90
#define FG_DARK_YELLOW 0xa0
#define FG_LIGHT_YELLOW 0xb0
#define FG_DARK_GREEN  0xc0
#define FG_MAGENTA     0xd0
#define FG_GRAY        0xe0
#define FG_GREY        0xe0
#define FG_WHITE       0xf0

#define VDP_MODE0   0   /* VDP register names */
#define VDP_MODE1   1
#define VDP_NAME_T  2
#define VDP_COLOR_T 3
#define VDP_PATT_T  4
#define VDP_SPRITE_ATTR_T 5
#define VDP_SPRITE_PATT_T 6
#define VDP_COLOR   7

#define VDP_MODE3   9   /* MSX2 only! */

#define PATTERN_TABLE		0	/* Base addresses for VDP (screen 2) */
#define NAME_TABLE		0x1800
#define SPRITE_ATT_TABLE	0x1b00
#define COLOR_TABLE		0x2000
#define SPRITE_PATTERN_TABLE	0x3800

#define MODE0_M3    2       /* MODE0 register bits (MSX1 only) */
#define MODE0_HBI   0x10
#define MODE0_VBI   0x20    /* Dunno if these work on MSX1 */

#define MODE1_SPRITE_MAG 1  /* MODE1 register bits */
#define MODE1_SPRITE_SZ  2  /* 1=16x16 */
#define MODE1_M2    8
#define MODE1_M1    0x10
#define MODE1_IE    0x20    /* 1=interrupt enable */
#define MODE1_BLANK 0x40    /* 0=blank */
#define MODE1_VRAM  0x80    /* 1=16k */

#define MODE3_PAL   2       /* 1=PAL/50 Hz */

#define STATUS_MASK    15   /* Number of overlapping sprite */
#define STATUS_OVERLAP 0x20 /* Sprites overlap */
#define STATUS_SPRITE  0x40 /* Too many sprites on a line */
#define STATUS_INT     0x80 /* Interrupt status */

/* Use these as ispressed() parameters */

#define K_0	0,1
#define K_1	0,2
#define K_2	0,4
#define K_3	0,8
#define K_4	0,16
#define K_5	0,32
#define K_6	0,64
#define K_7	0,128

#define K_8	1,1
#define K_9	1,2
#define K_MINUS	1,4
#define K_EQUAL	1,8
#define K_BSLASH 1,16
#define K_LBRACKET 1,32
#define K_RBRACKET 1,64
#define K_SEMICOL 1,128

#define K_ACC	2,1 /* ` */
#define K_QUOTE	2,2 /* ' */
#define K_COMMA	2,4
#define K_PERIOD 2,8
#define K_SLASH	2,16
#define K_POUND	2,32
#define K_A	2,64
#define K_B	2,128

#define K_C	3,1
#define K_D	3,2
#define K_E	3,4
#define K_F	3,8
#define K_G	3,16
#define K_H	3,32
#define K_I	3,64
#define K_J	3,128

#define K_K	4,1
#define K_L	4,2
#define K_M	4,4
#define K_N	4,8
#define K_O	4,16
#define K_P	4,32
#define K_Q	4,64
#define K_R	4,128

#define K_S	5,1
#define K_T	5,2
#define K_U	5,4
#define K_V	5,8
#define K_W	5,16
#define K_X	5,32
#define K_Y	5,64
#define K_Z	5,128

#define K_SHIFT	6,1
#define K_CTRL	6,2
#define K_GRAPH	6,4
#define K_CAPS	6,8
#define K_CODE	6,16
#define K_F1	6,32
#define K_F2	6,64
#define K_F3	6,128

#define K_F4	7,1
#define K_F5	7,2
#define K_ESC	7,4
#define K_TAB	7,8
#define K_STOP	7,16
#define K_BACK	7,32 /* Backspace */
#define K_SEL	7,64
#define K_RET	7,128

#define K_SPACE 8,1
#define K_HOME  8,2
#define K_INS	8,4
#define K_DEL	8,8
#define K_LEFT	8,16
#define K_UP	8,32
#define K_DOWN	8,64
#define K_RIGHT	8,128

#define JOY_BUTTON1	0x10 /* AND values for joystick status */
#define JOY_BUTTON2	0x20
#define JOY_UP		1
#define	JOY_DOWN	2
#define JOY_LEFT	4
#define JOY_RIGHT	8

#define MOUSE_BUTTON1	0x10
#define MOUSE_BUTTON2	0x20

#define waitVB() __asm halt __endasm

                                    /* Check if some key is pressed */
char ispressed(unsigned char line,unsigned char bitti);
#define space() ispressed(K_SPACE)  /* Special macro for space */
void screen(char mode);

void vdp_address(unsigned addr);
void vdp_poke(unsigned addr,unsigned char c);
unsigned char vdp_peek(unsigned addr);
void vdp_register(unsigned char reg,unsigned char c);
unsigned char vdp_status(void);             /* Read the status register */
unsigned char vdp2_status(unsigned char reg); /* VDP2 status registers */

void vdp_set(unsigned char c,unsigned bytes);
void vdp_slowset(unsigned char c,unsigned bytes);
void vdp_copy(unsigned char *src,unsigned bytes);
void vdp_slowcopy(unsigned char *src,unsigned bytes);
void vdp_bigcopy(unsigned char *src,unsigned block32);

void sprite_col(int num,char col);
void sprite_pos(int num,unsigned char x,unsigned char y);
void sprite_pat(int num,unsigned char pat);

void msx2_palette(char col,char r,char g,char b); // 0..7
char isvdp2(void); // 0 or 1
void msx2_sethz(char hz); // 50 or 60 (this is a bit brutal)

char joy_status(char num); // Read joystick status for joy 1/2

// Mouse in port "num", relative signed values in x/y, return val = buttons
char mouse_status(char num,signed char *x,signed char *y);

int readfile(char *name,unsigned char *dest); // 0 = ok, -1 = error
void spindown(void); // Spin down drive motor - maybe
void print(char* str) __naked;
unsigned random(void);

void mem_set(void *dest,unsigned char c,unsigned len);
void mem_set_stack(void *dest,unsigned char c,unsigned len); // Not VBI safe
void mem_cpy(void *dest,void *src,unsigned len);

#endif
