@archive 69E708
@size 28

script 2 mmbn45 {
	positionBox
		left = 10
		top = 12
		type = 1
	msgOpenQuick
	positionText
		left = 92
		top = 110
		arrowDistance = 3
	positionArrow
		left = 225
		top = 141
	callBufferEventName
	printPlayerNickname
	"､"
	keyWait
		any = false
	clearMsg
	printScheduleBuffer
	"""
	
	のじかんが
	きたようだぞ
	"""
	keyWait
		any = false
	clearMsg
	callCheckNowEvent
		jumpIfExists = 6
		jumpIfNone = continue
	flagClear
		flag = 3658
	waitHold
}
script 22 mmbn45 {
	mugshotShow
		mugshot = WoodMan
	msgOpen
	callBufferEventName
	printPlayerNickname
	"､"
	keyWait
		any = false
	clearMsg
	printScheduleBuffer
	"""
	
	のじかんが
	きたようだぞ
	"""
	keyWait
		any = false
	clearMsg
	callCheckNowEvent
		jumpIfExists = 26
		jumpIfNone = continue
	flagClear
		flag = 3658
	end
}

@archive 6AAB54
@size 28

script 2 mmbn45 {
	positionBox
		left = 10
		top = 12
		type = 1
	msgOpenQuick
	positionText
		left = 92
		top = 110
		arrowDistance = 3
	positionArrow
		left = 225
		top = 141
	callBufferEventName
	printPlayerNickname
	"､"
	keyWait
		any = false
	clearMsg
	printScheduleBuffer
	"\nのじかんでござる"
	keyWait
		any = false
	clearMsg
	callCheckNowEvent
		jumpIfExists = 6
		jumpIfNone = continue
	flagClear
		flag = 3658
	waitHold
}
script 22 mmbn45 {
	mugshotShow
		mugshot = ShadowMan
	msgOpen
	callBufferEventName
	printPlayerNickname
	"､"
	keyWait
		any = false
	clearMsg
	printScheduleBuffer
	"\nのじかんでござる"
	keyWait
		any = false
	clearMsg
	callCheckNowEvent
		jumpIfExists = 26
		jumpIfNone = continue
	flagClear
		flag = 3658
	end
}