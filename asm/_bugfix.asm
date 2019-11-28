// QOL improvements
//.org 0x80068DC	// Respawn Heart/Star Data when date changes,
//			// but this removes Fortune effect.
//			// Taken from Virtual Console.
//	bl	0x80668A8	// Spawn Heart Data
//	bl	0x8068CCC	// Spawn Star Data

.org 0x80255A8
	ldr	r2,=bugfix_videomanTapeDodgeTarget|1
	bx	r2
.org 0x80255C0
	ldr	r2,=bugfix_videomanTapeDodgeHitbox|1
	bx	r2
	.pool

.org 0x802DAB4	// Let ghost Navis spawn without jacking out
.area 0x6C,0x00
	push	r4-r7,r14
	bl	0x802EFB2
	bne	@@end

	// Check if on spawn tile
	mov	r7,r10
	ldr	r7,[r7,0x40]
	ldr	r0,[r7,0x28]
	add	r0,0x24
	bl	0x802B12A

	mov	r6,r0
	cmp	r6,0xD0
	blt	@@unset
	cmp	r6,0xEF
	bgt	@@unset

	ldr	r4,[0x802DB20]
	ldr	r5,[0x802DB5C]
@@loop:
	ldrh	r0,[r4]
	tst	r0,r0
	beq	@@unset
	cmp	r0,r6
	bne	@@next

	// Found the ghost data
	// Check should be active
	ldrh	r0,[r4,0x4]
	bl	0x80287A0
	beq	@@unset
	// Check already started
	ldrh	r0,[r4,0x2]
	bl	0x80287A0
	bne	@@unset

	mov	r0,0x1E
	mov	r1,0x39
	bl	0x80287AE
	bne	@@end

	// Start the battle
	// Set started
	ldrh	r0,[r4,0x2]
	bl	0x8028710
	ldrh	r0,[r4,0x6]
	bl	0x8028710
	// Start battle
	ldr	r0,[0x802DB78]
	ldr	r1,[r5]
	bl	0x802EF08
	b	@@end
@@next:
	add	r4,0x8
	add	r5,0x4
	b	@@loop

@@unset:
	// Remove the ghost disable flag
	mov	r0,0x1E
	mov	r1,0x39
	bl	0x802874E

@@end:
	pop	r4-r7,r15
.endarea


.org 0x80C0BDA	// Playable Bass uses proper animation for Shooting Buster
	mov	r0,0x13		// New animation
.org 0x80C0C4C
.area 0xC
	ldr	r0,=bugfix_bassShootingBusterWindDown|1
	mov	r14,r0
	bl	r14
	b	@@end
	.pool
@@end:
.endarea
.org 0x80C0D3E
	mov	r4,0x14		// Shot effect x-offset
.org 0x80C0D4C
	mov	r0,0x22		// Shot effect y-offset

.org 0x802900C	// Bass XX title screen code
.area 0x8
	ldr	r1,=bugfix_bassXXCode|1
	bx	r1
	.pool
.endarea

.org 0x8049BD8	// Bass Omega -> XX upgrade
.area 0x8
	ldr	r1,=bugfix_bassXXUpgrade|1
	bx	r1
	.pool
.endarea

.org 0x8006546	// Set max year to 2099 instead of 2050
	mov	r2,0x63
	cmp	r2,0x63

.org 0x804B334	// Use unused Under BBS label
	.dw	(VAR_JP ? 0x86FFDAC : file_6FFDAC)


// Major bugs
// Some also fixed in Virtual Console, but those fixes aren't perfect,
// so we're bypassing them.
.org 0x8035984	// PET screen day icon copy bug
	mov	r2,0x40

.org 0x8040512	// E-Mail screen crash when you press A+B
	mov	r0,0x0
	strb	r0,[r5,0x3]
	mov	r0,0xC
	strb	r0,[r5,0x2]

