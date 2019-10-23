// 0x200F859 = RTC state
// 0x0	RTC not checked
// 0x1	Running on real RTC
// 0x2	Detected RTC broken at startup
// 0x3	Requesting RTC Init from Continue
// 0x4	Fake RTC initialized, do continue
// 0x5	Running on fake RTC

.align 2
clock_preBoot:
	// Clear real/fake RTC states
	ldr	r0,=0x200F850
	mov	r1,0x14
	ldr	r2,=0x800090D
	mov	r14,r2
	bl	r14

	ldr	r0,=0x8000245
	bx	r0

.align 2
clock_softResetRtc:
	push	r14

	// Clear all RTC data except fake RTC and decimal states
	ldr	r0,=0x200F850
	mov	r1,0x0
	str	r1,[r0]
	str	r1,[r0,0x4]

@@clearRest:
	add	r0,0x14
	mov	r1,0x1C
	ldr	r2,=0x800090D
	mov	r14,r2
	bl	r14

	ldr	r0,=0x8005FA3
	bx	r0

.align 2
clock_openRtcOnContinue:
	ldr	r1,=0x200F850
	ldrb	r0,[r1,0x9]	// fake rtc state
	cmp	r0,0x3
	bne	@@checkMenu
	mov	r0,0x2
	strb	r0,[r1,0x9]	// fake rtc state

@@checkMenu:
	ldrb	r0,[r5,0x8]
	tst	r0,r0
	bne	@@checkContinue

@@doNewGame:
	ldr	r0,=0x80020F9
	mov	r14,r0
	bl	r14

	ldr	r0,=0x8028ECB
	bx	r0

@@checkContinue:
	cmp	r0,0x1
	bne	@@doSetTime

	// Check if there is a last chosen Navi
	// Get last used Navi
	ldr	r0,=0x8000CED
	mov	r14,r15
	bx	r0

	// Check if Navi has been used before
	mov	r1,0x80
	add	r1,r1,r0
	mov	r0,0xE
	ldr	r3,=0x80287AF
	mov	r14,r15
	bx	r3
	bne	@@checkRtcState

	// This is a starter save, go through whole setup
	// Set game state to profile entry
	ldr	r0,=0x8039C53
	mov	r14,r15
	bx	r0

	// Clear flag 0x1E06 (bypasses save initialization)
	mov	r0,0x1E
	mov	r1,0x6
	ldr	r3,=0x802874F
	mov	r14,r15
	bx	r3
	b	@@end

@@checkRtcState:
	ldr	r1,=0x200F850
	ldrb	r0,[r1,0x9]	// fake rtc state
	cmp	r0,0x2
	beq	@@doRtcInit

@@checkName:
	// Check if name needs to be initialized
	ldr	r0,=0x2000E50
	ldrb	r0,[r0]
	tst	r0,r0
	bne	@@doContinue

@@doNameInput:
	// Set game state to profile entry
	ldr	r0,=0x8039C53
	mov	r14,r15
	bx	r0

@@profileNameOnly:
	// Set profile entry to name only
	ldr	r1,=0x200F5E8
	mov	r0,0x2
	strb	r0,[r1,0x7]

	// Start profile entry music
	mov	r0,0x38
	ldr	r1,=0x800055B
	mov	r14,r15
	bx	r1

@@end:
	pop	r7,r15

@@doRtcInit:
	mov	r0,0x3
	strb	r0,[r1,0x9]	// fake rtc state

	b	@@doSetTime

@@doContinue:
	ldr	r0,=0x8028EFB
	bx	r0

@@doSetTime:
	ldr	r0,=0x8028F2D
	bx	r0

	.pool

.align 4
clock_setTimeStateTable:
	.dw	0x803A635	// 00
	.dw	0x803A69B	// 04
	.dw	0x803A725	// 08
	.dw	0x803A7FD	// 0C
	.dw	0x803A829	// 10
	.dw	0x803A85F	// 14
	.dw	@setTimeStateRtcInit|1

