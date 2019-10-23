// Always enables Select=BattleSkip
//.org 0x0800825C
//	nop

// Hold Select to expire mission timer
.org 0x8006A04
	bl	debug_expireMissionTimer

// Battle target cheats
.org 0x08020114
	ldr	r1,=debug_battleTargetCheats|1b
	bx	r1
	.pool

// Higher default text speed
.org 0x0804FB82
	mov	r0,1h

// Walking = 2.5x normal walk speed
.org 0x0806C028
	.dw	0x00028000,0xFFFD8000
.org 0x0806C034
	.dw	0x00028000,0x00000000
.org 0x0806C040
	.dw	0x00014000,0x00014000
.org 0x0806C04C
	.dw	0x00000000,0x00028000
.org 0x0806C058
	.dw	0xFFFD8000,0x00028000
.org 0x0806C064
	.dw	0xFFFD8000,0x00000000
.org 0x0806C070
	.dw	0xFFFEC000,0xFFFEC000
.org 0x0806C07C
	.dw	0x00000000,0xFFFD8000

// Running = 5x normal walk speed
.org 0x0806C0E8
	.dw	0x00050000,0xFFFB0000
.org 0x0806C0F4
	.dw	0x00050000,0x00000000
.org 0x0806C100
	.dw	0x00028000,0x00028000
.org 0x0806C10C
	.dw	0x00000000,0x00050000
.org 0x0806C118
	.dw	0xFFFB0000,0x00050000
.org 0x0806C124
	.dw	0xFFFB0000,0x00000000
.org 0x0806C130
	.dw	0xFFFD8000,0xFFFD8000
.org 0x0806C13C
	.dw	0x00000000,0xFFFB0000

// Encounter rate x1 when walking, x2 when running
.org 0x0806C78C
	mov	r3,1h
.org 0x0806C794
	mov	r3,2h
.org 0x0806C8D6
	mov	r0,2h

// Hook for debug menu
.org 0x0802DA88
	ldr	r0,=debug_debugMenuTrigger|1b
	bx	r0
	.pool

// Fix Heart/Star data location check if nonexistent
.org 0x080508D4
	.dw	debug_heartDataNoneCheck|1b
	.dw	debug_starDataNoneCheck|1b