.org 0x8037350	// Random crash on scene transition
	ldr	r1,[r7]
	add	sp,0x10

.org 0x804FC04	// Text box palette copy bug
	mov	r2,0x20

.org 0x807DB5C	// NumberMan MegaChip freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x0
	strb	r0,[r5,0x10]

.org 0x807E658	// FireMan freeze bug
	ldr	r0,=bugfix_bypassVC|1
	mov	r14,r15
	bx	r0
	b	0x807E668
	.pool

.org 0x807ED58	// GutsMan MegaChip freeze bug
	ldr	r0,=bugfix_bypassVC|1
	mov	r14,r15
	bx	r0
	b	0x807ED68
	.pool

.org 0x8080344	// AquaMan MegaChip freeze bug
	ldr	r0,=bugfix_bypassVC|1
	mov	r14,r15
	bx	r0
	b	0x8080354
	.pool

.org 0x8088560	// WindMan freeze bug
	ldr	r0,=bugfix_bypassVC|1
	mov	r14,r15
	bx	r0
	b	0x8088570
	.pool

.org 0x808CD04	// ??? freeze bug
	ldr	r0,=bugfix_bypassVC|1
	mov	r14,r15
	bx	r0
	b	0x808CD14
	.pool

.org 0x808D334	// ??? freeze bug
	ldr	r0,=bugfix_bypassVC|1
	mov	r14,r15
	bx	r0
	b	0x808D344
	.pool

.org 0x808D5D0	// ??? freeze bug
	ldr	r0,=bugfix_bypassVC|1
	mov	r14,r15
	bx	r0
	b	0x808D5E0
	.pool

.org 0x80994E8	// ??? freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0xB
	strb	r0,[r5,0x10]

.org 0x809E334	// ??? freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x1
	strb	r0,[r5,0x10]

.org 0x80A2DE4	// ??? freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x5
	strb	r0,[r5,0x10]

.org 0x80A3850	// ??? freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x0
	strb	r0,[r5,0x10]

.org 0x80A4150	// ??? freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x0
	strb	r0,[r5,0x10]

.org 0x80A50C0	// CircGun freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x1
	strb	r0,[r5,0x10]

.org 0x80A6018	// ??? freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x0
	strb	r0,[r5,0x10]

.org 0x80A61CC	// GreenWood freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	ldrb	r0,[r7,0x2]
	strb	r0,[r5,0x10]

.org 0x80A6E88	// ??? freeze bug
	mov	r0,0xFF
	strb	r0,[r5,0x11]
	mov	r0,0x0
	strb	r0,[r5,0x10]

.org 0x8097B42	// GutsMan desync in EXE4 battle
	tst	r0,r0

.org 0x8034D2A	// text input scroll out graphical error
	cmp	r7,0x1F

.org 0x80769DC	// broken clock tree crash
	mov	r4,0x1
.org 0x8076A0E
	sub	r1,r0,0x1
	bmi	0x8076A2E
	ldr	r0,[0x8076A30]
	ldrb	r4,[r0,r1]
	cmp	r4,0xFF
	bne	0x8076A2C

.org 0x80B021C	// Bass XX afterimage palette
	mov	r0,0x9

.org 0x80D5F40	// Chip Trader color glitch
	beq	0x80D5F74
.org 0x80D5F74
	mov	r0,r10
	ldr	r0,[r0,0x2C]	
	ldr	r0,[r0,0x4C]
	bl	0x801A894
	ldrb	r0,[r0,0x8]
	strb	r0,[r7,0x4]
	bl	0x800219C
	pop	r15

.org 0x803A7E8	// Day of month set glitch
	.dw	bugfix_monthSet|1
.org 0x803A7F0
	.dw	bugfix_yearSet|1

.org 0x80B2404	// Remove Navi reappear SFX for GutPunch
	b	0x80B240A

