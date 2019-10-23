// Use 0x2003C80 as version marker (was ASLR offset in BN4)
.org 0x8005AC0
	mov	r3,0x0	// Always return 0 from 0x2003C80
	nop		// Do not write to 0x2003C80
.org 0x8005ADE
	mov	r3,0x0	// Always return 0 from 0x2003C80
.org 0x8005B00
	mov	r3,0x0	// Always return 0 from 0x2003C80
.org 0x8005B34
	mov	r4,0x0	// Always return 0 from 0x2003C80
.org 0x8005B3E
	nop		// Do not write to 0x2003C80

// Overwrite save string (makes JP saves incompatible)
.org 0x804ABA0
.if VAR_JP
	.ascii	"ROCKMANEXE4RO 040607"
.else
	.ascii	"ROCKMANEXE4RO 041217"
.endif
// Fake dates:
//	US build date: December 17, 2004
//	US release date: February 15, 2005
//	EU release date: ???

// Call new save string check function
.org 0x804AB7C
.area 0x20
	ldr	r0,=save_checkSaveString|1
	bx	r0
	.pool
.endarea

// Hook save file write
.org 0x804AB3C
	ldr	r1,=save_setLastRtcTime|1
	bx	r1
	.pool

// Hook player name input confirmation
.org 0x8039E5C
.area 0x8
	ldr	r0,=save_playerNameInputConfirm|1
	bx	r0
	.pool
.endarea

// Hook RTC re-initialize confirmation
.org 0x802940C
.area 0x8
	ldr	r0,=save_rtcReinitConfirm|1
	bx	r0
	.pool
.endarea

// Hook profile entry exit
.org 0x8039F7C
.area 0x8
	ldr	r1,=save_profileEntryExit|1
	bx	r1
	.pool
.endarea
