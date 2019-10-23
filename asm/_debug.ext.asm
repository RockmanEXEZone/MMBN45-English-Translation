.align 2
debug_expireMissionTimer:
	ldr	r0,[r4,0x4]	// get mission timer

	ldrb	r1,[r4,0x1]
	cmp	r1,0x8		// ProtoMan
	beq	@@checkSelect
	cmp	r1,0x18		// ShadowMan
	beq	@@checkSelect
	cmp	r1,0x20		// NumberMan
	beq	@@checkSelect
	cmp	r1,0x28		// MetalMan
	beq	@@checkSelect
	cmp	r1,0x30		// IceMan
	beq	@@checkSelect
	cmp	r1,0x38		// SearchMan
	beq	@@checkSelect
	cmp	r1,0x40		// NapalmMan
	beq	@@checkSelect
	b	@@normal

@@checkSelect:
	mov	r1,r10
	ldr	r1,[r1,0x2C]
	ldrh	r1,[r1,0x22]	// get buttons held
	lsr	r1,r1,0x3	// check Select held
	bcc	@@normal

	sub	r0,r0,r0
	b	@@end

@@normal:
	sub	r0,0x1

@@end:
	bx	r14



.align 2
debug_battleTargetCheats:
	mov	r1,2h
	tst	r0,r1
	beq	@@selectcheck
	mov	r1,r10
	ldr	r0,=802011Dh
	bx	r0

@@selectcheck:
	mov	r1,4h
	tst	r0,r1
	beq	@@lrcheck

	// Set HP of target to 0
	ldr	r1,[r5,28h]
	mov	r0,0h
	strh	r0,[r1,24h]

	b	@@end

@@lrcheck:
	ldr	r1,=8020141h
	bx	r1

@@end:
	ldr	r0,=802014Fh
	bx	r0

	.pool



debug_heartDataNoneCheck:
	push	r14
	ldr	r0,=8066A83h
	mov	r14,r15
	bx	r0
	cmp	r0,0FFh
	beq	@@continue
	ldr	r1,=8050E3Fh
	bx	r1

@@continue:
	add	r4,12h
	mov	r0,1h
	pop	r15

debug_starDataNoneCheck:
	push	r14
	ldr	r0,=8068EA7h
	mov	r14,r15
	bx	r0
	cmp	r0,0FFh
	beq	@@continue
	ldr	r1,=8050E5Bh
	bx	r1

@@continue:
	add	r4,12h
	mov	r0,1h
	pop	r15



debug_debugMenuTrigger:
	push	r4-r7,r14

	ldr	r0,=802EFB3h
	mov	r14,r15
	bx	r0		// check if pressing L allowed
	bne	@@end

	mov	r7,r10
	ldr	r0,[r7,4h]
	ldrh	r0,[r0,2h]	// get new key press

@@checkDebug:
	lsr	r1,r0,2+1
	bcc	@@checkL
	ldr	r0,=@@script
	b	@@start

@@checkL:
	lsr	r1,r0,9+1
	bcc	@@end
	ldr	r0,=806A7FCh

@@start:
	ldr	r3,=802EF09h
	mov	r14,r15
	bx	r3

	mov	r0,0h
	pop	r4-r7,r15

@@end:
	mov	r0,1h
	pop	r4-r7,r15

@@loadTA:
	ldr	r1,=200F970h
	mov	r0,0h
	strb	r0,[r1,16h]

	ldr	r0,=806A544h
	ldr	r0,[r0]		// get pointer to Jack Out text archive
	str	r0,[r5,30h]
	mov	r0,0h
	mov	r15,r14

@@post:
	push	r5,r14

	// Check if text finished
	mov	r1,r10
	ldr	r1,[r1,2Ch]
	ldrb	r0,[r1]
	tst	r0,r0
	beq	@@do
	mov	r0,1h
	pop	r5,r15

@@do:
	ldrb	r0,[r5,4h]
	cmp	r0,1h
	beq	@@doWarp
	b	@@postEnd

@@doWarp:
	// Get index of selected option
	mov	r0,7h
	ldr	r1,=8055409h
	mov	r14,r15
	bx	r1

	// Get warp offset
	ldrb	r1,[r5,5h]
	add	r2,=@@warpoffsets
	ldrb	r2,[r2,r1]
	add	r2,r2,r0
	add	r2,1h

	// Set up warp
	mov	r1,r10
	ldr	r1,[r1,14h]
	mov	r0,1h
	str	r0,[r1,10h]
	strb	r2,[r1,11h]
	add	r0,=@@warps
	str	r0,[r1,14h]

	// Trigger warp
	mov	r5,r10
	ldr	r5,[r5,40h]
	ldr	r1,=8004C10h
	ldr	r0,[r1]
	mov	r14,r15
	bx	r0
	b	@@postEnd

@@postEnd:
	ldr	r1,=200F970h
	mov	r0,0h
	strb	r0,[r1,16h]

	mov	r0,0h
	pop	r5,r15

.pool

@@script:
	.db 0x3C :: .db 0x00			// init text
	.db 0x06				// nop
	.db 0x48 :: .dw @@loadTA|1b		// load text archive 778338 (Jack Out)
	.db 0x37 :: .db 0xFF :: .db 0x2E	// start text 46
	.db 0x48 :: .dw @@post|1b		// handle post stuff
	.db 0x3C :: .db 0x04			// finish text
	.db 0x00				// end

