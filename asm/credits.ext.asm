.align 2
credits_unlockNavis:
	push	r4-r5,r14
	mov	r5,0x0

@@loop:
	add	r0,=@navisToUnlock
	ldrb	r4,[r0,r5]
	cmp	r4,0xFF
	beq	@@end

	mov	r0,r4
	bl	0x8005F64

	ldr	r0,=0xED0
	add	r0,r0,r4
	bl	0x8028722

	add	r5,0x1
	b	@@loop

@@end:
	bl	0x80D95CC
	pop	r4-r5,r15

	.pool

@navisToUnlock:
	.db	0x0F
	.db	0x12
	.db	0x13
	.db	0x14
	.db	0x15
	.db	0x11
	.db	0x10
	.db	0xFF