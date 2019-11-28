@archive 7A32A8
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
	いやぁ､オレッチも
	カいモノ ダイスきだからよ､
	"""
	keyWait
		any = false
	clearMsg
	"""
	ついついコイツに
	ツきアって
	イロイロ カっちゃうんだよな
	"""
	keyWait
		any = false
	clearMsg
	"""
	でも いいじゃん!
	ダレにもメイワクかけてないし!
	オレのゼニーだもーん!!
	"""
	keyWait
		any = false
	end
}
