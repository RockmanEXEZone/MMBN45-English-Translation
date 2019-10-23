.align 2
// Load third OAM for menu name
pet_loadThirdMenuNameOam:
	bl	0x8029538
	ldr	r0,[@baseTiles]
	add	r1,0x4
	bl	0x8029538

	pop	r4-r6,r15


.align 2
pet_overrideTextLength:
	ldrb	r0,[r5,0x8]
	add	r2,=@textLengths
	ldrb	r0,[r2,r0]
	ldr	r2,[r5,0x4]

	mov	r15,r14


.align 2
pet_overrideTextLengthPQ:
	ldrb	r0,[r7,0x3]
	add	r2,=@textLengths
	ldrb	r0,[r2,r0]
	ldr	r2,[r7,0x4]

	mov	r15,r14

	.pool

@baseTiles:
	.dh	0x0002,0x0092


@textLengths:
	.db	10	// school/company
	.db	 8	// big bro
	.db	 8	// lil bro
	.db	 8	// big sis
	.db	 8	// lil sis
	.db	 8	// friend
	.db	10	// fav food
	.db	10	// hobby
	.db	10	// dream
	.db	10	// crush
	.db	10	// idol
	.db	10	// enemy
	.db	10	// fav show
	.db	10	// best subject
	.db	10	// worst subject
	.db	10	// wishlist
	.db	 8	// most freq opp
	.db	 8	// most lost opp
	.db	 8	// most lost opp chip
	.db	 8	// most beat opp
	.db	 8	// most beat opp chip
	.db	 8	// fav std chip 1
	.db	 8	// fav std chip 2
	.db	 8	// fav std chip 3
	.db	 8	// fav mega chip
	.db	 8	// fav giga chip