// Schedule text input lengths
.org 0x8030E1C	// TV Show length
	mov	r0,0xA
.org 0x8030E28 // Other length
	mov	r0,0xA
.org 0x8030E30 // Promise - Other length
	mov	r0,0xA


// Jacked in PET menu strings
.org 0x8031A40
	// x, y, ?, length, base tile (16-bit)
	.db	0x01,0x04,0x02,0x0C :: .dh 0xC1C0	// Location
	.db	0x01,0x07,0x02,0x04 :: .dh 0xC120	// Credits
	.db	0x0C,0x07,0x02,0x01 :: .dh 0xC180	// z
	.db	0x01,0x09,0x02,0x07 :: .dh 0xC140	// BugFrag
	.db	0xFF,0x00				// no BugFrag suffix


// Replace month numbers with month names
.org 0x8031FFC
	add	r0,0x52		// x-position 1
	mov	r1,0x20		// y-position 1
.org 0x8032014
	add	r0,0x62		// x-position 2
	mov	r1,0x20		// y-position 2
.org 0x803202A
.area 0x1E
	ldrb	r0,[r5,0x1D]	// get month
	sub	r0,0x1
	mov	r2,0xC0		// from 0x80
	mul	r0,r2
	ldr	r1,=file_635DD0
	add	r0,r0,r1
	ldr	r1,=0x6013F40
	bl	0x8000850	// set copy

	pop	r15

	.pool
.endarea


// Schedule menu strings
.org 0x8032C14
	// length, height flag, base tile (16-bit), palette, second row offset
	.db 0x07,0x01 :: .dh 0x0200 :: .db 0x03,0x00	// TV show
	.db 0x04,0x01 :: .dh 0x020E :: .db 0x03,0x00	// Meet
	.db 0x03,0x01 :: .dh 0x0216 :: .db 0x03,0x00	// Eat
	.db 0x06,0x01 :: .dh 0x021C :: .db 0x03,0x00	// Study
	.db 0x05,0x01 :: .dh 0x0228 :: .db 0x03,0x00	// Other


// Skip appending "Promise" to schedule strings
.org 0x8033020
	b	0x803303C


// Remove Founder's Day from Anniversary menu
.org 0x8033784
	mov	r3,0x2		// Rows of text to print
.org 0x80337FA
	mov	r2,0x1		// Max option
.org 0x80337C6
	cmp	r0,0x1		// Option for name input
.org 0x8033564
	cmp	r0,0x0		// Type check when saving
	bne	0x8033590


// Move BugFrags count 1 space to right
.org 0x8034BCE	// PET left menu
	add	r0,19h
.org 0x8031A2E	// Jacked in PET menu
	add	r0,0Dh


// Load third OAM for menu names
.org 0x80358EC
	bl	pet_loadThirdMenuNameOam


// Base tilemap entries for menu names
.org 0x08035934
	.dh	0x4002,0x4052
	.dh	0x4002,0x4072


// New holidays
.org 0x080367CC
.area 0x14
	.db	 1, 1	//  1 January	New Year's Day
	.db	 4, 1	//  1 April	April Fools
	.db	 2,14	// 14 February	Valentine's Day
	.db	10,31	// 31 October	Halloween
	.db	 0, 0
	.db	 0, 0
	.db	12,24	// 24 December	Christmas Eve
	.db	12,25	// 25 December	Christmas
	.db	12,31	// 31 December	New Year's Eve
.endarea


// Override text input lengths for personal questions
.org 0x8038D9C
	bl	pet_overrideTextLengthPQ

// Override text input lengths
.org 0x803A1D8
	bl	pet_overrideTextLength


// Move strings around in memory for new lengths
.org 0x803B1AE
	.dh	0x74A	// move up in memory 2 bytes
.org 0x8035DF0
	.dh	0x74A	// for save init
.org 0x803B1CE	// Wishlist
	.dh	0x762	// move down in memory 2 bytes
.org 0x8035DF4
	.dh	0x762	// for save init
	.dh	0x774	// for save init
	.dh	0x786	// for save init


// Wider max width for Play Time, Library, Trophy, Credits labels on Save screen
.org 0x803BE80
	mov	r4,0x8


.org 0x08052748
	.dw	0x200109B,0xB	// Best subject
	.dw	0x20010A7,0xB	// Worst subject
.org 0x080528C0
	.dw	0x20010B3,0xB	// Wishlist 1
	.dw	0x20010C5,0xB	// Wishlist 2
	.dw	0x20010D7,0xB	// Wishlist 3
