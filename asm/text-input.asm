// 8 characters for player name
.org 0x8039E34
	mov	r0,0x8

// Set empty character to underscore
.org 0x803501A
	cmp	r0,0xB2
.org 0x8035056
	cmp	r0,0xB2
.org 0x803561C
	.dw	0xB2

// Limit text input to 2 pages
.org 0x8035508
	mov	r1,(0x2-0x1)
.org 0x8035516
	cmp	r1,0x2

// Unselectable cursor positions
.org 0x8035090
	cmp	r0,0x1
// Page 1
.org 0x80350D8
.area 0x70
	// position, from below, from above, from right, from left, from page
	.db	 1,5,	 1,4,	 1,0,	 0,5,	 5,5,	 1,4
	.db	 2,5,	 2,4,	 2,0,	 0,5,	 5,5,	 2,4
	.db	 3,5,	 3,4,	 3,0,	 0,5,	 5,5,	 3,4
	.db	 4,5,	 4,4,	 4,0,	 0,5,	 5,5,	 4,4
	.db	 6,5,	 6,4,	 6,0,	 5,5,	10,5,	 6,4
	.db	 7,5,	 7,4,	 7,0,	 5,5,	10,5,	 7,4
	.db	 8,5,	 8,4,	 8,0,	 5,5,	10,5,	 8,4
	.db	 9,5,	 9,4,	 9,0,	 5,5,	10,5,	 9,4
	.db	15,5,	15,4,	15,0,	14,5,	 0,5,	15,4
	.db	-1,-1
.endarea
// Page 2
.org 0x803514C
.area 0x19A
	// position, from below, from above, from right, from left, from page
	.db	 4,4,	 4,3,	 4,0,	 3,4,	 5,4,	 3,4
	.db	 8,4,	 8,3,	 8,0,	 7,4,	15,4,	 7,4
	.db	 9,4,	 9,3,	 9,0,	 7,4,	15,4,	 9,3
	.db	10,4,	10,3,	10,0,	 7,4,	15,4,	10,3
	.db	11,4,	11,3,	11,0,	 7,4,	15,4,	11,3
	.db	12,4,	12,3,	12,0,	 7,4,	15,4,	12,3
	.db	13,4,	13,3,	13,0,	 7,4,	15,4,	13,3
	.db	14,4,	14,3,	14,0,	 7,4,	15,4,	14,3
	.db	 0,5,	 0,4,	 0,0,	 0,4,	 0,4,	 0,4
	.db	 1,5,	 1,4,	 1,0,	 1,4,	 1,4,	 1,4
	.db	 2,5,	 2,4,	 2,0,	 2,4,	 2,4,	 2,4
	.db	 3,5,	 3,4,	 3,0,	 3,4,	 3,4,	 3,4
	.db	 4,5,	 4,3,	 4,0,	 3,4,	 5,4,	 3,4
	.db	 5,5,	 5,4,	 5,0,	 5,4,	 5,4,	 5,4
	.db	 6,5,	 6,4,	 6,0,	 6,4,	 6,4,	 6,4
	.db	 7,5,	 7,4,	 7,0,	 7,4,	 7,4,	 7,4
	.db	 8,5,	 8,3,	 8,0,	 7,4,	15,4,	 7,4
	.db	 9,5,	 9,3,	 9,0,	 7,4,	15,4,	 7,4
	.db	10,5,	10,3,	10,0,	 7,4,	15,4,	10,3
	.db	11,5,	11,3,	11,0,	 7,4,	15,4,	11,3
	.db	12,5,	12,3,	12,0,	 7,4,	15,4,	12,3
	.db	13,5,	13,3,	13,0,	 7,4,	15,4,	13,3
	.db	14,5,	14,3,	14,0,	 7,4,	15,4,	14,3
	.db	15,5,	15,4,	15,0,	15,4,	15,4,	15,4
	.db	-1,-1
.endarea



// Text input censor
.org 0x8035038
.area 0x4E
	push	r14

	ldr	r0,=0x200FC40
	add	r0,0x40
	bl	textInput_containsBadword

	pop	r15

	.pool
