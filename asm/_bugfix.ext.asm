.align 2
bugfix_videomanTapeDodgeTarget:
	str	r0,[sp]
	str	r1,[sp,0x4]

	// Check if in multiplayer battle
	ldr	r0,=0x8008533
	mov	r14,r15
	bx	r0
	cmp	r0,0x46
	bge	@@end

	ldr	r0,[sp]
	cmp	r0,0x1
	ble	@@end
	cmp	r0,0x6
	bge	@@end

	push	r4,r6
	mov	r4,r0		// target x
	ldrb	r6,[r5,0x12]	// self x

	ldr	r3,=0x8002C70
	ldr	r2,[r3,0x4]	// memory start
	ldr	r1,[r3]		// flags pointer
	ldr	r1,[r1]		// flags

@@loop:
	lsl	r0,r1,0x1
	bcc	@@next

	// Check if this is a video tape
	ldrb	r0,[r2,0x10+0x1]
	cmp	r0,0x5B
	bne	@@next

	// Get tape x-position
	mov	r0,r2
	add	r0,0x10
	ldrb	r0,[r0,0x12]

	// Check if tape between self and target object
	cmp	r0,r6
	ble	@@next
	cmp	r0,r4
	bgt	@@next

	// Set target x to tape x - 1
	sub	r4,r0,0x1

@@next:
	lsl	r1,r1,0x1
	beq	@@setX
	ldrb	r0,[r3,0xC]
	add	r2,r2,r0
	ldr	r0,[r3,0x8]
	cmp	r2,r0
	blt	@@loop

@@setX:
	mov	r0,r4
	pop	r4,r6
	str	r0,[sp]

@@end:
	ldr	r0,[sp]
	ldr	r1,[sp,0x4]
//	lsl	r1,r1,0x8
//	add	r0,r0,r1
//	ldrh	r1,[r5,0x12]
//	ldr	r2,=0x8027FB5
//	bx	r2
	add	sp,0x8
	pop	r4,r7,r15


.align 2
bugfix_videomanTapeDodgeHitbox:
	push	r0-r1,r14

	// Check if in multiplayer battle
	ldr	r0,=0x8008533
	mov	r14,r15
	bx	r0
	cmp	r0,0x46
	bge	@@end

	ldrb	r2,[r5,0x16]
	tst	r2,r2
	bne	@@end

	ldr	r0,[sp]
	ldr	r1,[sp,0x4]

	// Get collision flags for the panel
	lsl	r1,r1,0x3
	add	r0,r0,r1
	lsl	r0,r0,0x2
	ldr	r1,=0x2033960
	ldr	r2,[r1,r0]

	// Get collision data
	mov	r1,r10
	ldr	r1,[r1,0x30]

@@loop:
	lsl	r2,r2,0x1
	bcs	@@checkCollision
	beq	@@notFound
	b	@@next

@@checkCollision:
	// Check alignment
	ldrb	r0,[r1,0x3]
	tst	r0,r0
	beq	@@next

	// Check parent object is tape
	ldr	r0,[r1,0x60]
	tst	r0,r0
	beq	@@end
	ldrb	r0,[r0,0x1]
	cmp	r0,0x5B
	bne	@@end

@@next:
	add	r1,0x90
	b	@@loop

@@notFound:
	pop	r0-r1
	mov	r0,0x0
	pop	r15

@@end:
	pop	r0-r1

	ldr	r2,=0x800A2E3
	mov	r14,r15
	bx	r2

	ldr	r1,=0x80255CD
	mov	r14,r1

	ldrb	r1,[r5,0x16]
	lsl	r1,r1,0x2
	ldr	r2,=0x80255E0

	bx	r14


.align 2
bugfix_bypassVC:
	push	r14

	ldr	r0,=0x800217D
	mov	r14,r15
	bx	r0

	ldr	r0,=0x80027D7
	mov	r14,r15
	bx	r0

	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x0
	strb	r0,[r5,0x10]

	pop	r15