.align 2
clock_setRtcInitState:
	ldr	r0,=0x200F850
	ldrb	r0,[r0,0x9]	// fake rtc state
	cmp	r0,0x3
	bne	@@normal

	// Go to RTC init message state
	mov	r0,0x18
	strb	r0,[r5,0x1]

	bl	@setTimeStateRtcInit

	pop	r15

@@normal:
	mov	r0,0x1E
	mov	r1,0x1E
	ldr	r3,=0x80287AF
	mov	r14,r3
	bl	r14

	ldr	r0,=0x803A679
	bx	r0


.align 2
clock_disableRtcInitAbort:
	ldr	r0,=0x200F850
	ldrb	r0,[r0,0x9]	// fake rtc state
	cmp	r0,0x3
	beq	@@noAbort
	ldrb	r0,[r5,0xF]
	tst	r0,r0
	beq	@@noAbort

@@abort:
	mov	r1,0x10
	ldr	r2,=0x803A6E5
	bx	r2

@@noAbort:
	ldr	r0,=0x803A709
	bx	r0


.align 2
@setTimeStateRtcInit:
	push	r4,r14

	ldrb	r0,[r5,0x2]
	tst	r0,r0
	bne	@@substate04

	// Check last datetime valid
	ldr	r0,=(0x2003D40+0xC)
	ldrb	r1,[r0]		// year
	cmp	r1,0x63
	bgt	@@message

	ldrb	r1,[r0,0x1]	// month
	cmp	r1,0x1
	blt	@@message
	cmp	r1,0xC
	bgt	@@message

	ldr	r1,=0x800644F	// get days in month
	mov	r14,r1
	bl	r14
	ldr	r2,=(0x2003D40+0xC)

	ldrb	r1,[r2,0x2]	// day
	cmp	r1,0x1
	blt	@@message
	cmp	r1,r0
	bgt	@@message

	ldrb	r1,[r2,0x3]	// hour
	cmp	r1,0x17
	bgt	@@message
	ldrb	r1,[r2,0x4]	// minute
	cmp	r1,0x3B
	bgt	@@message

	// Copy datetime
	ldr	r0,=(0x200F850+0x14)
	ldrb	r1,[r2]		// year
	strb	r1,[r0]
	ldrb	r1,[r2,0x1]	// month
	strb	r1,[r0,0x1]
	ldrb	r1,[r2,0x2]	// day
	strb	r1,[r0,0x2]
	ldrb	r1,[r2,0x3]	// hour
	strb	r1,[r0,0x4]
	ldrb	r1,[r2,0x4]	// minute
	strb	r1,[r0,0x5]

	// Set weekday
	mov	r1,0x0
	ldr	r2,=0x80065C1
	mov	r14,r2
	bl	r14

@@message:
	// Show RTC battery empty message
	ldr	r0,=file_clockmsg
	mov	r1,0x0
	ldr	r2,=0x804F7B7
	mov	r14,r2
	bl	r14

	mov	r0,0x4
	strb	r0,[r5,0x2]
	b	@@end

@@substate04:
	// Check if message finished
	mov	r0,0x80
	ldr	r1,=0x8055409
	mov	r14,r1
	bl	r14
	bne	@@end

	// Play sound effect
	//mov	r0,0x7E
	//ldr	r1,=0x8000535
	//mov	r14,r1
	//bl	r14

	// Go to state 04
	mov	r0,0x4
	strb	r0,[r5,0x1]

@@end:
	pop	r4,r15


.align 2
clock_applyRtcChange:
	ldr	r1,=0x200F850
	ldrh	r0,[r1,0x14]	// year and month
	strh	r0,[r1,0xA]
	ldrh	r0,[r1,0x16]	// day and weekday
	strh	r0,[r1,0xC]
	ldrh	r0,[r1,0x18]	// hour and minute
	strh	r0,[r1,0xE]
	ldrb	r0,[r1,0x1A]	// second
	strb	r0,[r1,0x10]

	ldrb	r0,[r1,0x9]	// fake rtc state
	cmp	r0,0x2		// rtc broken at startup, but chose Set Time
	beq	@@markTimeSet
	cmp	r0,0x3		// rtc broken at startup, and chose Continue
	bne	@@normal

