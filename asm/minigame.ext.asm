.align 2
minigame_windManDistance:
	push	r14
	ldr	r2,[r1,r0]	// Load distance

	mov	r0,r2
	mov	r1,0x7D		// 1000
	lsl	r1,r1,0x3
	swi	0x6		// Div

	str	r0,[r4,0x4C]	// buffer 1 = distance / 1000
	str	r1,[r4,0x50]	// buffer 2 = distance % 1000

	pop	r15

	.pool