.align 2
bugfix_bassShootingBusterWindDown:
	ldrb	r0,[r5,0x10]
	cmp	r0,0x13		// Check in Shooting Buster animation
	bne	@@timer

	mov	r0,0x14		// Change to wind down animation
	strb	r0,[r5,0x10]

@@timer:
	ldrh	r0,[r7,0x10]
	cmp	r0,0xA		// Check 10 frames passed
	bne	@@end

	mov	r1,0x0		// Reset animation
	strb	r1,[r5,0x10]

@@end:
	bx	r14


.align 2
bugfix_bassXXCode:
	strb	r0,[r5,0x1]
	mov	r0,0x0
	strb	r0,[r5,0xE]

	mov	r3,r10
	ldr	r0,[r3,0x4]	// buttons
	ldr	r3,[r3,0x70]	// Mod Card effects
	mov	r2,0x0

	// Get button down
	ldrh	r0,[r0]
	mov	r1,0x22		// L+Left
	lsl	r1,r1,0x4
	and	r0,r1
	cmp	r0,r1
	bne	@@end

	mov	r2,0x1

@@end:
	strb	r2,[r3]

	mov	r0,0x67
	ldr	r1,=0x8029015
	bx	r1


.align 2
bugfix_bassXXUpgrade:
	// Fix HeelNavi V1 upgrading in Everyday Tournament 1
	// and not changing color, not matching mugshot anymore.
	cmp	r2,0xCC		// HeelNavi V1
	beq	@@setEnemy

	cmp	r2,0xE5		// Bass Omega
	bne	@@normal

	// Check title screen code active
	mov	r0,r10
	ldr	r0,[r0,0x70]
	ldrb	r0,[r0]
	tst	r0,r0
	beq	@@normal

	mov	r2,0xE6		// Bass XX

@@setEnemy:
	ldr	r0,=0x8049BE1
	add	r0,(0x8049BFD-0x8049BE1)
	bx	r0

@@normal:
	// Calculate Navi level (poorly)
	mov	r1,0x80
	sub	r0,r2,r1
	mov	r1,0x4
	swi	0x6		// Div

	ldr	r0,=0x8049BE1
	bx	r0


.align 2
bugfix_shadowmanAntiNavi1:
	push	r4,r14
	ldr	r0,=0x8093F05

	ldr	r4,[r5,0x4C]
	ldrb	r1,[r4,0xF]
	cmp	r1,0xEC
	blt	@@normal
	cmp	r1,0xEF
	bgt	@@normal

	// Set up warp for ShadowMan
	mov	r1,0x10
	strb	r1,[r5,0x5]
	mov	r1,0x0

	add	r0,(0x8093F17-0x8093F05)
	bx	r0

@@normal:
	tst	r1,r1
	bx	r0


.align 2
bugfix_shadowmanAntiNavi2:
	push	r5

	ldrb	r0,[r4,0xF]
	cmp	r0,0xEC
	blt	@@normal
	cmp	r0,0xEF
	bgt	@@normal

	// Set up palette for ShadowMan
	mov	r0,0x0		// Normal palette
	ldrb	r1,[r4,0x4]	// Check version
	cmp	r1,0x3
	bne	@@end
	mov	r0,0x2		// SP palette
	b	@@end

@@normal:
	mov	r5,r4
	ldr	r0,=0x800C9BD
	mov	r14,r15
	bx	r0

@@end:
	ldr	r1,=0x8093F49
	bx	r1


.align 2
bugfix_shadowmanAntiNavi3:
	strb	r0,[r5,0x11]
	mov	r7,0x60
	add	r7,r7,r5

	// No attachment check for ShadowMan
	ldrb	r0,[r4,0xF]
	cmp	r0,0xEC
	blt	@@normal
	cmp	r0,0xEF
	bgt	@@normal

	mov	r0,0x0
	str	r0,[r7]
	b	@@end

@@normal:
	ldr	r0,=0x800C193
	mov	r14,r15
	bx	r0