.org 0x802E2E4	// Fix world time on 1/1, 0:00-5:59 setting year to 2001
	ldr	r1,=bugfix_worldTimePrevDay|1
	mov	r14,r15
	bx	r1
	b	0x802E2FA
	.pool

.org 0x80497EC	// Tournament finalist RNG bug
	lsl	r2,r0,0x1F
	lsr	r2,r2,0x1F

// Fixed tournament win rates table
.org 0x804A072	// Bass
	.db	16,  8, 16, 16, 16, 16, 16, 16, 16, 16
.org 0x804A05E	// Finalist
	.db	14,  0,  8,  2, 14, 14, 14, 14, 14, 14
.org 0x804A068	// ShadowMan
	.db	16,  0, 14,  8, 16, 16, 16, 16, 16, 16
.org 0x804A02C	// Null
	.db	 8,  0,  2,  0,  8,  6,  6,  6,  6, 14
.org 0x804A036	// Fire
	.db	10,  0,  2,  0, 10,  8,  8,  3, 13, 14
.org 0x804A04A	// Elec
	.db	10,  0,  2,  0, 10,  8,  8, 13,  3, 14
.org 0x804A040	// Aqua
	.db	10,  0,  2,  0, 10, 13,  3,  8,  8, 14
.org 0x804A054	// Wood
	.db	10,  0,  2,  0, 10,  3, 13,  8,  8, 14
.org 0x804A07C	// NormalNavi/HeelNavi
	.db	 2,  0,  2,  0,  2,  2,  2,  2,  2,  8

.org 0x8088EFC	// Bass backwards cloak glitch
	.dw	bugfix_bassCloakFlipStunned|1
.org 0x8088F00
	.dw	bugfix_bassCloakFlipParalyzed|1

.org 0x807135A	// Internet 9 Purple Mystery Data out-of-bounds clip
	.dh	0x0114	// from 0x011C
	.dh	0xFF8C	// from 0xFF84

.org 0x8073130	// Golf Course Comp 2 Purple Mystery Data out-of-bounds clip
	.dh	0xFF9C	// from 0xFF96

.org 0x8093EFC	// ShadowMan AntiNavi warp bug
	ldr	r0,=bugfix_shadowmanAntiNavi1|1
	bx	r0
	.pool
.org 0x8093F40
	ldr	r0,=bugfix_shadowmanAntiNavi2|1
	bx	r0
	.pool
.org 0x8093F60
	ldr	r1,=bugfix_shadowmanAntiNavi3|1
	bx	r1
	.pool
.org 0x8093F84
	ldr	r1,=bugfix_shadowmanAntiNavi4|1
	bx	r1
	.pool
.org 0x8093FB4
	ldr	r1,=bugfix_shadowmanAntiNavi5|1
	bx	r1
	.pool

.org 0x8085D34	// ShadowMan AntiNavi Roll never targets player
	ldr	r0,=bugfix_shadowmanAntiNaviRoll|1
	bx	r0
	.pool

.org 0x80BBCF4	// ProtoMan sword comes out too early
	cmp	r0,0x1
.org 0x80BBD52
	mov	r0,0x0
	add	r1,=0x80BBD68
	add	r1,0x1
	ldr	r2,=bugfix_protomanSwordTiming|1
	bx	r2
	.pool
.org 0x80BBF4C
	b	0x80BBF62
.org 0x80BBFC2
	b	0x80BBFC8
.org 0x80BC0BE
	cmp	r0,0x1
.org 0x80BC0F4
	mov	r0,0x1
	add	r1,=0x80BC108
	add	r1,0x3
	ldr	r2,=bugfix_protomanSwordTiming|1
	bx	r2
	.pool


.org 0x808B984	// ProtoMan/DeltaRay sword comes out too early
	bne	@bugfix_protomanChipState1
.org 0x808B992
	mov	r0,0x4
	strb	r0,[r5,0xB]
	b	0x808B9AE