.endarea



.org 0x80353B0
.area 0x1DC
	push	r4,r5,r14
	ldr	r4,=0x200FC40
	mov	r3,r10
	ldr	r3,[r3,0x4]
	ldrh	r3,[r3,0x2]	// get new button presses

@@checkB:
	mov	r0,0x2
	tst	r3,r0
	beq	@@checkA

	ldr	r3,[r4,0x14]	// get cursor position
	ldr	r2,[r4,0x10]	// get start of text
	cmp	r2,r3		// if cursor not at start
	bne	@@eraseChar	// then erase char at cursor
	ldr	r2,[r4,0x18]	// get end of text
	cmp	r2,r3		// if all text erased
	beq	@@endByB	// then try to exit
	add	r2,r3,0x2	// erase at start
	b	@@copyChars
@@endByB:
	ldrb	r0,[r4,0xE]
	cmp	r0,0x2		// check if exit possible
	bne	@@doEnd

	mov	r0,0x1		// return true below out of range
	pop	r4,r5,r15

@@eraseChar:
	mov	r2,r3
	sub	r3,0x2
	str	r3,[r4,0x14]	// move cursor back
@@copyChars:
	ldr	r1,[r4,0x18]
	cmp	r1,r2
	beq	@@eraseEnd
@@eraseLoop:
	ldrh	r0,[r2]
	strh	r0,[r3]
	add	r2,0x2
	add	r3,0x2
	cmp	r2,r1
	bne	@@eraseLoop
@@eraseEnd:
	str	r3,[r4,0x18]

	b	@@eraseSFX

@@checkA:
	mov	r0,0x1
	tst	r3,r0
	beq	@@checkStart

	ldrb	r0,[r4,0x6]	// get cursor x
	cmp	r0,0xF
	bne	@@getChar

@@button0:
	ldrb	r0,[r4,0x7]	// get cursor y
	cmp	r0,0x0
	beq	@@swapPage

@@button1:
	cmp	r0,0x1
	beq	@@moveNext

@@button2:
	cmp	r0,0x2
	beq	@@moveBack

@@button3:
	cmp	r0,0x3
	beq	@@doOK

@@button4:
	cmp	r0,0x4
	bne	@@returnTrueJump

@@endByButton:
	ldrb	r0,[r4,0xE]
	cmp	r0,0x2		// check if exit possible
	bne	@@doEnd

	mov	r0,0x69
	bl	0x8000534	// play error sound effect

	b	@@returnTrueJump

@@doEnd:
	mov	r0,0x2
	strb	r0,[r4,0xE]

	mov	r0,0x0
	strb	r0,[r5,0xA]
	mov	r0,0x14
	strb	r0,[r5]

@@eraseSFX:
	mov	r0,0x7F
	bl	0x8000534	// play erase sound effect

@@returnTrueJump:
	b	@@returnTrue

@@getChar:
	mov	r0,0x14
	bl	0x8035620	// calc current length
	ldrb	r1,[r4,0x4]	// get max length
	cmp	r0,r1		// check if max length reached
	beq	@@returnTrue

	ldrb	r0,[r4,0x7]	// get cursor y
	mov	r1,0xF
	mul	r0,r1
	ldrb	r1,[r4,0x6]	// get cursor x
	add	r1,r1,r0	// get char offset
	ldr	r3,[0x8035748]	// get text archive ptr
	ldrb	r2,[r4,0x8]	// get page
	add	r2,0x2		// get script index
	lsl	r2,r2,0x1
	ldrh	r2,[r3,r2]	// get script offset
	add	r3,r3,r2	// get script ptr
@@charLoop:
	ldrb	r5,[r3]		// get char from script
	sub	r1,0x1
	bmi	@@doChar
	cmp	r5,0xE4		// check for extended table
	bne	@@nextChar
	add	r3,0x1		// skip extended char
	ldrb	r2,[r3]
	lsl	r2,r2,0x8
	orr	r5,r2		// add extended char
