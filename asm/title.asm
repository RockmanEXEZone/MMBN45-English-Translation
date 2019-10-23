// Set up wider title screen options
.org 0x80292E0
.area 0x12
	.db	0x08
	.db	0x00
	.dh	0x0040
	.db	0x02
	.db	0x18

	.db	0x08
	.db	0x00
	.dh	0x0048
	.db	0x02
	.db	0x18

	.db	0x08
	.db	0x00
	.dh	0x0050
	.db	0x02
	.db	0x18
.endarea


// Disable logo animation
.if VAR_TITLE_EU
.org 0x8028DD0
	b	8028DD6h
.endif


// Press Start position
.org 0x8028E2E
	mov	r1,(VAR_TITLE_EU ? 0x6A : 0x72)	// from 0x78
// New Game position (no save)
.org 0x8028F7E
	mov	r0,0x58					// from 0x64
	mov	r1,(VAR_TITLE_EU ? 0x68 : 0x70)	// from 0x76
// New Game position (with save)
.org 0x8028F90
	mov	r0,0x58					// from 0x64
	mov	r1,(VAR_TITLE_EU ? 0x58 : 0x5E)	// from 0x5A
// Continue position
.org 0x8028FA2
	mov	r0,0x58					// from 0x64
	mov	r1,(VAR_TITLE_EU ? 0x68 : 0x6E)	// from 0x6A
// Set Time position
.org 0x8028FB4
	mov	r0,0x58					// from 0x64
	mov	r1,(VAR_TITLE_EU ? 0x78 : 0x7E)	// from 0x7A
// Cursor position (no save)
.org 0x8028F88
	mov	r0,0x46					// from 0x52
	mov	r1,(VAR_TITLE_EU ? 0x69 : 0x71)	// from 0x77
// Cursor position (with save)
.org 0x8028FCC
	add	r1,(VAR_TITLE_EU ? 0x59 : 0x5F)	// from 0x5B
	mov	r0,0x46					// from 0x52



// Title screen version label
.if VAR_DEBUG
.org 0x8028D7C
	bl	title_versionLabelShow

.org 0x80290EC
	bl	title_versionLabelPrint
.endif



// Title screen input code
.org 0x8028FEE
	bl	title_inputCode