@bugfix_protomanChipState1:
	ldr	r0,=bugfix_protomanChipSpawns|1
	mov	r14,r15
	bx	r0
	b	0x808B9A4
	.pool
.org 0x808BD92	// DeltaRay sword comes out too early
	bne	@bugfix_deltarayChipState1
.org 0x808BDA0
	mov	r0,0x4
	strb	r0,[r5,0xB]
	b	0x808BDD4
@bugfix_deltarayChipState1:
	ldrh	r0,[r5,0x20]
	cmp	r0,0x5
	ble	@@timer
	// Check command code
	bl	0x808BEB0
	beq	@@timer
	mov	r0,0x1
	strb	r0,[r7,0x19]
@@timer:
	ldr	r0,=bugfix_protomanChipSpawns|1
	mov	r14,r15
	bx	r0
	b	0x808BDCA
	.pool
.org 0x808B9EA	// Split into 2 functions
.area 0x56
bugfix_protomanChipSpawnHilt:
	push	r4,r7,r14

	// Load chip subtype
	ldrb	r6,[r5,0x4]

	// Spawn sword hilt
	ldr	r4,[0x808BA44]
	mov	r7,0x4C
	add	r7,r7,r5
	bl	0x8094A72

	// Set ProtoMan Omega animation
	cmp	r6,0x3
	blt	@@sfx
	mov	r1,(0x17 - 0x3)
	add	r1,r1,r6
	strb	r1,[r0,0x5]

@@sfx:
	// Play SFX
	mov	r0,0x8E
	bl	0x8000534

	pop	r4,r7,r15

bugfix_protomanChipSpawnSlash:
	push	r4,r6-r7,r14

	// Get coordinates
	ldr	r0,[r5,0x6C]
	bl	0x800B3E6
	ldrb	r1,[r5,0x12]
	add	r0,r0,r1
	ldrb	r1,[r5,0x13]

	// Spawn hitbox
	mov	r3,0x10
	lsl	r3,r3,0x10
	push	r0,r1,r3
	ldr	r4,[0x808BA40]
	ldr	r6,[r5,0x2C]
	mov	r7,0x3
	mov	r2,0x0
	bl	0x8094BAE
	pop	r0,r1,r3

	// Spawn slash
	bl	0x800B39A
	mov	r2,r1
	mov	r1,r0
	ldr	r4,[r5,0x6C]
	lsl	r4,r4,0x8
	add	r4,0x5E
	bl	0x80AA892

	pop	r4,r6-r7,r15
.endarea


.org 0x808D43C	// HawkCut comes out too early
.area 0x22,0x00
	bne	@@state1

	// Start swing animation
	mov	r0,0x5
	strb	r0,[r5,0x10]
	mov	r0,0xFF
	strb	r0,[r5,0x11]

	// Start timer
	mov	r0,0x14
	strh	r0,[r5,0x20]

	// Play SFX
	mov	r0,0x8E
	bl	0x8000534

	// Set state
	mov	r0,0x4
	strb	r0,[r5,0xB]

@@state1:
	ldrh	r0,[r5,0x20]
	cmp	r0,0x13
	ldr	r1,=bugfix_hawkCut1|1
	mov	r14,r15		// doesn't update flags
	bx	r1
.endarea
.org 0x808D460
	cmp	r0,0xA		// timing for slash effect
.org 0x808D4AC
.area 0x4
	.pool
.endarea
.org 0x808D4BA
.area 0x22,0x00
	bne	@@state1

	// Start swing animation
	mov	r0,0x5
	strb	r0,[r5,0x10]
	mov	r0,0xFF
	strb	r0,[r5,0x11]

	// Start timer
	mov	r0,0x14
	strh	r0,[r5,0x20]

	// Play SFX
	mov	r0,0x8E
	bl	0x8000534

	// Set state
	mov	r0,0x4
	strb	r0,[r5,0xB]

