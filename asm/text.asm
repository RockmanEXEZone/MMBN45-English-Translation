// Add US/EU text blocks
.org 0x80500FC
	.dw	text_cmdEuropeBlock|1
.org 0x8050164
	.dw	text_cmdEuropeBlock|1



// Use uncompressed 6EAD18 Tournament Victory
// Remove decompression step
.org 0x8046ED2
	nop	::	nop
.org 0x80470EC
	nop	::	nop

// Pointer for License graphics
.org 0x804810C	// script 5-9
	dw	file_6EAD18

// Use direct read function
.org 0x8046F70	// script 0-4, 11, 12, 25-48
	bl	0x80479E0
.org 0x80471FC	// script 15, 50
	bl	0x80479E0
.org 0x8047278	// script 16, 51
	bl	0x80479E0
.org 0x8047316	// script 17-22, 52-57
	bl	0x80479E0
.org 0x80472AA	// script 23
	bl	0x80479E0
.org 0x8047506	// script 60
	bl	0x80479E0
.org 0x80475CE	// script 61, 65-85, 90-110
	bl	0x80479E0
.org 0x804763A	// script 62
	bl	0x80479E0
.org 0x80476C4	// script 63
	bl	0x80479E0
// Left: 10, 86 (unused?)

.org 0x080479E0
.area 0x18
	// Replace decompression with direct read
	push	r0,r14
	bl	0x8000CEC
	lsl	r0,r0,0x2
	ldr	r1,=0x80479F8
	ldr	r0,[r1,r0]
	pop	r1
	bl	0x804FB4C
	pop	r15

	.pool
.endarea


// Mail contents - Use uncompressed

// Remove decompression step
.org 0x8040562
	nop	::	nop

// Replace decompression with direct read
.org 0x803FD06
	bl	text_loadMailContentsUncompressed
.org 0x803FD28
	.dw	0x80405F8


// Add commas for multi string buffer
.org 0x8038D38
	bl	text_multiStringComma
	nop


// Load character width as 8-bit value
.org 0x804F964
	ldrb	r2,[r3,r2]
.org 0x8055762
	ldrb	r3,[r4,r1]
.org IWRAM_BLOB+0x1316
	ldrb	r3,[r4,r1]

// Load mugshot animation flag from width table
.org 0x804FFD4
.area 0x22
	ldr	r0,=0x805290D
	lsl	r1,r1,0x2
	ldrb	r0,[r0,r1]
	mov	r1,0x1
	tst	r0,r1
	beq	0x804FFEA
	b	0x804FFF8
	.pool
.endarea
.org 0x805001E
.area 0x22
	ldr	r0,=0x805290D
	lsl	r1,r1,0x2
	ldrb	r0,[r0,r1]
	mov	r1,0x1
	tst	r0,r1
	beq	0x8050034
	b	0x805003E

	.pool
.endarea


// Use 8px space for number padding
.org 0x8055914
	mov	r7,0xC9
.org 0x8055950
	mov	r0,0xC9


// Auto-capitalization for player-entered strings
.org 0x8051574
.area 0x14
	push	r14
	add	r0,=0x8051588

	ldrb	r1,[r4,0x1]
	// Trim off the capitalization bits
	lsl	r1,r1,0x1C
	lsr	r1,r1,0x1A

	ldr	r0,[r0,r1]
	mov	r14,r15
	bx	r0

	pop	r15

	.pool
.endarea

.org 0x8051870
.area 0x14
	push	r14
	add	r0,=0x8051884

	ldrb	r1,[r4,0x1]
	// Trim off the capitalization bits
	lsl	r1,r1,0x1C
	lsr	r1,r1,0x1A

	ldr	r0,[r0,r1]
	mov	r14,r15
	bx	r0

	pop	r15

	.pool
.endarea

.org 0x80518D6
.area 0x12
	add	r2,=0x80518E8
	ldrb	r7,[r4,0x1]
	// Trim off the capitalization bits
	lsl	r7,r7,0x1C
	lsr	r7,r7,0x1C
	ldrb	r2,[r2,r7]
	add	r4,r4,r2
	str	r4,[r5,0x48]
	mov	r4,r0
	pop	r3,r15

	.pool
.endarea

.org 0x8051812
	bl	text_applyStringCapsROM
	nop

.org IWRAM_BLOB+0x11D8
.area 0x14
	push	r3,r7,r14
	add	r1,=IWRAM_BLOB+0x11EC

	ldrb	r3,[r0,0x1]
	// Trim off the capitalization bits
	lsl	r3,r3,0x1C
	lsr	r3,r3,0x1A

	ldr	r1,[r1,r3]
	mov	r14,r15
	bx	r1

	pop	r3,r7,r15

	.pool
.endarea

.org IWRAM_BLOB+0x125C
.area 0xC
	ldr	r1,=text_applyStringCapsRAM|1
	bx	r1
	.pool
.endarea


// Change space width to 7px (from 8px), as done in EXE4 -> BN4
.org 0x80505BE
	mov	r0,0x7


// Change positionTextCenter char width to 8px (from 11px), as done in EXE4 -> BN4
.org 0x805201A
	mov	r0,0x8


// Change positionOptionHorizontal calculation
//.org 0x805205A
//	mov	r0,0x8
//.org 0x805205E
//	mov	r1,0x7
.org 0x8052056
	ldrb	r1,[r4,0x2]
	mov	r0,0x7
	mul	r0,r1
	add	r0,0x2D
	b	0x8052066
.org 0x8052090
	// Don't shift off lowest bit
	b	0x8052094


// Change positionOptionVertical calculation
//.org 0x80520B8
//	mov	r0,0x8
//.org 0x80520BC
//	add	r0,0x7
.org 0x80520B6
	ldrb	r1,[r4,0x2]
	mov	r0,0x7
	mul	r0,r1
	add	r0,0x2D


// Change positionOptionFromCenter calculation
//.org 0x8052102
//	mov	r0,0x8
//.org 0x8052106
//	mov	r1,0x7
.org 0x80520FE
	ldrb	r1,[r4,0x2]
	mov	r0,0x7
	mul	r0,r1
	add	r0,0x2D
	b	0x805210E
.org 0x8052122
	// Don't shift off lowest bit
	b	0x8052126
