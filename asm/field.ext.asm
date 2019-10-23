.align 2
field_prependUnderscores:
	push	r14

	// Render underscore tile after the normal text
	ldr	r0,=file_7097D8
	mov	r1,0x0
	ldr	r2,=0x203F300
	ldr	r3,=0x600D300
	mov	r4,0x1
	mov	r5,0x1
	ldr	r6,=file_612E38
	mov	r7,0x0
	bl	0x80554A4

	// Fill tilemap with underscores
	ldr	r0,=0xE298
	add	r1,r0,0x1
	ldr	r2,=0x30004A4
	mov	r3,r2
	add	r3,0x40
	mov	r4,0x18
@@loop:
	sub	r4,0x2
	strh	r0,[r2,r4]
	strh	r1,[r3,r4]
	bgt	@@loop

	// Get script index of area name
	bl	0x802CCCC

	pop	r15


.align 2
field_dayOfWeekColor:
	push	r14

	// Get day of week
	bl	0x8006156

	// Get color for day of week
	lsl	r0,r0,0x1
	add	r1,=@@daycolors
	ldrh	r0,[r1,r0]

	// Write color to palette buffer
	ldr	r1,=0x30027C0
	strh	r0,[r1,0x0E]

	ldr	r0,[r7]
	add	r0,r0,r4
	ldr	r1,[r7,0x4]
	mov	r2,0x1

	pop	r15

	.pool

.align 4
@@daycolors:
	.dh	0x7FFE	// Sunday (white, neutral)
	.dh	0x7F5A	// Monday (gray, wind)
	.dh	0x4A3E	// Tuesday (red, fire)
	.dh	0x7E70	// Wednesday (blue, water)
	.dh	0x5793	// Thursday (green, wood)
	.dh	0x43FF	// Friday (yellow, elec)
	.dh	0x7FFE	// Saturday (white, neutral)


.align 4
field_areaNameTilemap:
	.dh	0xE280,0xE282,0xE284,0xE286,0xE288,0xE28A,0xE28C,0xE28E,0xE290,0xE292,0xE294,0xE296
	.dh	0xE281,0xE283,0xE285,0xE287,0xE289,0xE28B,0xE28D,0xE28F,0xE291,0xE293,0xE295,0xE297