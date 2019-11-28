@archive 7A4DD4
@size 255

script 10 mmbn45 {
	checkNetTime
		lowerHour = 9
		lowerMinutes = 45
		upperHour = 11
		upperMinutes = 30
		jumpIfInRange = 11
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 17
		lowerMinutes = 0
		upperHour = 17
		upperMinutes = 55
		jumpIfInRange = 12
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = OfficialNavi
	msgOpen
	"""
	オレもトーナメントに
	ちょくちょく
	サンカするんだけど､
	"""
	keyWait
		any = false
	clearMsg
	"""
	いつも､1カイセンで
	マけちまうんだ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	このサキのショップで
	アイテムをソロえて､
	ツギこそはユウショウだ!!
	"""
	keyWait
		any = false
	end
}