@@markTimeSetAndContinue:
	mov	r0,0x4		// must do continue after exit
	strb	r0,[r1,0x9]	// fake rtc state

	// Restart RTC
	ldr	r0,=0x8005FB7
	mov	r14,r0
	bl	r14

	b	@@end

@@markTimeSet:
	mov	r0,0x5		// fake rtc running
	strb	r0,[r1,0x9]	// fake rtc state

@@normal:
	// If saved game exists
	mov	r0,0x1E
	mov	r1,0x6
	ldr	r3,=0x80287AF
	mov	r14,r3
	bl	r14
	beq	@@end

	// Restart RTC, reset tournaments and Zennys
	ldr	r0,=0x8006805
	mov	r14,r0
	bl	r14

@@end:
	ldr	r0,=0x803A75D
	bx	r0


.align 2
clock_continueAfterRtcInit:
	ldr	r1,=0x200F850
	ldrb	r0,[r1,0x9]	// fake rtc state
	cmp	r0,0x4
	bne	@@returnToTitle

@@continueGame:
	mov	r0,0x5
	strb	r0,[r1,0x9]	// fake rtc state

	ldr	r0,=0x80041F5
	mov	r14,r0
	bl	r14

	// Undo music stop
	mov	r3,r10
	ldr	r3,[r3,0x40]
	mov	r0,0x38
	strb	r0,[r3,0x19]

	mov	r0,0x1E
	mov	r1,0x6
	ldr	r3,=0x802871F
	mov	r14,r3
	bl	r14

	mov	r0,0x1E
	mov	r1,0x1E
	ldr	r3,=0x80287AF
	mov	r14,r3
	bl	r14
	bne	@@openNaviSelect

@@openOverworld:
	ldr	r0,=0x8030755
	mov	r14,r0
	bl	r14

	mov	r3,r10
	ldr	r0,[r3]
	mov	r1,0x4
	strb	r1,[r0]

	ldr	r0,=0x803675D
	mov	r14,r0
	bl	r14

	ldr	r0,=0x80067DD
	mov	r14,r0
	bl	r14

	pop	r15

@@openNaviSelect:
	ldr	r0,=0x8038DF5
	mov	r14,r0
	bl	r14

	pop	r15

@@returnToTitle:
	mov	r3,r10
	ldr	r0,[r3]
	mov	r1,0x0
	strb	r1,[r0]

	ldr	r0,=0x8028C6D
	mov	r14,r0
	bl	r14

	ldr	r0,=0x8029433
	bx	r0

	.pool


.align 2
clock_fakeRtc:
	push	r4,r14
	sub	sp,0x4

	// Check if fake RTC has been started
	ldrb	r0,[r7,0x9]	// fake rtc state
	cmp	r0,0x2
	bge	@@tickFakeRtc

