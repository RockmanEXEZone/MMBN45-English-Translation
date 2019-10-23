.align 2
text_cmdEuropeBlock:
	push	r14

	ldrb	r0,[r4,0x1]
	cmp	r0,0x0
	beq	@@skip

	cmp	r0,(VAR_TEXT_EU ? 0x2 : 0x1)
	bne	@@loop

@@skip:
	add	r4,0x2
	b	@@end

@@loop:
	// Loop until 0xFE 0x00
	ldrb	r0,[r4]
	add	r4,0x1
	cmp	r0,0xE4
	bne	@@checkFE
	add	r4,0x1
	b	@@loop
@@checkFE:
	cmp	r0,0xFE
	bne	@@loop
	ldrb	r0,[r4]
	add	r4,0x1
	cmp	r0,0x0
	bne	@@loop

@@end:
	mov	r0,0x1
	pop	r15


.align 2
text_loadMailContentsUncompressed:
	push	r14

	// Get Mail Contents for current Navi
	ldrb	r2,[r5,0x10]	// get current Navi
	lsl	r2,r2,0x2
	ldr	r0,[r0,r2]

	bl	0x804F7B6

	pop	r15


.align 2
text_multiStringComma:
	mov	r0,0xA1		// ','
	strb	r0,[r5]
	mov	r0,0xE8		// '\n'
	strb	r0,[r5,0x1]
	add	r5,0x2
	bx	r14


.align 2
text_applyStringCapsROM:
	push	r14

	// Read capitalization bit
	ldrb	r7,[r4,0x1]

	// Read string type
	ldrb	r1,[r4,0x2]
	cmp	r1,0x80
	blt	@@next
	// Read string type from buffer
	sub	r1,0x80
	lsl	r1,r1,0x2
	add	r1,0x4C
	ldr	r1,[r5,r1]

@@next:
	// Store old script pointer
	add	r4,0x3
	str	r4,[r5,0x44]

	// Set new script pointer
	mov	r4,r0

	bl	@text_doStringCaps

	pop	r15


.align 2
text_applyStringCapsRAM:
	// Read capitalization bit
	ldrb	r7,[r0,0x1]

	// Read string type
	ldrb	r1,[r0,0x2]

	// Store old script pointer
	add	r0,0x3
	str	r0,[r3,0x28]

	// Set new script pointer
	mov	r0,r6

	bl	@text_doStringCaps

	pop	r1-r7,r15


.align 2
@text_doStringCaps:
// in: r0 = script pointer, r1 = string type, r7 = capitalization flags
// destroys r2
	push	r14

	// Replace with indefinite article
	lsr	r2,r7,0x6
	bcc	@@checkCaps

	push	r1
	mov	r1,r0
	ldr	r3,=file_05290C+0x2

@@checkVowel:
	ldrb	r2,[r1]
	lsl	r2,r2,0x2
	ldrb	r2,[r3,r2]

	cmp	r2,0xB		// 'A'
	beq	@@printN
	cmp	r2,0xF		// 'E'
	beq	@@printN
	cmp	r2,0x13		// 'I'
	beq	@@printN
	cmp	r2,0x19		// 'O'
	beq	@@printN
	cmp	r2,0x1F		// 'U'
	beq	@@printN

	cmp	r2,0xFF
	bne	@@printEmpty
	add	r1,0x1
	b	@@checkVowel

@@printN:
	mov	r2,0x33		// 'n'
	strb	r2,[r0]
	mov	r2,0xE5
	strb	r2,[r0,0x1]
	b	@@printEnd
	
@@printEmpty:
	mov	r2,0xE5
	strb	r2,[r0]

@@printEnd:
	pop	r1

@@checkCaps:
	// Check if capitalization flags
	lsr	r2,r7,0x7
	// Checks capitalizeAll, always capitalized
	bcs	@@applyCaps
	lsr	r2,r7,0x8
	// Checks capitalize, depends on string type
	bcc	@@end

@@checkTypes:
	// Check if string type should be capitalized
	cmp	r1,0x1
	ble	@@end

	cmp	r1,0x3
	blt	@@applyCaps
	cmp	r1,0x7
	ble	@@end

	cmp	r1,0xB
	blt	@@applyCaps
	cmp	r1,0xD
	ble	@@end

	cmp	r1,0x12
	blt	@@applyCaps
	cmp	r1,0x1B
	ble	@@end

	cmp	r1,0x1F
	blt	@@applyCaps
	cmp	r1,0x37
	ble	@@end

	cmp	r1,0x45
	blt	@@applyCaps
	cmp	r1,0x46
	ble	@@end

@@applyCaps:
	mov	r2,0x0

@@loop:
	// Load next character of script
	ldrb	r1,[r0,r2]

	cmp	r1,0xE5
	beq	@@end

@@AtoZ:
	cmp	r1,0x26		// 'a'
	blt	@@nextChar
	cmp	r1,0x3F		// 'z'
	bgt	@@special1
	// a-z -> A-Z
	sub	r1,0x1B
	b	@@storeChar

// I know, I know...
@@special1:
	cmp	r1,0x40		// 'ÿ'
	bne	@@special2
	mov	r1,0x41		// 'Ÿ'
	b	@@storeChar

@@special2:
	cmp	r1,0x46		// 'œ'
	bne	@@special3
	mov	r1,0x45		// 'Œ'
	b	@@storeChar

@@special3:
	cmp	r1,0x62		// 'ý'
	bne	@@special4
	mov	r1,0x68		// 'Ý'
	b	@@storeChar

@@special4:
	cmp	r1,0x82		// 'þ'
	bne	@@special5
	mov	r1,0x69		// 'Þ'
	b	@@storeChar

@@special5:
	cmp	r1,0x6B		// 'à'
	blt	@@nextChar
	cmp	r1,0x87		// 'ü'
	bgt	@@nextChar
	// a-z -> A-Z
	sub	r1,0x20

@@storeChar:
	strb	r1,[r0,r2]

@@nextChar:
	// Checks capitalizeAll
	lsr	r1,r7,0x7
	bcc	@@end

	add	r2,0x1
	b	@@loop

@@end:
	pop	r15

	.pool
