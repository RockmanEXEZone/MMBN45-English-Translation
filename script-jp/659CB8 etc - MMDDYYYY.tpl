@archive 659CB8
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だよ
	さ､なにをしようか?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしちゃうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶ?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = MegaMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしちゃうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶ?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 65F11C
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = Roll
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日!!
	なにをしよっか?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = Roll
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしちゃうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	けしても だいじょうぶ?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = Roll
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしちゃうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	けしても だいじょうぶ?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 665698
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = GutsMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日でガス
	なにをするでガス?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = GutsMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするでガス!
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶでガス?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = GutsMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするでガス!
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶでガス?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 66B0D4
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = WindMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをしようか・・・
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = WindMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = WindMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 670568
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = SearchMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日です
	なにを いたしましょうか?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = SearchMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょします
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よろしいでしょうか?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = SearchMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょします
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よろしいでしょうか?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6762A8
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = FireMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だぜ
	なにをするんだ?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = FireMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぜ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいよな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = FireMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぜ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいよな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 67BCF4
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ThunderMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをする・・・
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ThunderMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ThunderMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6811F0
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ProtoMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日です
	なにを いたしましょうか?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ProtoMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょします
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よろしいでしょうか?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ProtoMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょします
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よろしいでしょうか?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 686A60
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = NumberMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日です
	さ､なにをします?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = NumberMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしますよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よろしいですか?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = NumberMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしますよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よろしいですか?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 68CBFC
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = MetalMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをする・・・
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = MetalMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = MetalMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 692874
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = JunkMan
	textSpeed
		delay = 0
	"キョウハ､\n"
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"ガツ"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	ニチダ
	ナ､ナニヲスル?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = JunkMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	ヲ サクジョ スルゾ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	イイノカ?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = JunkMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	ヲ サクジョ スルゾ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	イイノカ?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 697B70
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = AquaMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日っぴゅ
	なにを するっぴゅ?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = AquaMan
	textSpeed
		delay = 0
	soundDisableChoiceSFX
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするっぴゅ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶっぴゅ?
	
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = AquaMan
	textSpeed
		delay = 0
	soundDisableChoiceSFX
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするっぴゅ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶっぴゅ?
	
	
	"""
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 69D8D4
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = WoodMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをする?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = WoodMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = WoodMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6A2FBC
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = StarMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だよ
	なにをする?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = StarMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしちゃうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶかい?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = StarMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしちゃうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	だいじょうぶかい?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6A9970
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ShadowMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをいたそうか・・・
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ShadowMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ShadowMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6B525C
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = KnightMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日です
	なにを しますかのう!?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = KnightMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしますぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よいですな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = KnightMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしますぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	よいですな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6BB2A4
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = NapalmMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをするんだ?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = NapalmMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぜ!
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	かまわないな!?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = NapalmMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぜ!
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	かまわないな!?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6C0E38
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = IceMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日です
	なにをするです?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = IceMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするです
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいです?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = IceMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするです
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいです?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6C6828
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ElecMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをする?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ElecMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = ElecMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6CBFC0
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = PlantMan
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だよ
	なにをするんだ?
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = PlantMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしてしまうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいかい?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = PlantMan
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょしてしまうよ
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいかい?
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}

@archive 6D1984
@size 255

script 0 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = Bass
	textSpeed
		delay = 0
	"今日は "
	callBufferCurrentMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"月"
	callBufferCurrentDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"""
	日だ
	なにをする・・・
	"""
	waitHold
}
script 51 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = Bass
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = true
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventYear
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	" "
	callBufferEventDayName
	"("
	printScheduleBuffer
	")\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな・・・
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}
script 52 mmbn45 {
	callSkipMugshotFadeIn
	msgOpenQuick
	mugshotShow
		mugshot = Bass
	textSpeed
		delay = 0
	callBufferEventMonth
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"/"
	callBufferEventDay
	printBuffer
		buffer = 1
		minLength = 2
		padZeros = false
		padLeft = true
	"\n "
	callBufferEventName
	"｢"
	printScheduleBuffer
	"""
	｣
	を さくじょするぞ・・・
	"""
	keyWait
		any = false
	clearMsg
	soundPlay
		track = 467
	"""
	いいな・・・
	
	
	"""
	soundDisableChoiceSFX
	positionOptionHorizontal
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"はい  "
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"いいえ"
	select
		default = 0
		lastCancelSFX = true
		noDelay = false
		BSeparate = false
		disableB = false
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	flagClear
		flag = 3611
	wait
		frames = 1
	mugshotHide
	msgCloseQuick
	end
}