@@doRealRtc:
	// Begin RTC
	mov	r0,r7
	ldr	r1,=0x80ECDF1
	mov	r14,r1
	bl	r14

	// Get date/time from RTC
	mov	r0,r7
	ldr	r1,=0x80ECF65
	mov	r14,r1
	bl	r14

	ldr	r4,=0x800661D	// 0x99 -> 99

	// RTC working check
	// Check year valid
	ldrb	r0,[r7]		// Year 0x00...0x99
	cmp	r0,0x99
	bgt	@@isBroken	// Year > 99
	lsl	r1,r0,0x1C
	lsr	r1,r1,0x1C
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in year 0X
	lsr	r1,r0,0x4
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in year X0
	// Convert year
	mov	r14,r4
	bl	r14
	str	r0,[sp]

	// Check month valid
	ldrb	r0,[r7,0x1]	// Month 0x01...0x12
	tst	r0,r0
	beq	@@isBroken	// Month < 1
	cmp	r0,0x12
	bgt	@@isBroken	// Month > 12
	lsl	r1,r0,0x1C
	lsr	r1,r1,0x1C
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in month 0X
	lsr	r1,r0,0x4
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in month X0
	// Convert month
	mov	r14,r4
	bl	r14
	mov	r1,sp
	strb	r0,[r1,0x1]

	// Check day valid
	ldrb	r0,[r7,0x1]	// Day 0x01...0x31
	tst	r0,r0
	beq	@@isBroken	// Day < 1
	lsl	r1,r0,0x1C
	lsr	r1,r1,0x1C
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in day 0X
	lsr	r1,r0,0x4
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in day X0
	// Convert day
	mov	r14,r4
	bl	r14
	mov	r4,r0
	// Day max check
	mov	r0,sp
	ldr	r1,=0x800644F	// Get days in month
	mov	r14,r1
	bl	r14
	cmp	r4,r0
	bgt	@@isBroken	// Day > max

	// Check weekday valid
	ldrb	r0,[r7,0x3]
	cmp	r0,0x6
	bgt	@@isBroken

	// Check hour valid
	ldrb	r0,[r7,0x4]
	cmp	r0,0x23
	bgt	@@isBroken	// Hour > 23
	lsl	r1,r0,0x1C
	lsr	r1,r1,0x1C
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in hour 0X
	lsr	r1,r0,0x4
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in hour X0

	// Check minute valid
	ldrb	r0,[r7,0x5]
	cmp	r0,0x59
	bgt	@@isBroken	// Minute > 59
	lsl	r1,r0,0x1C
	lsr	r1,r1,0x1C
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in minute 0X
	lsr	r1,r0,0x4
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in minute X0

	// Check second valid
	ldrb	r0,[r7,0x6]
	cmp	r0,0x59
	bgt	@@isBroken	// Second > 59
	lsl	r1,r0,0x1C
	lsr	r1,r1,0x1C
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in second 0X
	lsr	r1,r0,0x4
	cmp	r1,0x9
	bgt	@@isBroken	// Hex digit in second X0

@@isWorking:
	// Increment frame counter
	ldrb	r0,[r7,0x8]
	add	r0,0x1
	cmp	r0,0x3C
	bge	@@checkSecondChanged
	strb	r0,[r7,0x8]

@@checkSecondChanged:
	// Get the previous second
	ldrb	r0,[r7,0x10]
	// Convert to hex
	ldr	r4,=0x800662D
	mov	r14,r4
	bl	r14
	// Get the current second
	ldrb	r1,[r7,0x6]
	// If second changed, reset frame counter
	cmp	r0,r1
	beq	@@markWorking
	mov	r0,0x0
	strb	r0,[r7,0x8]

@@markWorking:
	// Mark real RTC working
	mov	r0,0x1
	strb	r0,[r7,0x9]	// fake rtc state

	// Do rest of RTC stuff as normal
	add	sp,0x4
	pop	r4,r15

@@isBroken:
	// Clear fake RTC state
	mov	r0,0x0
	strb	r0,[r7,0x7]

	// Check if we have a valid date/time
	ldrb	r0,[r7,0x9]	 // fake rtc state
	cmp	r0,0x1
	beq	@@brokeMidGame

@@brokeAtStartup:
	// Mark fake RTC as not initialized
	mov	r0,0x2
	strb	r0,[r7,0x9]	// fake rtc state

	b	@@initializeTimeDate

@@brokeMidGame:
	// Mark fake RTC as already initialized
	mov	r0,0x5
	strb	r0,[r7,0x9]	// fake rtc state
	b	@@setFakeRtc

@@tickFakeRtc:
	cmp	r0,0x4
	blt	@@initializeTimeDate

	// Increment frame counter
	ldrb	r0,[r7,0x8]
	add	r0,0x1
	strb	r0,[r7,0x8]
	cmp	r0,0x3C
	blt	@@setFakeRtc

