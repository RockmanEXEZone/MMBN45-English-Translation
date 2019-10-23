@archive 71551C
@size 62

script 0 mmbn45 {
	checkFlag
		flag = 4954
		jumpIfTrue = 46
		jumpIfFalse = continue
	checkFlag
		flag = 4955
		jumpIfTrue = 51
		jumpIfFalse = continue
	msgOpen
	mugshotShow
		mugshot = WindMan
	"""
	では
	風をよび
	あらしをまきおこす
	"""
	keyWait
		any = false
	clearMsg
	"""
	こらいからつたわる
	風よびの ぎしき
	"""
	keyWait
		any = false
	clearMsg
	"""
	｢ふうじんのまい｣を
	でんじゅしよう
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
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
	"おねがいします!\n"
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
	"どうやるの?\n"
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
script 1 mmbn45 {
	msgOpen
	mugshotShow
		mugshot = WindMan
	"""
	まずは ぎしきのほうほうを
	おしえなければいけないな
	"""
	keyWait
		any = false
	clearMsg
	"""
	この ぎしきは
	風の ココロをよみ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ワタシのパワｰを
	たつまきに
	おくりこむことで
	"""
	keyWait
		any = false
	clearMsg
	"""
	風の 力を
	ひきだすことができる
	ぎしきだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	ワタシの
	パワｰをおくりこむ
	タイミングは
	"""
	keyWait
		any = false
	clearMsg
	"""
	体が みどりいろに
	光った時だ
	"""
	keyWait
		any = false
	clearMsg
	"""
	その時に タイミングよく
	Bボタンをおしてくれ
	"""
	keyWait
		any = false
	clearMsg
	"""
	パワｰをおくり
	つづけることができれば
	たつまきは パワｰをため
	"""
	keyWait
		any = false
	clearMsg
	"""
	ドンドン 大きく
	せいちょうする
	"""
	keyWait
		any = false
	clearMsg
	"""
	パワｰを
	おくるタイミングを
	まちがえつづけると
	"""
	keyWait
		any = false
	clearMsg
	"""
	たつまきから
	パワｰがぬけて
	小さくなってしまうぞ
	"""
	keyWait
		any = false
	clearMsg
	"""
	たつまきが
	さいだいになったと
	かんじたら
	"""
	keyWait
		any = false
	clearMsg
	"Aボタンをおしてくれ"
	keyWait
		any = false
	clearMsg
	"""
	ためたパワｰを かいほうして
	プログラムをおおぞらに
	はばたかせる
	"""
	keyWait
		any = false
	clearMsg
	"""
	たつまきのパワｰが
	じゅうぶんであれば
	"""
	keyWait
		any = false
	clearMsg
	"""
	もくてきのばしょ まで
	あやつを とばすことができる
	"""
	keyWait
		any = false
	clearMsg
	"""
	ここでたいせつなのは
	風のココロをかんじることだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	たつまきが
	さいだいになったことを
	かんじないと
	"""
	keyWait
		any = false
	clearMsg
	"""
	パワｰをかいほうする
	タイミングを
	まちがえてしまうぞ
	"""
	keyWait
		any = false
	clearMsg
	"これが｢ふうじんのまい｣だ"
	keyWait
		any = false
	clearMsg
	"""
	｢ふうじんのまい｣
	おぼえたか?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"もちろんっ\n"
	positionOptionVertical
		width = 6
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"うっ"
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
script 46 mmbn45 {
	msgOpen
	mugshotShow
		mugshot = WindMan
	"こいつを"
	keyWait
		any = false
	clearMsg
	"""
	風をよび
	あらしをまきおこす
	風よびの ぎしき
	"""
	keyWait
		any = false
	clearMsg
	"｢ふうじんのまい｣で"
	keyWait
		any = false
	clearMsg
	"""
	11000デンノウメｰトル
	さきの インタｰネット6まで
	とばしてもらおう
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"うん\n"
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"どうやるの?\n"
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
script 51 mmbn45 {
	msgOpen
	mugshotShow
		mugshot = WindMan
	"こいつを"
	keyWait
		any = false
	clearMsg
	"""
	風をよび
	あらしをまきおこす
	風よびの ぎしき
	"""
	keyWait
		any = false
	clearMsg
	"｢ふうじんのまい｣で"
	keyWait
		any = false
	clearMsg
	"""
	70000デンノウメｰトルさきの
	ウラインタｰネット1まで
	とばしてもらおう
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"うん\n"
	positionOptionVertical
		width = 7
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"どうやるの?\n"
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
