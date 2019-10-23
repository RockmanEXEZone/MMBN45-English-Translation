// WindMan minigame cybermeters -> cyberfeet
// Corresponds to text archive 71551C
.if !VAR_TEXT_EU
.org 0x80DE25C
	.dw	13000	// from   4000
	.dw	20000	// from   6200
	.dw	26000	// from   7800
	.dw	31000	// from   9600
	.dw	36000	// from  11000
	.dw	40000	// from  12300
	.dw	43000	// from  13000
	.dw	52000	// from  16000
	.dw	66000	// from  20000
	.dw	92000	// from  28000
	.dw	110000	// from  33000
	.dw	130000	// from  40000
	.dw	140000	// from  44000
	.dw	200000	// from  65000
	.dw	220000	// from  70000
	.dw	260000	// from  80000
	.dw	270000	// from  85000
	.dw	290000	// from  95000
	.dw	300000	// from 100000
.endif

// WindMan distance comma hack
.org 0x80DE216
	bl	minigame_windManDistance


// Move IceMan minigame text around in VRAM,
// since START label is too big
.org 0x80EA398
	.dw	0x6013100	// from 0x6013000
.org 0x80EA370
	.dw	0x6013C40	// from 0x6013900
.org 0x80EA6A0
	.dw	0x9188		// from 0x9180
.org 0x80EA6C4
	.dw	0x91E2		// from 0x91C8


// IceMan minigame text indexes
// Corresponds to text archive 71BE98
.org 0x80EA70A
	mov	r2,0x1C	// HI offset
.org 0x80EA714
	cmp	r4,0x2	// HI length
.org 0x80EA756
	mov	r0,0xC	// Cannon x-position
.org 0x80EA75C
	mov	r2,0x0	// Cannon offset
.org 0x80EA766
	cmp	r7,0x6	// Cannon length
.org 0x80EA776
	mov	r0,0x4	// WideSwrd x-position
.org 0x80EA77C
	mov	r2,0x6	// WideSwrd offset
.org 0x80EA786
	cmp	r7,0x8	// WideSwrd length
.org 0x80EA796
	mov	r0,0xC	// Heat-V x-position
.org 0x80EA79C
	mov	r2,0xE	// Heat-V offset
.org 0x80EA7A6
	cmp	r7,0x6	// Heat-V length
.org 0x80EA7B6
	mov	r0,0x4	// EnergBom x-position
.org 0x80EA7BC
	mov	r2,0x14	// EnergBom offset
.org 0x80EA7C6
	cmp	r7,0x8	// EnergBom length
.org 0x80EA7D6
	mov	r0,0x4	// LongSwrd x-position
.org 0x80EA7DC
	mov	r2,0x1E	// LongSwrd offset
.org 0x80EA7E6
	cmp	r7,0x8	// LongSwrd length
.org 0x80EA7F6
	mov	r0,0x8	// NeoVari x-position
.org 0x80EA7FC
	mov	r2,0x26	// NeoVari offset
.org 0x80EA806
	cmp	r7,0x7	// NeoVari length

// Reload PAUSE from ROM for IceMan minigame
.org 0x80EA270
	.dw	0x6013EC0	// from 0x6013E00
.org 0x80EA87C	// Change tile numbers
	.dw	0xE1F6
.org 0x80EA884
	.dw	0xE1FE
