// Text input censor
.align 2
textInput_containsBadword:
	push	r4-r7,r14
	mov	r4,r0
	ldr	r5,=file_6368E8
	ldrh	r1,[r5,0xC]		// script 6
	add	r5,r5,r1		// badwords pointer
	ldr	r7,=file_05290C+0x2	// VWF table: similar char

@@checkEmpty:
	ldrb	r1,[r0]
	add	r0,0x1
	cmp	r1,0xE5
	bge	@@isEmpty
	lsl	r1,r1,0x2
	ldrb	r1,[r7,r1]		// get similar char
	cmp	r1,0xFF			// check is whitespace
	beq	@@checkEmpty

@@restartBadwords:
	mov	r2,r5
@@restartInput:
	mov	r3,r4
	mov	r6,0x0			// contains spaces flag

@@readBadword:
	ldrb	r1,[r2]			// badwords char
	cmp	r1,0xB2			// '_'
	bne	@@maybeBadword
@@maybeGoodword:
	tst	r6,r6
	bne	@@nextBadword		// is goodword only if no spaces
	sub	r4,r3,0x1
	b	@@restartBadwords
@@maybeBadword:
	cmp	r1,0xE5			// '\n' or end
	bge	@@hasBadword

@@readChar:
	ldrb	r0,[r3]			// input char
	add	r3,0x1
	lsl	r0,r0,0x2
	ldrb	r0,[r7,r0]		// get similar char

@@compareBadword:
	ldrb	r1,[r2]			// badwords char
	lsl	r1,r1,0x2
	ldrb	r1,[r7,r1]		// get similar char
	cmp	r0,r1
	beq	@@matchLetter
	cmp	r0,0x0
	beq	@@hasSpace
	cmp	r0,0xFF			// ' '
	bne	@@nextBadword
@@hasSpace:
	mov	r6,0x1			// set contains spaces flag
	b	@@readChar

@@matchLetter:
	add	r2,0x1
	b	@@readBadword

@@nextBadword:
	ldrb	r1,[r2]
	add	r2,0x1
	cmp	r1,0xE5			// end
	beq	@@nextFirstChar
	cmp	r1,0xE8			// '\n'
	beq	@@restartInput
	b	@@nextBadword

@@nextFirstChar:
	add	r4,0x1
	ldrb	r0,[r4]			// input char
	cmp	r0,0xB2
	beq	@@noBadwords
	cmp	r0,0xE5
	blt	@@restartBadwords

@@noBadwords:
	mov	r0,0x0
	pop	r4-r7,r15

@@isEmpty:
	mov	r0,0x1
	pop	r4-r7,r15

@@hasBadword:
	mov	r0,0x2
	pop	r4-r7,r15

	.pool
