.align 2
naviSelect_getNaviNameTile:
	lsl	r3,r0,0x2
	lsl	r0,r0,0x1
	add	r3,r3,r0
	pop	r0
	mov	r15,r14

naviSelect_renderNaviName:
	push	r0-r3,r14

	// Render first OAM
	bl	0x8029538

	pop	r0-r3

	// Offset x-position
	mov	r4,0x20
	lsl	r4,r4,0x10
	add	r0,r0,r4

	// Change to 16x8
	lsl	r0,r0,0x2
	lsr	r0,r0,0x2

	// Get next tiles
	add	r1,0x4

	// Render second OAM
	bl	0x8029538

	pop	r15


.if VAR_DEBUG
.align 2
naviSelect_unlockAllNavis:
	push	r14

	mov	r0,0x1
	strb	r0,[r5]

	// Check Select button held
	mov	r0,r10
	ldr	r0,[r0,0x4]
	ldrh	r0,[r0]
	lsr	r0,r0,0x3
	bcc	@@end

	mov	r4,0x15

@@unlocknavis:
	add	r0,=@naviSelect_chipGateNaviValues
	mov	r1,0x0

@@unlocknaviloop:
	cmp	r1,r4
	bge	@@end
	ldrb	r2,[r0,r1]
	bl	@unlockNavi
	add	r1,0x1
	b	@@unlocknaviloop

@@end:
	pop	r15
.endif


.align 2
naviSelect_chipGateNaviUnlocks:
	push	r14

@@checkUnder:
	ldrb	r0,[r5,0x5]
	cmp	r0,0x3
	bne	@@end

	// Unlock all the Chip Gate Navis
	add	r0,=@naviSelect_chipGateNaviValues
	mov	r1,0x7
@@unlockLoop:
	ldrb	r2,[r0,r1]
	bl	@unlockNavi
	sub	r1,0x1
	bpl	@@unlockLoop

@@end:
	pop	r15


@unlockNavi:
	push	r0-r1,r4,r14

	mov	r0,r2
	bl	0x8005F64

	mov	r0,0xE
	mov	r1,0xD0
	add	r1,r1,r2
	bl	0x802871E

	pop	r0-r1,r4,r15

	.pool


@naviSelect_chipGateNaviValues:
	.db	0x0F,0x12,0x13,0x14,0x15,0x11,0x10,0x16
.if VAR_DEBUG
	.db	0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x0B,0x0C
.endif


.align 2
naviSelect_bypassVC:
	// Bypass Virtual Console Navi unlock hook
	push	r4,r14
	mov	r4,r0
	bl	0x8005F78

	// Return to original function
	bl	0x803953E