@@end:
	ldr	r0,=0x8093F6B
	bx	r0


.align 2
bugfix_shadowmanAntiNavi4:
	ldr	r2,=0x8093F8D

	// No generic warp out for ShadowMan
	ldrb	r1,[r0,0xF]
	cmp	r1,0xEC
	blt	@@normal
	cmp	r1,0xEF
	ble	@@specific

@@normal:
	tst	r1,r1
	bne	@@generic

@@specific:
	mov	r1,0x0
	bx	r2

@@generic:
	add	r2,(0x8093F93-0x8093F8D)
	bx	r2


.align 2
bugfix_shadowmanAntiNavi5:
	// No generic warp in for ShadowMan
	ldrb	r1,[r0,0xF]
	cmp	r1,0xEC
	blt	@@normal
	cmp	r1,0xEF
	ble	@@specific

@@normal:
	tst	r1,r1
	bne	@@generic

@@specific:
	ldr	r1,=0x80ABE11
	mov	r14,r15
	bx	r1
	ldr	r0,=0x8093FBF
	bx	r0

@@generic:
	ldr	r0,=0x8093FBF
	add	r0,(0x8093FC1-0x8093FBF)
	bx	r0


.align 2
bugfix_shadowmanAntiNaviRoll:
	push	r14
	ldr	r0,=0x80083FD
	mov	r14,r15
	bx	r0
	tst	r0,r0
	beq	@@modeBn4

	// Try to get enemy index???
	ldr	r0,[r5,0x64]
	tst	r0,r0
	beq	@@mode45
	sub	r0,0x5
	ldr	r0,[r0,0x3C]
	tst	r0,r0
	beq	@@mode45
	ldrb	r0,[r0,0xF]
	cmp	r0,0xEC
	blt	@@mode45
	cmp	r0,0xEF
	bgt	@@mode45

	// Check if user is player 0
	ldrb	r0,[r5,0x16]
	tst	r0,r0
	beq	@@mode45

@@modeBn4:
	ldr	r0,=0x8085D3F
	bx	r0

@@mode45:
	ldr	r0,=0x8085D3F
	add	r0,(0x8085D45-0x8085D3F)
	bx	r0


	.pool


.align 2
bugfix_replaceType1WithType4Object:
	mov	r7,sp
	stmia	[r7]!,r0-r4

	// Check in 4.5 battle mode
	ldr	r0,=0x80083FD
	mov	r14,r15
	bx	r0
	tst	r0,r0
	beq	@@type1

	// Check if in multiplayer battle
	ldr	r0,=0x8008533
	mov	r14,r15
	bx	r0
	cmp	r0,0x46
	bge	@@type1

	// Change to type 4 object
	ldr	r0,[sp]
	cmp	r0,0x68
	beq	@@obj68

@@checkAttachment:
	cmp	r0,0x5C
	beq	@@obj5C
	cmp	r0,0x57
	beq	@@obj57
	b	@@type1

@@obj68:
	// Check if this is warpin/warpout
	ldr	r0,[sp,0x4]
	cmp	r0,0x1
	bne	@@type1
	mov	r0,0x86
	b	@@type4

@@obj5C:
	// Check if this is warpin/warpout
	ldr	r0,[sp,0x10]
	lsl	r0,r0,0x10
	cmp	r0,0x1
	bne	@@type1
	mov	r0,0x87
	b	@@type4

@@obj57:
	// Check if this is warpin/warpout
	ldr	r0,[sp,0x10]
	lsr	r0,r0,0x10
	cmp	r0,0x1
	bne	@@type1
	mov	r0,0x88

@@type4:
	str	r0,[sp]
	mov	r0,0x4
	b	@@spawnObject

@@type1:
	mov	r0,0x1
@@spawnObject:
	mov	r1,sp
	ldr	r2,=0x8002C9D
	bx	r2


