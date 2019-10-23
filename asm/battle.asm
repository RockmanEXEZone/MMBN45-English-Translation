// Load wider tileset for Atk+/Navi+
.org 0x8015856
	// Set filesize to load
	mov	r2, max( \
			filesize(TEMP+"/770080.img.bin"), \
			filesize(TEMP+"/7700E0.img.bin") \
		)
.org 0x801585C
	// Remove empty tile copy to 4th tile
	b	0x8015866


// Load correct tileset size for Customizing and Strat Change
.org 0x80160E6
	mov	r4,filesize(TEMP+"/76E780.img.bin")/0x40
.org 0x80160F8
	mov	r4,filesize(TEMP+"/76E780.img.bin")/0x40
.org 0x8016BDA
	mov	r4,filesize(TEMP+"/76E780.img.bin")/0x40
.org 0x80163D2
	mov	r4,filesize(TEMP+"/76E940.img.bin")/0x40
.org 0x80163E4
	mov	r4,filesize(TEMP+"/76E940.img.bin")/0x40
.org 0x8016CE6
	mov	r4,filesize(TEMP+"/76E940.img.bin")/0x40


// New wider OAMs for ElemPlus/ElemPowr
.org 0x80157D0
	.dw	0x6016500
.org 0x8016360
	.dh	0x4013,0x8002,0xCB28
.org 0x8016368
	.dh	0x4013,0x8022,0xCB30


// Character x in the x2 for time freezing Full Synchro attacks
.org 0x8017644
	.dw	file_601738+0x40*0x4A
.org 0x8017650
	.dw	file_601738+0x40*0x4A+0x20


// Set up extra character on Program Advance label
.org 0x801813C
	.dw	file_76E240+0x2C0
.org 0x8018290
	.dw	file_76E240+0x2C0


// Localized Navi names on battle labels
.org 0x8017EC4
	// < ROCKMAN DELETED >
	.dw	file_76DDC0	// M
	.dw	file_76DBC0	// E
	.dw	file_76DC40	// G
	.dw	file_76DAC0	// A
.org 0x80182C0
	// < ROCKMAN WIN! >
	.dw	file_76DDC0	// M
	.dw	file_76DBC0	// E
	.dw	file_76DC40	// G
	.dw	file_76DAC0	// A
.org 0x8018500
	// < BLUES WIN! >
	.dw	0x4034
	.dw	file_76E1C0	// <
	.dw	file_76E140	//
	.dw	file_76DE80	// P
	.dw	file_76DF00	// R
	.dw	file_76DE40	// O
	.dw	file_76DF80	// T
	.dw	file_76DE40	// O
	.dw	file_76DDC0	// M
	.dw	file_76DAC0	// A
	.dw	file_76DE00	// N
	.dw	file_76E140	//
	.dw	file_76E040	// W
	.dw	file_76DCC0	// I
	.dw	file_76DE00	// N
	.dw	file_76E180	// !
	.dw	file_76E140	//
	.dw	file_76E200	// >
.org 0x8018998
	// < BLUES DELETED >
	.dw	0x4028
	.dw	file_76E1C0	// <
	.dw	file_76E140	//
	.dw	file_76DE80	// P
	.dw	file_76DF00	// R
	.dw	file_76DE40	// O
	.dw	file_76DF80	// T
	.dw	file_76DE40	// O
	.dw	file_76DDC0	// M
	.dw	file_76DAC0	// A
	.dw	file_76DE00	// N
	.dw	file_76E140	//
	.dw	file_76DB80	// D
	.dw	file_76DBC0	// E
	.dw	file_76DD80	// L
	.dw	file_76DBC0	// E
	.dw	file_76DF80	// T
	.dw	file_76DBC0	// E
	.dw	file_76DB80	// D
	.dw	file_76E140	//
	.dw	file_76E200	// >
.org 0x8018DDC
	// < FORTE WIN! >
	.dw	0x4044
	.dw	file_76E1C0	// <
	.dw	file_76E140	//
	.dw	file_76DB00	// B
	.dw	file_76DAC0	// A
	.dw	file_76DF40	// S
	.dw	file_76DF40	// S
	.dw	file_76E140	//
	.dw	file_76E040	// W
	.dw	file_76DCC0	// I
	.dw	file_76DE00	// N
	.dw	file_76E180	// !
	.dw	file_76E140	//
	.dw	file_76E200	// >
	.dw	0x801912C
.org 0x801907C
	// < FORTE DELETED >
	.dw	0x4038
	.dw	file_76E1C0	// <
	.dw	file_76E140	//
	.dw	file_76DB00	// B
	.dw	file_76DAC0	// A
	.dw	file_76DF40	// S
	.dw	file_76DF40	// S
	.dw	file_76E140	//
	.dw	file_76DB80	// D
	.dw	file_76DBC0	// E
	.dw	file_76DD80	// L
	.dw	file_76DBC0	// E
	.dw	file_76DF80	// T
	.dw	file_76DBC0	// E
	.dw	file_76DB80	// D
	.dw	file_76E140	//
	.dw	file_76E200	// >
	.dw	0x801912C


// Wider "Which enemy"
.org 0x8020B5E
	// x-position
	mov	r0,0x6	// from 0x7
.org 0x8020B66
	// width
	mov	r4,0x7	// from 0x5
.org 0x8020B7C
	.dw	battle_whichEnemyTilemap