@@nextChar:
	add	r3,0x1		// skip char
	b	@@charLoop

@@doChar:
	bl	@@insertChar

	mov	r0,0x7E
	bl	0x8000534	// play char sound effect

	b	@@returnTrue

@@checkStart:
	mov	r0,0x8
	tst	r3,r0
	beq	@@checkSelect

	ldrh	r0,[r4,0x6]	// get cursor xy
	mov	r1,0x3		// OK y
	lsl	r1,r1,0x8
	add	r1,0xF		// OK x
	cmp	r0,r1
	beq	@@doOK		// if cursor on OK, do OK

	strh	r1,[r4,0x6]	// set cursor to OK

	b	@@returnTrue

@@doOK:
	bl	0x8035038	// check entry errors
	beq	@@okValid
@@okInvalid:
	mov	r0,0x69
	bl	0x8000534	// play error sound effect

	mov	r1,0x4		// status
	mov	r0,0xB		// error text
	b	@@showText
@@okValid:
	mov	r0,0xD4
	add	r0,0xFF
	bl	0x8000534	// play success sound effect

	mov	r1,0x0		// status
	mov	r0,0xA		// success text
@@showText:
	mov	r2,0x10
	strb	r2,[r5]
	strb	r1,[r5,0x1]
	bl	0x80322CC
	b	@@returnTrue

@@checkSelect:
	mov	r0,0x4
	tst	r3,r0
	beq	@@checkL

@@swapPage:
	ldrb	r0,[r4,0x8]
	mov	r1,0x1
	eor	r0,r1
	strb	r0,[r4,0x8]	// swap page

	bl	0x80356D0	// update page

	mov	r0,0x0
	bl	0x8035086	// fix cursor

	b	@@moveSFX

@@checkL:
	lsr	r3,r3,0x8
	mov	r0,0x2
	tst	r3,r0
	beq	@@checkR

@@moveBack:
	ldr	r3,[r4,0x14]	// get cursor position
	ldr	r2,[r4,0x10]	// get start of text
	cmp	r2,r3		// if at start to text
	beq	@@returnTrue	// abort

	sub	r3,0x2		// move cursor to left
	b	@@moveCursor

@@checkR:
	mov	r0,0x1
	tst	r3,r0
	beq	@@returnFalse

@@moveNext:
	ldr	r3,[r4,0x14]	// get cursor position
	ldr	r2,[r4,0x18]	// get end of text
	cmp	r2,r3		// if at end of text
	beq	@@insertSpace	// insert a space (if possible)

	add	r3,0x2		// move cursor to right
@@moveCursor:
	str	r3,[r4,0x14]
	b	@@moveSFX

@@insertSpace:
	mov	r0,0x14
	bl	0x8035620	// calculate current length
	ldrb	r1,[r4,0x4]	// get max length
	cmp	r0,r1		// check if max length reached
	beq	@@returnTrue

	mov	r5,0x0		// space character
	bl	@@insertChar

@@moveSFX:
	mov	r0,0xD3
	add	r0,0xFF
	bl	0x8000534	// play move sound effect

	b	@@returnTrue

@@returnFalse:
	mov	r0,0x0
	pop	r4,r5,r15

@@returnTruePop:
	add	r13,0x4		// yeah I know
@@returnTrue:
	mov	r0,0x1
	pop	r4,r5,r15

@@insertChar:
	push	r14

	mov	r0,0x14
	bl	0x8035620	// calculate current length
	ldrb	r1,[r4,0x4]	// get max length
	cmp	r0,r1		// check if max length reached
	beq	@@returnTruePop

	ldr	r1,[r4,0x14]	// get cursor position
	ldr	r2,[r4,0x18]	// get end of text
	cmp	r1,r2		// if not at end of text
	bne	@@writeChar
	add	r2,0x2		// increase text length
	str	r2,[r4,0x18]
@@writeChar:
	strh	r5,[r1]		// write the char
	add	r1,0x2		// move cursor to right
	str	r1,[r4,0x14]

	pop	r15

	.pool
.endarea