.align 2
bugfix_bassCloakFlipStunned:
	push	r14
	ldrb	r0,[r5,0xA]
	cmp	r0,0x0
	bne	@@state1

@@state0:
	// Get sprite orientation
	ldr	r0,=0x800B541
	mov	r14,r15
	bx	r0

	// Load cloak sprite
	push	r5
	ldr	r5,[r5,0x7C]
	// Set sprite orientation for cloak
	ldr	r1,=0x80028EF
	mov	r14,r15
	bx	r1
	pop	r5

@@state1:
	// Call regular stunned function
	ldr	r0,=0x8088F33
	mov	r14,r15
	bx	r0

	pop	r15


.align 2
bugfix_bassCloakFlipParalyzed:
	push	r14
	ldrb	r0,[r5,0xB]
	tst	r0,r0
	bne	@@state1
@@state0:
	// Get sprite orientation
	ldr	r0,=0x800B541
	mov	r14,r15
	bx	r0

	// Load cloak sprite
	push	r5
	ldr	r5,[r5,0x7C]
	// Set sprite orientation for cloak
	ldr	r1,=0x80028EF
	mov	r14,r15
	bx	r1
	pop	r5

	// Reset flip states
	mov	r0,0x0
	strb	r0,[r5,0x5]
	str	r0,[r5,0x78]

@@state1:
	// Call regular paralyzed function
	ldr	r0,=0x8011949
	mov	r14,r15
	bx	r0

	pop	r15


.align 2
bugfix_protomanSwordTiming:
	push	r0,r1
	ldrb	r0,[r7,0x1]
	tst	r0,r0
	bne	@@waitSpawnSword

	// Change animation
	mov	r0,0x5
	strb	r0,[r5,0x10]
	// Start counter frames
	mov	r0,0xA
	ldr	r1,=0x800B885
	mov	r14,r15
	bx	r1
	// Start SFX
	mov	r0,0x8E
	ldr	r1,=0x8000535
	mov	r14,r15
	bx	r1

	// Spawn sword hilt
	push	r7
	ldr	r0,=0x8094A73
	mov	r14,r0
	mov	r0,0x7
	ldrb	r4,[r5,0x4]
	cmp	r4,0x3
	bne	@@spawnHilt
	mov	r0,0x17		// New ProtoMan Omega sword animation
@@spawnHilt:
	lsl	r0,r0,0x8
	mov	r4,0x3
	add	r4,r4,r0
	mov	r7,0x4C
	add	r7,r7,r5
	bl	r14
	pop	r7

@@waitSpawnSword:
	ldrb	r0,[r7,0x1]
	add	r0,0x1
	strb	r0,[r7,0x1]
	cmp	r0,0xA
	beq	@@spawnSword
	bgt	@@waitAnimationFinish
	add	sp,0x8
	pop	r15

@@spawnSword:
	ldr	r0,[sp]
	ldr	r1,=0x80BBF37
	mov	r14,r15
	bx	r1

@@waitAnimationFinish:
	add	sp,0x4
	pop	r15


.align 2
bugfix_protomanChipSpawns:
	push	r14

	ldr	r1,=bugfix_protomanChipSpawnHilt|1

	ldrh	r0,[r5,0x20]
	cmp	r0,0x14
	beq	@@doJump
	cmp	r0,0x9
	bne	@@subtract

	add	r1,(bugfix_protomanChipSpawnSlash - bugfix_protomanChipSpawnHilt)
@@doJump:
	mov	r14,r15
	bx	r1

@@subtract:
	ldrh	r0,[r5,0x20]
	sub	r0,0x1
	strh	r0,[r5,0x20]

	pop	r15


.align 2
bugfix_extraSwords:
	cmp	r0,0x74
	blt	@@end
	sub	r0,0x74
	lsl	r1,r0,0x2
	ldr	r7,=@@swordData

@@end:
	add	r7,r7,r1
	ldrb	r1,[r7]
	ldrb	r2,[r7,0x1]
	mov	r0,0x80

	ldr	r3,=0x80AA829
	bx	r3

