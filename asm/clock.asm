.if VAR_DEAD_CLOCK
// Kills the RTC
.org 0x80ED4B6
	// Return 0 for all RTC reads.
	mov	r2,0x0
.endif


// Hook stuff to make fake RTC survive soft resets
.org 0x80001F4
	.dw	clock_preBoot|1
.org 0x08005F98
	ldr	r0,=clock_softResetRtc|1
	bx	r0
	.pool

// Hook up fake RTC in case real RTC breaks/is not present
.org 0x8005FDC
.area 0x20
	ldr	r0,=clock_fakeRtc|1
	mov	r14,r0
	bl	r14
	b	0x8005FFC

	.pool
.endarea

.org 0x8006030
	// Skip converting fake RTC vars
	b	0x8006040

// Open RTC Init on Continue if RTC is broken
.org 0x8028EC0
	ldr	r0,=clock_openRtcOnContinue|1
	bx	r0
	.pool

// Expand state table for Set Time screen
.org 0x803A618
	dw	clock_setTimeStateTable

// Set RTC init state when requested
.org 0x803A670
	ldr	r0,=clock_setRtcInitState|1
	bx	r0
	.pool

// Disable RTC init abort
.org 0x803A6DC
	ldr	r0,=clock_disableRtcInitAbort|1
	bx	r0
	.pool

// Apply RTC changes to the fake RTC
.org 0x803A74E
	ldr	r0,=clock_applyRtcChange|1
	bx	r0
	.pool

// Continue game after RTC init
.org 0x8029426
	ldr	r0,=clock_continueAfterRtcInit|1
	bx	r0
	.pool

// Don't restart music on Navi Change screen
.org 0x8038E5C
	bl	0x800053C