@@incSecond:
	mov	r0,0x0
	strb	r0,[r7,0x8]
	ldrb	r0,[r7,0x10]
	add	r0,0x1
	strb	r0,[r7,0x10]
	cmp	r0,0x3C
	blt	@@setFakeRtc

@@incMinute:
	mov	r0,0x0
	strb	r0,[r7,0x10]
	ldrb	r0,[r7,0xF]
	add	r0,0x1
	strb	r0,[r7,0xF]
	cmp	r0,0x3C
	blt	@@setFakeRtc

@@incHour:
	mov	r0,0x0
	strb	r0,[r7,0xF]
	ldrb	r0,[r7,0xE]
	add	r0,0x1
	strb	r0,[r7,0xE]
	cmp	r0,0x18
	blt	@@setFakeRtc

@@incWeekday:
	mov	r0,0x0
	strb	r0,[r7,0xE]
	ldrb	r0,[r7,0xD]
	add	r0,0x1
	strb	r0,[r7,0xD]
	cmp	r0,0x7
	blt	@@incDay
	mov	r0,0h
	strb	r0,[r7,0xD]

@@incDay:
	// Get days in current month
	ldr	r0,=0x800644F
	mov	r14,r0
	mov	r0,r7
	add	r0,0xA
	bl	r14
	ldrb	r1,[r7,0xC]
	add	r1,0x1
	strb	r1,[r7,0xC]
	cmp	r1,r0
	ble	@@setFakeRtc

@@incMonth:
	mov	r0,0x1
	strb	r0,[r7,0xC]
	ldrb	r0,[r7,0xB]
	add	r0,0x1
	strb	r0,[r7,0xB]
	cmp	r0,0xC
	ble	@@setFakeRtc

@@incYear:
	mov	r0,0x1
	strb	r0,[r7,0xB]
	ldrb	r0,[r7,0xA]
	add	r0,0x1
	strb	r0,[r7,0xA]
	cmp	r0,0x63
	ble	@@setFakeRtc

@@initializeTimeDate:
	// Initialize the RTC to 1/1/2000, 0:00 AM
	mov	r0,0x0
	strb	r0,[r7,0xA]	// dec year
	strh	r0,[r7,0xE]	// dec hour, minute
	str	r0,[r7,0x10]	// dec second, state, unknowns
	strb	r0,[r7,0x8]	// fake RTC frames
	mov	r0,0x1
	strb	r0,[r7,0xB]	// dec month
	strb	r0,[r7,0xC]	// dec day
	mov	r0,0x6		// Saturday
	strb	r0,[r7,0xD]

@@setFakeRtc:
	// Copy RTC from dec to hex
	ldr	r4,=0x800662D

	// Copy year
	ldrb	r0,[r7,0xA]
	mov	r14,r4
	bl	r14
	strb	r0,[r7]

	// Copy month
	ldrb	r0,[r7,0xB]
	mov	r14,r4
	bl	r14
	strb	r0,[r7,0x1]

	// Copy day
	ldrb	r0,[r7,0xC]
	mov	r14,r4
	bl	r14
	strb	r0,[r7,0x2]

	// Copy weekday
	ldrb	r0,[r7,0xD]
	strb	r0,[r7,0x3]

	// Copy hour
	ldrb	r0,[r7,0xE]
	mov	r14,r4
	bl	r14
	strb	r0,[r7,0x4]

	// Copy minute
	ldrb	r0,[r7,0xF]
	mov	r14,r4
	bl	r14
	strb	r0,[r7,0x5]

	// Copy second
	ldrb	r0,[r7,0x10]
	mov	r14,r4
	bl	r14
	strb	r0,[r7,0x6]

	// Clear state
	mov	r0,0x0
	strb	r0,[r7,0x7]

	add	sp,0x4
	pop	r4,r15

	.pool
