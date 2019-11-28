.align 2
npc_cmdNop:
	add	r6,0x1
	mov	r15,r14



.align 2
npc_withinActiveTime:
	push	r14

	// Get current timestamp
	ldr	r0,=0x806FA59
	mov	r14,r15
	bx	r0

	// Check in specific area
	mov	r2,r10
	ldr	r2,[r2,0x40]
	ldrb	r1,[r2,0x4]

@@checkComps1:
	cmp	r1,0xB1
	bne	@@checkComps2
	ldrb	r1,[r2,0x5]
	cmp	r1,0x0
	beq	@@checkElecStoveComp
	cmp	r1,0x5
	beq	@@checkBrokenRadioComp
	cmp	r1,0xF
	beq	@@checkFridgeComp
	b	@@checkTimeNormal

@@checkElecStoveComp:
	ldrb	r1,[r5,0x10]		// Check NPC ID
	cmp	r1,0x5
	blt	@@checkTimeNormal
	cmp	r1,0x9
	bgt	@@checkTimeNormal
	b	@@checkTimeEverydayTournament

@@checkBrokenRadioComp:
@@checkFridgeComp:
	ldrb	r1,[r5,0x10]		// Check NPC ID
	cmp	r1,0x2
	blt	@@checkTimeNormal
	cmp	r1,0x6
	bgt	@@checkTimeNormal
	b	@@checkTimeEverydayTournament

@@checkComps2:
	cmp	r1,0xB2
	bne	@@checkTimeNormal
	ldrb	r1,[r2,0x5]
	cmp	r1,0x7
	bne	@@checkTimeNormal

@@checkPipeOrganComp:
	ldrb	r1,[r5,0x10]		// Check NPC ID
	cmp	r1,0x4
	blt	@@checkTimeNormal
	cmp	r1,0x8
	bgt	@@checkTimeNormal

@@checkTimeEverydayTournament:
	// Check all time ranges for Everyday Tournament
	lsr	r0,r0,0x8
	cmp	r0,0x9		//  9:00
	blt	@@false
	cmp	r0,0xA		// 10:00
	blt	@@true
	cmp	r0,0xD		// 13:00
	blt	@@false
	cmp	r0,0xE		// 14:00
	blt	@@true
	cmp	r0,0x10		// 16:00
	blt	@@false
	cmp	r0,0x11		// 17:00
	blt	@@true
	cmp	r0,0x14		// 20:00
	blt	@@false
	cmp	r0,0x15		// 21:00
	blt	@@true
	b	@@false

@@checkTimeNormal:
	// Check if before jack in time
	mov	r2,r5
	add	r2,0x90
	ldrh	r1,[r2]
	cmp	r0,r1
	blt	@@false

	// Check if after jack out time
	ldrh	r1,[r2,0x2]
	mov	r3,0x0
	mvn	r3,r3
	lsr	r3,r3,0x10
	cmp	r1,r3
	beq	@@true		// Jack out time not set
	cmp	r0,r1
	bge	@@false

@@true:
	mov	r0,0x1
	pop	r15

@@false:
	mov	r0,0x0
	pop	r15


.align 2
npc_timeConditionalJumpTrue:
	// Set jack in and jack out times
	mov	r4,r5
	add	r4,0x90
	ldrb	r0,[r6,0x2]	// jack in minute
	ldrb	r1,[r6,0x3]	// jack in hour
	strb	r0,[r4]
	strb	r1,[r4,0x1]

	ldrb	r0,[r6,0x4]	// jack out minute
	ldrb	r1,[r6,0x5]	// jack out hour

	// Increment minute by 1
	add	r0,0x1
	cmp	r0,0x3C
	blt	@@setJackOutTime
	mov	r0,0x0
	add	r1,0x1

@@setJackOutTime:
	strb	r0,[r4,0x2]
	strb	r1,[r4,0x3]

	// Do the jump
	add	r0,r6,0x6
	ldr	r1,=0x806FDCF
	mov	r14,r15
	bx	r1
	mov	r6,r0

	// Set jack in marker
	ldrb	r0,[r4,0x9]

	// Check already jacked out or already attempted a jack in
	cmp	r0,0x1
	bne	@@end

	// Change jack in marker
	mov	r1,0x2		// perform jack in at command 0x45
	strb	r1,[r4,0x9]