.align 4
@@warpoffsets:
	.db	0	// Internet 1
	.db	8	// Internet 9
	.db	13	// Undernet 1
	.db	19	// Electric Stove Comp
	.db	25	// Golf Course Comp 1
	.db	33	// Toilet Comp 3
	.db	34	// Refrigerator Comp
	.db	40	// Old TV Comp 2
	.db	1	// Internet 2
	.db	6-1	// Internet 6
	.db	7	// Internet 8
	.db	18-1	// Chaos Area 2

.align 4
@@warps:
	// Format: area, subarea, warptype, direction, x, y, z
	.db	0xA0,0x00,0x00,0x01	//  0: Internet 1
	.dw	0xFE9A0000,0x00BA0000,0x00000000
	.db	0xA0,0x01,0x00,0x07	//  1: Internet 2
	.dw	0x002C0000,0x017C0000,0x00000000
	.db	0xA0,0x02,0x00,0x05	//  2: Internet 3
	.dw	0x01AC0000,0xFF7C0000,0x00000000
	.db	0xA0,0x03,0x00,0x07	//  3: Internet 4
	.dw	0xFF2C0000,0x016C0000,0x00000000
	.db	0xA1,0x00,0x00,0x01	//  4: Internet 5
	.dw	0xFE440000,0x00540000,0x00000000
	.db	0xA1,0x01,0x00,0x01	//  5: Internet 6
	.dw	0xFE7C0000,0x002C0000,0x00000000
	.db	0xA1,0x02,0x00,0x03	//  6: Internet 7
	.dw	0x012C0000,0xFEAE0000,0x00000000
	.db	0xA1,0x03,0x00,0x03	//  7: Internet 8
	.dw	0x01840000,0xFED60000,0x00000000
	.db	0xA2,0x00,0x00,0x01	//  8: Internet 9
	.dw	0xFE0C0000,0x008C0000,0x00000000
	.db	0xA2,0x01,0x00,0x01	//  9: Internet 10
	.dw	0xFE840000,0x00040000,0x00000000
	.db	0xA2,0x02,0x00,0x01	// 10: Internet 11
	.dw	0xFF040000,0x01B40000,0x00000000
	.db	0xA2,0x03,0x00,0x01	// 11: Internet 12
	.dw	0xFF5C0000,0xFE8C0000,0x00000000
	.db	0xB0,0x00,0x00,0x01	// 12: Player's HP
	.dw	0xFF2A0000,0xFFFA0000,0x00000000
	.db	0xA3,0x00,0x00,0x01	// 13: Undernet 1
	.dw	0xFF5C0000,0x01DC0000,0x00000000
	.db	0xA3,0x01,0x00,0x07	// 14: Undernet 2
	.dw	0x01940000,0x00540000,0x00400000
	.db	0xA3,0x02,0x00,0x07	// 15: Undernet 3
	.dw	0x00140000,0x01940000,0x00400000
	.db	0xA3,0x03,0x00,0x07	// 16: Undernet 4
	.dw	0xFF240000,0x02440000,0x00400000
	.db	0xA4,0x00,0x00,0x01	// 17: Chaos Area 1
	.dw	0xFDBC0000,0x002C0000,0xFFC00000
	.db	0xA4,0x01,0x00,0x07	// 18: Chaos Area 2
	.dw	0xFFA40000,0x02140000,0xFFC00000
	.db	0xB1,0x00,0x00,0x01	// 19: Electric Stove Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x01,0x00,0x01	// 20: Factory Comp 1
	.dw	0xFF6A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x02,0x00,0x01	// 21: Factory Comp 2
	.dw	0xFE660000,0xFFF60000,0x00000000
	.db	0xB1,0x03,0x00,0x01	// 22: Factory Comp 3
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x04,0x00,0x01	// 23: Toy Box Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x05,0x00,0x01	// 24: Broken Radio Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x06,0x00,0x01	// 25: Golf Course Comp 1
	.dw	0xFF6A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x07,0x00,0x01	// 26: Golf Course Comp 2
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x08,0x00,0x01	// 27: Golf Course Comp 3
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x09,0x00,0x01	// 28: Car Comp 1
	.dw	0xFE660000,0xFFF60000,0x00000000
	.db	0xB1,0x0A,0x00,0x01	// 29: Car Comp 2
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x0B,0x00,0x01	// 30: Mower Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x0C,0x00,0x01	// 31: Toilet Comp 1
	.dw	0xFF6A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x0D,0x00,0x01	// 32: Toilet Comp 2
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x0E,0x00,0x01	// 33: Toilet Comp 3
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB1,0x0F,0x00,0x01	// 34: Refrigerator Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB2,0x00,0x00,0x01	// 35: Factory Comp 4
	.dw	0xFE660000,0xFFF60000,0x00000000
	.db	0xB2,0x01,0x00,0x01	// 36: Urban Ruins Comp 1
	.dw	0xFE660000,0xFFF60000,0x00000000
	.db	0xB2,0x02,0x00,0x01	// 37: Urban Ruins Comp 2
	.dw	0xFE660000,0xFFF60000,0x00000000
	.db	0xB2,0x03,0x00,0x01	// 38: Speaker Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB2,0x04,0x00,0x01	// 39: Old TV Comp 1
	.dw	0xFF6A0000,0xFFFA0000,0x00000000
	.db	0xB2,0x05,0x00,0x01	// 40: Old TV Comp 2
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB2,0x06,0x00,0x01	// 41: Old TV Comp 3
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB2,0x07,0x00,0x01	// 42: Pipe Organ Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
	.db	0xB2,0x08,0x00,0x01	// 43: Urban Ruins Comp 3
	.dw	0xFE660000,0xFFF60000,0x00000000
	.db	0xB2,0x09,0x00,0x01	// 44: Waste Comp
	.dw	0xFE8A0000,0xFFFA0000,0x00000000