@@swordData:
	.db	0x0C,0x14,0x00,0x03	// DashElecSword


.align 2
bugfix_videomanStockFootage:
	// Check for screen dim
	ldr	r0,=0x8007E7D
	mov	r14,r15
	bx	r0
	bne	@@end

	// Normal Stock Footage AI
	ldr	r0,=0x8007F47
	mov	r14,r15
	bx	r0
	tst	r0,r0
	bne	@@destroy

	ldr	r0,=0x80942F1
	bx	r0

@@end:
	// Return 2 levels
	pop	r7
	add	sp,0x4
	pop	r15

@@destroy:
	ldr	r0,=0x80942F1
	add	r0,(0x8094315-0x80942F1)
	bx	r0


.align 2
bugfix_burnermanHeatChaserDestroy:
	push	r14

	ldr	r3,=0x8002C70
	ldr	r2,[r3,0x4]	// memory start
	ldr	r1,[r3]		// flags pointer
	ldr	r1,[r1]		// flags

@@loop:
	lsl	r0,r1,0x1
	bcc	@@next

	// Check if this is a burner hitbox
	ldrb	r0,[r2,0x10+0x1]
	cmp	r0,0x7C
	bne	@@next

	// Check if parent reference matches
	ldr	r0,[r2,0x10+0x4C]
	cmp	r0,r5
	bne	@@next

	// Set state to destroy
	mov	r0,0x8
	strb	r0,[r2,0x10+0x8]

@@next:
	lsl	r1,r1,0x1
	beq	@@end
	ldrb	r0,[r3,0xC]
	add	r2,r2,r0
	ldr	r0,[r3,0x8]
	cmp	r2,r0
	blt	@@loop

@@end:
	// Destroy self
	ldr	r0,=0x809BAE1
	mov	r14,r15
	bx	r0

	pop	r15


.align 2
bugfix_windmanMinigameForceHPMemory:
	push	r14

	// Count number of missions cleared
	ldr	r0,=0x20040F0
	ldr	r0,[r0,0x10]
	mov	r1,0x0
	tst	r0,r0
@@loop:
	beq	@@checkHP
	lsr	r0,r0,0x1
	bcc	@@loop
	add	r1,0x1
	cmp	r1,0x12
	blt	@@loop

@@checkHP:
	// Get HP you SHOULD have
	mov	r0,0x32
	mul	r1,r0
	add	r1,0x64

	// Get max HP
	mov	r0,r10
	ldr	r0,[r0,0x44]
	ldrh	r0,[r0,0x16]

	cmp	r0,r1
	blt	@@true

	// Check incomplete missions
	mov	r0,r6
	ldr	r1,=0x80DE6B5
	mov	r14,r15
	bx	r1
	beq	@@false

	// Check this mission not cleared yet
	ldr	r0,=0x80DE6CD
	mov	r14,r15
	bx	r0
	bne	@@false

@@true:
	mov	r0,0x1
	b	@@end
@@false:
	mov	r0,0x0
@@end:
	tst	r0,r0
	pop	r15


.align 2
bugfix_checkLastUpdateTime:
	cmp	r1,0x18
	blt	@@next
	sub	r1,0x18
@@next:
	ldrb	r2,[r5,0x4]
	lsl	r1,r1,0x8
	orr	r1,r2

	// Return if curDate < lastDate,
	// or curDate = lastDate and curTime < lastTime
	cmp	r4,r0
	blt	@@return
	bgt	@@continue
	cmp	r6,r1
	bge	@@continue

@@return:
	pop	r4-r7,r15

@@continue:
	ldr	r0,=0x802E387
	bx	r0


.align 2
bugfix_checkNextUpdateTime:
	ldrb	r1,[r5,0x9]
	cmp	r1,0x18
	blt	@@next
	sub	r1,0x18