@@end:
	pop	r15


.align 2
npc_timeConditionalJumpFalse:
	// Check if next command clears the NPC
	ldrb	r0,[r6,0xA]
	cmp	r0,0x3
	bne	@@checkNotTimeConditionalJump

	// Instead of clearing, reset the NPC
	bl	npc_resetNPC

	// Set already jacked out marker
	mov	r1,0x99
	mov	r0,0x1
	strb	r0,[r5,r1]

	// Return 4 levels up
	add	sp,0xC
	pop	r15

@@checkNotTimeConditionalJump:
	// Check if next command is another time-conditional jump
	cmp	r0,0x44
	beq	@@end

	// Set jack out time to start of range
	mov	r2,r5
	add	r2,0x90
	ldrb	r0,[r6,0x2]
	ldrb	r1,[r6,0x3]
	strb	r0,[r2,0x2]
	strb	r1,[r2,0x3]

@@end:
	add	r6,0xA
	pop	r15


.align 2
npc_waitPlayerRadius:
	push	r14

	// Check jack in marker
	mov	r2,r5
	add	r2,0x90
	ldrb	r0,[r2,0x9]
	mov	r1,0x0
	strb	r1,[r2,0x9]

	cmp	r0,0x2
	bne	@@normal

	// Start jack in
	mov	r0,0xC
	strh	r0,[r5,0x8]
	mov	r0,0x0
	strb	r0,[r5,0xA]
	mov	r0,0x17
	ldr	r1,[r5,0x60]
	str	r1,[r2,0x4]
	orr	r1,r0
	str	r1,[r5,0x60]
	ldrb	r0,[r5]
	str	r0,[r2,0x8]
	mov	r1,0x2
	bic	r0,r1
	strb	r0,[r5]

	// Deactivate NPC
	ldr	r0,=0x806FCD5
	mov	r14,r15
	bx	r0

	b	@@end

@@normal:
	ldr	r7,=0x806FA75
	mov	r14,r15
	bx	r7
@@end:
	pop	r15


.align 2
npc_startJackOut:
	push	r0-r7,r14

	ldrb	r0,[r5,0x8]
	cmp	r0,0xC		// Waiting for jack in
	beq	@@end

	// Start the jack out
	mov	r0,0x10
	strh	r0,[r5,0x8]
	mov	r0,0x0
	ldr	r1,=0x806F649
	bx	r1
@@end:
	pop	r0-r7,r15


.align 2
npc_setJackIn:
	strb	r0,[r7]

	// Set jack in marker
	mov	r2,0x99
	ldrb	r1,[r5,r2]
	mov	r0,0x1
	strb	r0,[r5,r2]
	push	r1

	// Check should be jacked in
	ldr	r0,=0x806F5D3
	mov	r14,r15
	bx	r0		// ne = past jackin time, eq = before jackin time
	pop	r0
	beq	@@setJackIn

	// Check already jacked out or already attempted a jack in
	cmp	r0,0x1		// already attempted jack in
	beq	@@setJackIn
	cmp	r0,0x2		// pending jack in
	bne	@@return

@@setJackIn:
	ldr	r0,=0x806F585
	bx	r0

@@return:
	ldr	r0,=0x806F5A9
	bx	r0


.align 2
npc_clearAfterJackOut:
	bl	npc_resetNPC

	// Return 4 levels up
	add	sp,0xC
	pop	r15


.align 2
npc_waitJackOut:
	push	r14

	// Check animation finished
	ldr	r0,=0x8002797
	mov	r14,r15
	bx	r0
	mov	r1,0x80
	tst	r1,r0
	beq	@@end

	// Check if this is after jack out time
	ldr	r0,=0x806F605
	mov	r14,r15
	bx	r0
	beq	@@free

	// Unset jack in flag
	ldrb	r0,[r5,0x3]
	ldr	r1,=0x1EA0
	add	r0,r0,r1
	ldr	r1,=0x8028753
	mov	r14,r15
	bx	r1

	// Unset jack out flag
	ldrb	r0,[r5,0x3]
	ldr	r1,=0x1EC0
	add	r0,r0,r1
	ldr	r1,=0x8028753
	mov	r14,r15
	bx	r1

	// Reset NPC
	bl	npc_resetNPC

	// Set already jacked out marker
	mov	r1,0x99
	mov	r0,0x1
	strb	r0,[r5,r1]
	b	@@end

