@LINK_ID	equ	(VAR_LINK_EU ? 0x42345750 : 0x42345745)

// Change Link ID from B4WJ (EXE4) to B4WE/B4WP (BN4).
// Note that this also breaks compatibility with unpatched EXE4.5.
.org 0x0803C814
	.dw	@LINK_ID
.org 0x0803C890
	.dw	@LINK_ID
.org 0x08044C00
	.dw	@LINK_ID
.org 0x08044D44
	.dw	@LINK_ID
.org 0x08044D84
	.dw	@LINK_ID
.org 0x08044DE8
	.dw	@LINK_ID
.org 0x08044E2C
	.dw	@LINK_ID
.org 0x08044E6C
	.dw	@LINK_ID
.org 0x08044EC8
	.dw	@LINK_ID
.org 0x08044EFC
	.dw	@LINK_ID
.org 0x08044F84
	.dw	@LINK_ID