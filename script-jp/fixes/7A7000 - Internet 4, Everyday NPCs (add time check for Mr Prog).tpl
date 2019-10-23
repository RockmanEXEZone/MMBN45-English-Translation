@archive 7A7000
@size 255

script 0 mmbn45 {
	checkNetTime
		lowerHour = 12
		lowerMinutes = 0
		upperHour = 17
		upperMinutes = 59
		jumpIfInRange = 1
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 18
		lowerMinutes = 0
		upperHour = 23
		upperMinutes = 59
		jumpIfInRange = 2
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 24
		lowerMinutes = 0
		upperHour = 29
		upperMinutes = 59
		jumpIfInRange = 3
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MrProgGreen
	msgOpen
	"""
	ウェルカム!!
	ココハ
	インターネット4デス!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	キョウモ ゲンキニ
	ガ・ン・バ・ル・ゾ!!
	"""
	keyWait
		any = false
	end
}
script 1 mmbn45 {
	checkNetTime
		lowerHour = 6
		lowerMinutes = 0
		upperHour = 11
		upperMinutes = 59
		jumpIfInRange = 0
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 18
		lowerMinutes = 0
		upperHour = 23
		upperMinutes = 59
		jumpIfInRange = 2
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 24
		lowerMinutes = 0
		upperHour = 29
		upperMinutes = 59
		jumpIfInRange = 3
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MrProgGreen
	msgOpen
	"""
	チィーーーーーーーーース!!
	ココハ
	インターネット4デス!!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ココハ オダヤカナ エリアデス!
	ユックリシテイッテクダサイ!!
	"""
	keyWait
		any = false
	end
}
script 2 mmbn45 {
	checkNetTime
		lowerHour = 6
		lowerMinutes = 0
		upperHour = 11
		upperMinutes = 59
		jumpIfInRange = 0
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 12
		lowerMinutes = 0
		upperHour = 17
		upperMinutes = 59
		jumpIfInRange = 1
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 24
		lowerMinutes = 0
		upperHour = 29
		upperMinutes = 59
		jumpIfInRange = 3
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MrProgGreen
	msgOpen
	"オバンデガス!!"
	keyWait
		any = false
	clearMsg
	"""
	アンマリ オソクマデ
	アソンデチャ ダメデスヨ!
	"""
	keyWait
		any = false
	end
}
script 3 mmbn45 {
	checkNetTime
		lowerHour = 6
		lowerMinutes = 0
		upperHour = 11
		upperMinutes = 59
		jumpIfInRange = 0
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 12
		lowerMinutes = 0
		upperHour = 17
		upperMinutes = 59
		jumpIfInRange = 1
		jumpIfOutOfRange = continue
	checkNetTime
		lowerHour = 18
		lowerMinutes = 0
		upperHour = 23
		upperMinutes = 59
		jumpIfInRange = 2
		jumpIfOutOfRange = continue
	mugshotShow
		mugshot = MrProgGreen
	msgOpen
	"グー､グー・・・"
	keyWait
		any = false
	clearMsg
	"""
	ココハ､
	インターネット4・・・
	ムニャムニャ・・・
	"""
	keyWait
		any = false
	end
}