@@state1:
	ldr	r0,=bugfix_hawkCut2|1
	mov	r14,r15
	bx	r0
bugfix_hawkCut2Return:
	.pool
.endarea


.org 0x80C04F2	// ElecMan Dash Elec Sword color
	mov	r4,0x74

.org 0x80AA81C	// Extra sword types
	lsl	r1,r0,0x2
.org 0x80AA820
	ldr	r2,=bugfix_extraSwords|1
	bx	r2
	.pool

.org 0x809BB98	// Enemy Heat Chaser updates during screen dim
	mov	r2,0x14
.org 0x809BC86
	mov	r2,0x14

.org 0x809BADC	// Heat Chaser destroy doesn't clear hitboxes
	.dw	bugfix_burnermanHeatChaserDestroy|1

.org 0x802E35A	// Better update time checks
	bl	0x800615C
.org 0x802E378
	ldr	r2,=bugfix_checkLastUpdateTime|1
	bx	r2
	.pool
.org 0x802E394
	ldr	r1,=bugfix_checkNextUpdateTime|1
	bx	r1
	.pool

.org 0x8002C94	// Object overload for early warp-in NaviChips
	ldr	r7,=bugfix_replaceType1WithType4Object|1
	bx	r7
	.pool
.org 0x8002BA0
	.dw	bugfix_type4ObjectList

.org 0x80942E8	// VideoMan Stock Footage updates during screen dim
	ldr	r0,=bugfix_videomanStockFootage|1
	bx	r0
	.pool

.org 0x8067118	// SearchMan mission area availability checks missing
	.db	0xA2,0x00	// Internet 9
.org 0x8067128
	.db	0xA2,0x01	// Internet 10
.org 0x8067138
	.db	0xA2,0x02	// Internet 11
.org 0x8067148
	.db	0xA2,0x02	// Internet 11
.org 0x8067158
	.db	0xA2,0x03	// Internet 12

.org 0x80681F4	// Proto/Shadow first mission cannot be #2
	mov	r0,0xFF
.org 0x806996C
	mov	r0,0xFF

.org 0x8006834	// Do not spawn WindMan Mr. Prog as part of Navi initialization
	pop	r15

.org 0x80DE648	// Check WindMan flags for Mr. Progs rather than current Navi
	mov	r0,0xF
	mov	r1,0x3
	bl	0x80287AE
.org 0x80DE656
	mov	r0,0xF
	mov	r1,0x83
	bl	0x80287AE

.org 0x80DE402	// Force HP Memory for WindMan minigame if below HP threshold
.area 0xE
	ldr	r0,=bugfix_windmanMinigameForceHPMemory|1
	mov	r14,r15
	bx	r0
	beq	0x80DE41C
	b	0x80DE410
	.pool
.endarea

.org 0x80D3714	// Printing wrong equipment name for 1 frame
	cmp	r7,0x1

.org 0x803C22C	// Delay fade-in for menus to hide placeholder numbers
	b	0x803C234
.org 0x803C1D8
	.dw	bugfix_equipmentScreenFadeIn|1
.org 0x8040D4C
	b	0x8040D54
.org 0x8040CF4
	.dw	bugfix_mailScreenFadeIn|1
.org 0x80440AC
	ldr	r2,=bugfix_commScreenFadeIn2|1
	mov	r14,r15
	bx	r2
	b	0x80440B8
	.pool
.org 0x8044008
	.dw	bugfix_commScreenFadeIn|1

.org 0x802E33C	// Don't do world update while coming out of a battle
	ldr	r0,=bugfix_delayWorldUpdateAfterBattle|1
	bx	r0
	.pool

.org 0x80DF726	// Wrong music being played after cancelling Search mission in Undernet
	push	r4,r14
.org 0x80DF730
	nop			// call soundPlayBGM text script command
	bl	0x80519CC	// modifies r4, but we don't need it here