@@next:
	ldrb	r2,[r5,0xA]
	lsl	r1,r1,0x8
	orr	r1,r2

	// Return if curDate > nextDate,
	// or curDate = nextDate and curTime > nextTime
	cmp	r4,r0
	bgt	@@return
	blt	@@continue
	cmp	r6,r1
	ble	@@continue

@@return:
	pop	r4-r7,r15

@@continue:
	ldr	r0,=0x802E387
	add	r0,(0x802E3A5-0x802E387)
	bx	r0


.align 2
bugfix_monthSet:
	push	r14

	lsl	r1,r1,0x18
	asr	r1,r1,0x18
	ldrb	r2,[r0,0x1]

	add	r2,r2,r1
	bne	@@checkMax
	mov	r2,0xC
@@checkMax:
	cmp	r2,0xC
	ble	@@storeMonth
	mov	r2,0x1
@@storeMonth:
	strb	r2,[r0,0x1]

	bl	@updateDay
	pop	r15

bugfix_yearSet:
	push	r14
	lsl	r1,r1,0x18
	asr	r1,r1,0x18
	ldrb	r2,[r0]

	add	r2,r2,r1
	bpl	@@checkMax
	mov	r2,0x63
@@checkMax:
	cmp	r2,0x63
	ble	@@storeYear
	mov	r2,0x0
@@storeYear:
	strb	r2,[r0]

	bl	@updateDay
	pop	r15

@updateDay:
	// Get number of days in month
	push	r0,r14
	ldr	r1,=0x800644F
	mov	r14,r1
	bl	r14
	mov	r1,r0
	pop	r0

	// Set to max day number if exceeded
	ldrb	r2,[r0,0x2]
	cmp	r2,r1
	ble	@@end
	strb	r1,[r0,0x2]
@@end:
	pop	r15


.align 2
bugfix_worldTimePrevDay:
	pop	r1,r2
	sub	r2,0x1		// day - 1
	bgt	@@end
	// first day, go to prev month
	sub	r1,0x1		// month - 1
	bgt	@@getMaxDays
	// first month, go to prev year
	mov	r1,0xC		// set month 12
	mov	r2,0x1F		// set day 31
	sub	r0,0x1		// year - 1
	bge	@@end
	// first year, set to 1/1/2000
	mov	r0,0x0
	mov	r1,0x1
	mov	r2,0x1

@@getMaxDays:
	sub	r2,r1,0x1
	ldrb	r2,[r7,r2]

@@end:
	mov	r15,r14


.align 2
bugfix_equipmentScreenFadeIn:
	ldr	r0,=0x803C289
	b	@delayFadeInBy1Frame

bugfix_mailScreenFadeIn:
	ldr	r0,=0x8040D91
	b	@delayFadeInBy1Frame

bugfix_commScreenFadeIn:
	ldr	r0,=0x80440ED

@delayFadeInBy1Frame:
	push	r0,r14

	// Check substate
	ldrb	r0,[r5,0x2]
	tst	r0,r0
	bne	@@state1

@@state0:
	mov	r1,0xC	// avoids wrong title in Comm menu
	strb	r1,[r5,0x2]

	// Start fade-in
	mov	r0,0x8	// r1 = 0xC
	ldr	r2,=0x8005425
	mov	r14,r15
	bx	r2

@@state1:
	pop	r0
	mov	r14,r15
	bx	r0

	pop	r15

.align 2
bugfix_commScreenFadeIn2:
	push	r14
	strh	r1,[r0,0x18]
	strh	r1,[r0,0x1A]

	ldrb	r0,[r5,0x1]
	cmp	r0,0x4
	beq	@@end

	mov	r0,0x8
	mov	r1,0xC
	ldr	r2,=0x8005425
	mov	r14,r15
	bx	r2

@@end:
	pop	r15


.align 2
bugfix_delayWorldUpdateAfterBattle:
	mov	r0,0x1E
	mov	r1,0x1D
	ldr	r2,=0x802871F
	mov	r14,r15
	bx	r2

	// Check if pending battle transition
	mov	r0,0x7
	mov	r1,0xE
	ldr	r2,=0x80287AF
	mov	r14,r15
	bx	r2
	beq	@@end

	// Disable world update
	ldr	r0,=0x802E345
	add	r0,(0x802E3A5-0x802E345)
	bx	r0

