@archive 715064
@size 16

script 0 mmbn45 {
	checkFlag
		flag = 5505
		jumpIfTrue = 15
		jumpIfFalse = continue
	checkFlag
		flag = 5506
		jumpIfTrue = 15
		jumpIfFalse = continue
	msgOpen
	"""
	ふっふっふっ
	きどう しましたね
	"""
	keyWait
		any = false
	clearMsg
	"""
	この
	カウントボムを ないぞうした
	じごくの けいさんドリル・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	このとっくんで あなたの
	へんさちも グｰンと
	アップ まちがいなしです
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"とっくんドリルきどう\n"
	positionOptionVertical
		width = 11
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"レクチャｰをきく\n"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = 1,
			jump = continue
		]
	end
}
script 1 mmbn45 {
	msgOpen
	"""
	ドリルの しようほうほうを
	レクチャｰしましょう
	"""
	keyWait
		any = false
	clearMsg
	"ないようは かんたんです"
	keyWait
		any = false
	clearMsg
	"""
	カウントボムのじかんが
	0になるまえに
	"""
	keyWait
		any = false
	clearMsg
	"""
	わたしのもつ けいさんしきの
	あいている ばしょに
	はいる こたえを
	"""
	keyWait
		any = false
	clearMsg
	"""
	したのせんたくしの中から
	えらんで
	しきを かんせいさせてください
	"""
	keyWait
		any = false
	clearMsg
	"もし まちがえたら・・・"
	keyWait
		any = false
	clearMsg
	"""
	おしおきとして
	もういちどおなじもんだいを
	やってもらいます!
	"""
	keyWait
		any = false
	clearMsg
	"""
	カウントボムの じかんは
	40びょうに せっていしました
	"""
	keyWait
		any = false
	clearMsg
	"""
	40びょういないに
	ぜんもん せいかいしないと・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	わたしが
	ばくはつに まきこまれます!
	"""
	keyWait
		any = false
	clearMsg
	"""
	ええ ええ
	からだ はってますよ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さいごに なにか
	しつもんは ありますか?
	"""
	keyWait
		any = false
	clearMsg
	"""
	ハイ! ないようなので
	これで レクチャｰを
	しゅうりょうします
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"こんどこそ ドリルきどう\n"
	positionOptionVertical
		width = 13
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"また レクチャｰをきく\n"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 13 mmbn45 {
	msgOpen
	textSpeed
		delay = 0
	positionText
		left = 32
		top = 110
		arrowDistance = 2
	"すきなレベルを えらんでね"
	keyWait
		any = false
	clearMsg
	option
		brackets = false
		left = 1
		right = 1
		up = 2
		down = 2
	space
		count = 1
	"レベル1"
	option
		brackets = false
		left = 0
		right = 0
		up = 3
		down = 3
	space
		count = 1
	"レベル2\n"
	option
		brackets = false
		left = 3
		right = 3
		up = 0
		down = 0
	space
		count = 1
	"レベル3"
	option
		brackets = false
		left = 2
		right = 2
		up = 1
		down = 1
	space
		count = 1
	"レベル4\n"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
script 15 mmbn45 {
	msgOpen
	"""
	ふっふっふっ
	きどう しましたね
	"""
	keyWait
		any = false
	clearMsg
	"""
	この
	カウントボムを ないぞうした
	がくりょくちょうさドリル・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	かくごしてください
	このドリルで あなたの
	へんさちが まるわかりですよ
	"""
	keyWait
		any = false
	clearMsg
	positionOptionVertical
		width = 9
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"ドリルきどう\n"
	positionOptionVertical
		width = 9
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"レクチャｰをきく\n"
	select
		default = 0
		lastCancelSFX = false
		noDelay = false
		BSeparate = false
		disableB = true
		clear = true
		targets = [
			jump = continue,
			jump = continue,
			jump = continue
		]
	end
}
