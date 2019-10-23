@archive 7A9EE4
@size 255

script 20 mmbn45 {
	checkNetTime
		lowerHour = 24
		lowerMinutes = 0
		upperHour = 29
		upperMinutes = 59
		jumpIfInRange = 30
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = NormalNaviPink
	msgOpen
	"""
	ちょっと､ウンドウ
	しスぎたみたい・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	け､けど・・・
	ブッタオれるくらいまでやらなきゃ
	ツヨくなれないのよ・・・
	"""
	keyWait
		any = false
	end
}
script 30 mmbn45 {
	checkNetTime
		lowerHour = 18
		lowerMinutes = 0
		upperHour = 23
		upperMinutes = 59
		jumpIfInRange = 20
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = NormalNaviPink
	msgOpen
	"""
	グォォォォォ・・・
	・・・やった・・・
	ワタシが チャンピオンよぉ・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・ムニャラ・・・
	グォォォォォ・・・
	"""
	keyWait
		any = false
	end
}
