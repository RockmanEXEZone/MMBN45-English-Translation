// Use wider tournament labels
.org 0x0804794C
	// Official Tournament label
	.db	0x02,0x00,0x1A,0x03


// Use wider tilemap for Chip Roulette
.org 0x8047DA2
	// Load wider tilemap
	mov	r4,0x14
.org 0x804823E
	// x-position to snap to after slide in
	mov	r6,0xD8
.org 0x8048254
	// Wider tilemap to slide
	mov	r4,0x14
.org 0x8048278
	// x-position to slide in to
	.dw	0xD8
	// x-position to slide out to
	.dw	0x19A