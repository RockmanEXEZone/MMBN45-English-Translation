.if VAR_DEBUG

title_versionLabelShow:
	push	r4-r7,r14

	// Copyright CAPCOM
	mov	r0,0x8
	mov	r1,0x8C
	mov	r2,0x1
	bl	0x80291B4

	// Version label
	mov	r0,0x0
	mov	r1,0x0
	ldr	r2,=@labelParams
	bl	0x80291C4

	pop	r4-r7,r15


title_versionLabelPrint:
	push	r14

	ldr	r0,=@versionNameText
	mov	r1,0x0
	ldr	r2,=0x201C2C0
	ldr	r3,=0x60102C0
	mov	r4,(@NAME_END - @NAME_START)
	mov	r5,0x1
	ldr	r6,=file_601738+0xC	// shift 3 pixels up
	mov	r7,0x0
	bl	0x80554A4

	bl	0x8001698

	pop	r15

	.pool


.align 4
@versionNameText:
	// Trivial text archive
	.dh	0x2
@NAME_START:
	.strn	VAR_TARGET
	.strn	"-"
.if VAR_REVISION != 0xFFFFFFFF
	.strn	tohex(VAR_REVISION, 7)
.else
	.strn	tohex(VAR_VERSION_DATE)
	.strn	"-"
	.strn	tostring(VAR_VERSION_REVISION & 0x3F)
.endif
@NAME_END:
	.db	0xE5	// end


.align 2
@labelParams:
	.db	(@NAME_END - @NAME_START)
	.db	0x01
	.dh	0x0016				// base tile
	.db	0x02				// palette
	.db	0x00

.endif



.align 2
title_inputCode:
	push	r14

	// Draw menu cursor
	bl	0x80291B4

	// Trim off lower bit on progress
	// This is soft reset flag, no longer used at this point
	ldrb	r0,[r5,0x3]
	lsr	r0,r0,0x1
	lsl	r0,r0,0x1
	strb	r0,[r5,0x3]

	// Check if title code is available
	bl	@isTitleCodeAvailable
	cmp	r0,0h
	beq	@@reset

	// Check cursor is on CONTINUE
	ldrb	r0,[r5,0x8]
	cmp	r0,0x1
	bne	@@reset

	// Get new button input
	mov	r7,r10
	ldr	r7,[r7,0x4]
	ldrh	r0,[r7,0x2]

	tst	r0,r0
	beq	@@end

	// Check button pressed
	ldrb	r1,[r5,0x3]
	ldr	r3,=@buttons
	ldrh	r2,[r3,r1]
	cmp	r0,r2
	bne	@@reset

	// Increment progress
	add	r1,0x2
	strb	r1,[r5,0x3]
	ldrh	r2,[r3,r1]
	tst	r2,r2
	bne	@@end

	bl	@unlockAllLibraryIcons

@@reset:
	// Reset code
	mov	r0,0x0
	strb	r0,[r5,0x3]	

@@end:
	pop	r15


@isTitleCodeAvailable:
	push	r14

	// Check Standard library
	bl	0x804267C
	cmp	r0,0xBE
	blt	@@no

	// Check Mega library
	bl	0x80426BC
	cmp	r0,0x55
	blt	@@no

	// Check Giga library
	bl	0x80426FC
	cmp	r0,0xB
	blt	@@no

	// Check P.A. Memo
	bl	0x804273C
	cmp	r0,0x1E
	blt	@@no

	// Check Bass kills
	bl	@getNumberOfBassKills
	cmp	r0,0x15
	blt	@@no

	// Check Official Tournament clears
	bl	@getNumberOfOfficialClears
	cmp	r0,0x15
	blt	@@no

@@yes:
	mov	r0,0x1
	pop	r15

@@no:
	mov	r0,0x0
	pop	r15


@getNumberOfBassKills:
	push	r4-r5,r14
	mov	r4,0x0
	mov	r5,0x0

@@loop:
	ldr	r0,=0x125E
	add	r0,r0,r5
	bl	0x80287B2
	beq	@@next
	add	r4,0x1

@@next:
	add	r5,0x1
	cmp	r5,0x17
	bge	@@end
	cmp	r5,0xD
	bne	@@loop
	mov	r5,0xF
	b	@@loop

@@end:
	mov	r0,r4
	pop	r4-r5,r15


@getNumberOfOfficialClears:
	push	r4-r5,r14
	mov	r4,0x0
	mov	r5,0x0

@@loop:
	lsl	r0,r5,0x1
	add	r0,0x2
	bl	0x80287B2
	beq	@@next
	add	r4,0x1

@@next:
	add	r5,0x1
	cmp	r5,0x17
	bge	@@end
	cmp	r5,0xD
	bne	@@loop
	mov	r5,0xF
	b	@@loop

@@end:
	mov	r0,r4
	pop	r4-r5,r15


@unlockAllLibraryIcons:
	push	r4,r14
	mov	r4,0x0

	mov	r0,0x1
	mov	r1,0xBA
	bl	@unlockLibraryIconsRange
	add	r4,r4,r0

	mov	r0,0xC9
	mov	r1,0x5A
	bl	@unlockLibraryIconsRange
	add	r4,r4,r0

	ldr	r0,=0x12D
	mov	r1,0xA
	bl	@unlockLibraryIconsRange
	add	r4,r4,r0

	tst	r4,r4
	beq	@@end

	// Update unlock bytes for all library icons
	bl	0x8005E94

	// Play SFX
	mov	r0,0x74
	bl	0x8000534

@@end:
	pop	r4,r15


@unlockLibraryIconsRange:
// r0 = start
// r1 = count
// return r0 = number of icons added
	push	r4-r6,r14
	mov	r5,r0		// r0 = start
	add	r6,r0,r1	// r1 = count
	mov	r4,0x0		// number of icons added

@@loop:
	// Check if end reached
	cmp	r5,r6
	bge	@@end

	// Check flag
	ldr	r0,=0x2AC0
	add	r0,r0,r5
	bl	0x80287B2
	bne	@@next

	// Set flag
	ldr	r0,=0x2AC0
	add	r0,r0,r5
	bl	0x8028722

	add	r4,0x1

@@next:
	add	r5,0x1
	b	@@loop

@@end:
	mov	r0,r4
	pop	r4-r6,r15


	.pool

@buttons:
	.dh	0x200	// L
	.dh	0x200	// L
	.dh	0x100	// R
	.dh	0x200	// L
	.dh	0x100	// R
	.dh	0x200	// L
	.dh	0x100	// R
	.dh	0x100	// R
	.dh	0x0	// end