@@free:
	// Free NPC
	ldr	r0,=0x8003B87
	mov	r14,r15
	bx	r0

@@end:
	pop	r15


.align 2
// r0 = 0
// r1 = NPC index
// r2 = NPC script
npc_resetNPC:
	ldrb	r1,[r5,0x10]
	mov	r2,r10
	ldr	r2,[r2,0x40]
	ldr	r2,[r2,0x34]
	lsl	r0,r1,0x2
	ldr	r2,[r2,r0]
	mov	r0,0x0

	push	r0-r2,r14

	// Fill with 0x7E
	mov	r0,0x4
	add	r0,r0,r5
	mov	r1,0x9C
	mov	r2,0x7E
	ldr	r3,=0x8000991
	mov	r14,r15
	bx	r3

	pop	r0-r2

	// Activate NPC
	strb	r0,[r5,0x1]
	// Set NPC index
	strb	r1,[r5,0x10]
	// Set NPC script
	str	r2,[r5,0x60]

	// Initialize vars
	mov	r0,0x0
	str	r0,[r5,0x8]
	str	r0,[r5,0x54]
	str	r0,[r5,0x5C]
	strb	r0,[r5,0x1F]
	mov	r1,r5
	add	r1,0x80
	str	r0,[r1]
	str	r0,[r1,0xC]

	// Set jacked out marker
	mov	r0,0x1
	strb	r0,[r1,0x19]

@@end:
	pop	r15

	.pool


.align 4
npc_internet3:
	.dw	0x8057968		// NPC00
	.dw	0x80579E9		// NPC01
	.dw	0x8057A1D		// NPC02
	.dw	0x8057AB5		// NPC03
	.dw	0x8057B03		// NPC04
	.dw	npc_internet3_npc05	// NPC05
	.dw	npc_internet3_npc06	// NPC06
	.dw	npc_internet3_npc07	// NPC07
	.dw	0x8057BD6		// NPC08
	.dw	0x8057C07		// NPC09
	.dw	0x8057CCF		// NPC10
	.dw	0x8057D2C		// NPC11
	.dw	0x8057D8E		// NPC12
	.dw	0x8057DF3		// NPC13
	.dw	npc_internet3_npc14	// NPC14
	.dw	0x8057E3C		// NPC15
	.dw	0x8057E44		// NPC16
	.dw	0x8057E4C		// NPC17
	.dw	0x8057E54		// NPC18
	.dw	0x8057E5C		// NPC19
	.dw	0x8057A84		// Unused NPC 3
//	.dw	0x8057C88		// Unused NPC 5 (no text)
	.dw	0x8057CB1		// Unused NPC 6
//	.dw	0x8057CF8		// Unused NPC 7 (no text)
	.dw	0x00000FF

npc_internet3_npc05:
	// Jump if world time range
	.db	0x44,0x04,	00,06,	59,17
	.dw	0x8057A38	// Unused NPC 1
	// Jump
	.db	0x02
	.dw	0x8057B3F	// Old NPC05

npc_internet3_npc06:
	// Jump if world time range
	.db	0x44,0x04,	00,06,	59,17
	.dw	0x8057A5E	// Unused NPC 2
	// Jump
	.db	0x02
	.dw	0x8057B66	// Old NPC06

npc_internet3_npc07:
	// Jump if world time range
	.db	0x44,0x04,	00,18,	59,29
	.dw	0x8057D0E
	// Jump
	.db	0x02
	.dw	0x8057B8D	// Old NPC07

npc_internet3_npc14:
	// Jump if weekday range
	.db	0x3F,0x0C,	1,5
	.dw	0x8057E0E
	// Jump
	.db	0x02
	.dw	0x8057B19	// Unused NPC 4