.org 0x80DF746
	pop	r4,r15
.org 0x80DF74A
	pop	r4,r15

.org 0x80E8EA6	// Wrong music being played after cancelling Napalm mission in Undernet
	push	r4,r14
.org 0x80E8EB0
	nop			// call soundPlayBGM text script command
	bl	0x80519CC	// modifies r4, but we don't need it here
.org 0x80E8EC6
	pop	r4,r15
.org 0x80E8ECA
	pop	r4,r15

// Fix MB for Ligtnin2 and Ligtnin3
.org 0x801AF0C+0x2C*167+0x6	::	.db	45
.org 0x801AF0C+0x2C*168+0x6	::	.db	53

// Fix ID sort for BurnMan
.org 0x801AF0C+0x2C*260+0x1C	::	.db	264
.org 0x801AF0C+0x2C*261+0x1C	::	.db	265
.org 0x801AF0C+0x2C*262+0x1C	::	.db	266
.org 0x801AF0C+0x2C*263+0x1C	::	.db	267
.org 0x801AF0C+0x2C*264+0x1C	::	.db	268
.org 0x801AF0C+0x2C*265+0x1C	::	.db	269
.org 0x801AF0C+0x2C*266+0x1C	::	.db	258
.org 0x801AF0C+0x2C*267+0x1C	::	.db	259
.org 0x801AF0C+0x2C*268+0x1C	::	.db	260
.org 0x801AF0C+0x2C*269+0x1C	::	.db	261
.org 0x801AF0C+0x2C*270+0x1C	::	.db	262
.org 0x801AF0C+0x2C*271+0x1C	::	.db	263



// Smaller bugs
.org 0x8000FA0	// ThunderMan max HP
	.dh	1200

.org 0x8013944	// write using wrong register
	str	r0,[r7,0x5C]

.org 0x80296C8	// misaligned read
	ldrb	r0,[r3,r1]

.org 0x803066E	// wrong size
	mov	r2,0x20
	nop

.org 0x8035F48	// wrong size
	mov	r2,0x40

.org 0x804FCB6	// useless read from 0xFFFFFFFF
	nop

.org 0x80D6666	// misaligned read
	ldrh	r0,[r1,r0]

.org 0x8001452	// leftover buffer clear from EXE3
	pop	r15

.org 0x80085E2	// probably misaligned read
	ldrb	r0,[r1,r0]

.org 0x8009A5A	// write using wrong register
	strb	r1,[r4]

.org 0x800CB78	// likely wrong jump to end (r4 not loaded yet)
	beq	0x800CBAC
.org 0x800CB84
	beq	0x800CBAC

.org 0x8031712	// write using wrong register
	strb	r0,[r3,0x8]

.org 0x80111EC	// likely wrong animation initialization
	strb	r0,[r5,0x11]
.org 0x80787A0
	strb	r0,[r5,0x11]
.org 0x807C778
	strb	r0,[r5,0x11]
.org 0x807D5BC
	strb	r0,[r5,0x11]
.org 0x80814E4
	strb	r0,[r5,0x11]
.org 0x80858D8
	strb	r0,[r5,0x11]
.org 0x80879E8
	strb	r0,[r5,0x11]
.org 0x8087FA8
	strb	r0,[r5,0x11]
.org 0x808A400
	strb	r0,[r5,0x11]
.org 0x808C168
	strb	r0,[r5,0x11]
.org 0x808DAD0
	strb	r0,[r5,0x11]
.org 0x8091FFC
	strb	r0,[r5,0x11]
.org 0x8092280
	strb	r0,[r5,0x11]
.org 0x8092A00
	strb	r0,[r5,0x11]

.org 0x802C57C	// BIOS read; add placeholder
	.dw	0x802C65F

.org 0x802D8D4	// potential BIOS read; using removed struct member
	nop
.org 0x802D8DA
	nop