@@end:
	ldr	r0,=0x802E345
	bx	r0


	.pool

@windmanHPThresholds:
	.dh	 250
	.dh	 500
	.dh	1000

.align 4
bugfix_type4ObjectList:
	.dw	0x80AA7F8|1	// 0x00
	.dw	0x80AA8A4	// 0x01
	.dw	0x80AA8A4|1	// 0x02
	.dw	0x80AAF08|1	// 0x03
	.dw	0x80AB068|1	// 0x04
	.dw	0x80AB100|1	// 0x05
	.dw	0x80AB288|1	// 0x06
	.dw	0x80AB428|1	// 0x07
	.dw	0x80AB6A8|1	// 0x08
	.dw	0x80AB950|1	// 0x09
	.dw	0x80ABA54|1	// 0x0A
	.dw	0x80ABB90|1	// 0x0B
	.dw	0x80ABC60|1	// 0x0C
	.dw	0x80ABF14|1	// 0x0D
	.dw	0x80AC040|1	// 0x0E
	.dw	0x80AC110|1	// 0x0F
	.dw	0x80AC23C|1	// 0x10
	.dw	0x80AC37C|1	// 0x11
	.dw	0x80AC434|1	// 0x12
	.dw	0x80AC668|1	// 0x13
	.dw	0x80AC844|1	// 0x14
	.dw	0x80AC8D4|1	// 0x15
	.dw	0x80AC9A4|1	// 0x16
	.dw	0x80ACAE4|1	// 0x17
	.dw	0x80ACB34|1	// 0x18
	.dw	0x80ACC04|1	// 0x19
	.dw	0x80ACD30|1	// 0x1A
	.dw	0x80ACEA0|1	// 0x1B
	.dw	0x80ACFA8|1	// 0x1C
	.dw	0x80AD0E8|1	// 0x1D
	.dw	0x80AD1C0|1	// 0x1E
	.dw	0x80AD430|1	// 0x1F
	.dw	0x80AD660|1	// 0x20
	.dw	0x80AD6F4|1	// 0x21
	.dw	0x80AD828|1	// 0x22
	.dw	0x80AD9C4|1	// 0x23
	.dw	0x80ADAE2|1	// 0x24
	.dw	0x80ADBAC|1	// 0x25
	.dw	0x80ADC60|1	// 0x26
	.dw	0x80ADD14|1	// 0x27
	.dw	0x80AE034|1	// 0x28
	.dw	0x80AE114|1	// 0x29
	.dw	0x80AE1A8|1	// 0x2A
	.dw	0x80AE294|1	// 0x2B
	.dw	0x80AE470|1	// 0x2C
	.dw	0x80AE53C|1	// 0x2D
	.dw	0x80AE664|1	// 0x2E
	.dw	0x80AE81C|1	// 0x2F
	.dw	0x80AE8D4|1	// 0x30
	.dw	0x80AE9A0|1	// 0x31
	.dw	0x80AEC78|1	// 0x32
	.dw	0x80AED1C|1	// 0x33
	.dw	0x80AEDB8|1	// 0x34
	.dw	0x80AEF60|1	// 0x35
	.dw	0x80AF030|1	// 0x36
	.dw	0x80AF25C|1	// 0x37
	.dw	0x80AF300|1	// 0x38
	.dw	0x80AF3DC|1	// 0x39
	.dw	0x80AF470|1	// 0x3A
	.dw	0x80AF538|1	// 0x3B
	.dw	0x80AF61C|1	// 0x3C
	.dw	0x80AF620|1	// 0x3D
	.dw	0x80AF6AC|1	// 0x3E
	.dw	0x80AF7E4|1	// 0x3F
	.dw	0x80AF91C|1	// 0x40
	.dw	0x80AFA38|1	// 0x41
	.dw	0x80AFC40|1	// 0x42
	.dw	0x80AFD6C|1	// 0x43
	.dw	0x80AFF9C|1	// 0x44
	.dw	0x80B0090	// 0x45
	.dw	0x80B0090|1	// 0x46
	.dw	0x80B01BC|1	// 0x47
	.dw	0x80B035C|1	// 0x48
	.dw	0x80B046C|1	// 0x49
	.dw	0x80B0538|1	// 0x4A
	.dw	0x80B0604|1	// 0x4B
	.dw	0x80B0708|1	// 0x4C
	.dw	0x80B0944|1	// 0x4D
	.dw	0x80B0A10|1	// 0x4E
	.dw	0x80B0BE0|1	// 0x4F
	.dw	0x80B0E18|1	// 0x50
	.dw	0x80B0F08|1	// 0x51
	.dw	0x80B10F8|1	// 0x52
	.dw	0x80B11AC|1	// 0x53
	.dw	0x80B123C|1	// 0x54
	.dw	0x80B1314|1	// 0x55
	.dw	0x80B13EC|1	// 0x56
	.dw	0x80B14AC|1	// 0x57
	.dw	0x80B1620|1	// 0x58
	.dw	0x80B16BC|1	// 0x59
	.dw	0x80B175C|1	// 0x5A
	.dw	0x80B1884|1	// 0x5B
	.dw	0x80B19AC|1	// 0x5C
	.dw	0x80B1CB0|1	// 0x5D
	.dw	0x80B1D44|1	// 0x5E
	.dw	0x80B1DF0|1	// 0x5F
	.dw	0x80B1EC0|1	// 0x60
	.dw	0x80B1F5C|1	// 0x61
	.dw	0x80B20C4|1	// 0x62
	.dw	0x80B21E8|1	// 0x63
	.dw	0x80B2314|1	// 0x64
	.dw	0x80B2448|1	// 0x65
	.dw	0x80B2644|1	// 0x66
	.dw	0x80B2714|1	// 0x67
	.dw	0x80B2868|1	// 0x68
	.dw	0x80B2994|1	// 0x69
	.dw	0x80B2AC0|1	// 0x6A
	.dw	0x80B2B68|1	// 0x6B
	.dw	0x80B2C24|1	// 0x6C
	.dw	0x80B2CD8|1	// 0x6D
	.dw	0x80B2D68|1	// 0x6E
	.dw	0x80B2EBC|1	// 0x6F
	.dw	0x80B3068|1	// 0x70
	.dw	0x80B3138|1	// 0x71
	.dw	0x80B32E8|1	// 0x72
	.dw	0x80B33C8|1	// 0x73
	.dw	0x80B3548|1	// 0x74
	.dw	0x80B3684|1	// 0x75
	.dw	0x80B3754|1	// 0x76
	.dw	0x80B3824|1	// 0x77
	.dw	0x80B38F4|1	// 0x78
	.dw	0x0000000	// 0x79
	.dw	0x80B3A54|1	// 0x7A
	.dw	0x80B3BDC|1	// 0x7B
	.dw	0x80B3CAC|1	// 0x7C
	.dw	0x80B3D4C|1	// 0x7D
	.dw	0x80B3D50|1	// 0x7E
	.dw	0x80B3DEC|1	// 0x7F
	.dw	0x80B3EA8|1	// 0x80
	.dw	0x80B3F48|1	// 0x81
	.dw	0x80B3FFC|1	// 0x82
	.dw	0x80B4140|1	// 0x83
	.dw	0x80B4208|1	// 0x84
	.dw	0x80B4330|1	// 0x85
	// New objects
	.dw	0x8093EDC|1	// 0x86, 4.5 warp in/out
	.dw	0x809129C|1	// 0x87, Wind/Aqua warp
	.dw	0x809091C|1	// 0x88, Fire/Wood/Knight/Bass warp