.org 0x80E9A76	// IceMan minigame, remove leftover soundPlay call
	nop
	nop
	nop

.org 0x80EAB26	// IceMan minigame; trying to update too many rows
	cmp	r5,0x5
.org 0x80EAD1A
	cmp	r5,0x5

.org 0x80DE8BE	// WindMan minigame; creating player object twice
	nop
	nop

.org 0x800C71E	// potentially try to destroy null objects
.area 0x12
	push	r14
	ldr	r3,[r5,0x58]
	tst	r3,r3
	beq	@@end
	mov	r0,0x0
	strb	r0,[r3,0x9]
	strh	r0,[r3,0xA]
	str	r0,[r3,0x30]
@@end:
	pop	r15
.endarea

.org 0x806E8E0	// Default NPC sprite set to ThunderMan mugshot; set to white dot
	mov	r1,0x18
	mov	r2,0x0

.org 0x80EE6CC	// read from write-only I/O
	ldrh	r0,[r1,0x2]
.org 0x80EE6D0
	lsl	r2,r2,0x2
.org 0x80EE6DE
	ldrh	r0,[r1,0x2]

.org 0x80EE962	// read from write-only I/O
	ldrh	r0,[r1,0x2]
.org 0x80EE966
	lsl	r3,r3,0x2
.org 0x80EE974
	ldrh	r0,[r1,0x2]

.org 0x80EDC80	// read from write-only I/O
	ldrh	r1,[r2,0xA]
	lsl	r1,r1,0x17
.org 0x80EDC8A
	ldrh	r1,[r2,0x16]
	lsl	r1,r1,0x17

.org 0x803E97C	// not reloading r0
	bne	0x803E982
	mov	r3,0x0
	str	r3,[r1,r2]
	ldr	r0,[sp,0x10]

.org 0x80D4A24	// saving r5 too late
.area 0x2A,0x00
	push	r5		// fix
	mov	r0,r7
	bl	0x80D4CE0
	mov	r0,r7
	bl	0x801A894
	ldr	r1,[r0,0x24]
	tst	r1,r1
	beq	0x80D4A9C
	ldr	r2,[r0,0x28]
	bl	0x80D4ACC
	bl	0x80D4B28
	bl	0x80D4B80
	ldr	r0,[0x80D4AC4]
	ldr	r1,[0x80D4AC8]
	bl	0x803C6FC
.endarea

.org IWRAM_BLOB+0x160	// read from write-only I/O
.area 0x44,0x00
	push	r14
	ldr	r1,[IWRAM_BLOB+0x1A4]
	ldrb	r3,[r1]
	tst	r3,r3
	beq	@@end
	ldr	r0,[IWRAM_BLOB+0x1A8]
	ldr	r1,[IWRAM_BLOB+0x1AC]
	ldrh	r2,[r0,0xA]	// fix
	lsl	r2,r2,0x10	// fix
	and	r2,r1
	str	r2,[r0,0x8]
	cmp	r3,0x80
	bne	@@alt
	ldr	r1,[IWRAM_BLOB+0x1A4]
	mov	r0,0x0
	strb	r0,[r1]
	b	@@end
@@alt:
	ldr	r1,[IWRAM_BLOB+0x1A4]
	ldr	r2,[IWRAM_BLOB+0x1B0]
	str	r2,[r0]
	ldr	r2,[r1,0x8]
	str	r2,[r0,0x4]
	ldrb	r2,[r1,0x1]
	ldrh	r3,[r1,0x2]
	lsl	r3,r3,0x10
	orr	r2,r3
	str	r2,[r0,0x8]
	ldr	r0,[r1,0x4]
	ldr	r1,[IWRAM_BLOB+0x1B0]
	ldr	r2,[IWRAM_BLOB+0x1B4]
	ldr	r3,[IWRAM_BLOB+0x1B8]
	mov	r14,r15
	bx	r3
@@end:
	pop	r15
.endarea
