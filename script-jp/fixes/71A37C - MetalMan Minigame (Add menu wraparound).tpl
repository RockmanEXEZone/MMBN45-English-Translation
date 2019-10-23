@archive 71A37C
@size 4

script 0 mmbn45 {
	checkFlag
		flag = 5569
		jumpIfTrue = 3
		jumpIfFalse = continue
	checkFlag
		flag = 5570
		jumpIfTrue = 3
		jumpIfFalse = continue
	mugshotShow
		mugshot = MetalMan
	msgOpen
	"""
	さあ しゅぎょうかいしだ
	じゅんびは いいな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
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
	"うん\n"
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
	"しゅぎょうほうほうをきく"
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
	mugshotShow
		mugshot = MetalMan
	msgOpen
	"""
	うむ
	では しゅぎょうほうほうを
	おしえよう
	"""
	keyWait
		any = false
	clearMsg
	"""
	オレを
	上下にうごかして
	"""
	keyWait
		any = false
	clearMsg
	"""
	ながれてくる せきぞうを
	すべて はかいするのだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンで バスタｰを
	撃つことができる
	"""
	keyWait
		any = false
	clearMsg
	"""
	Bボタンをおしつづけ
	気合をためれば
	"""
	keyWait
		any = false
	clearMsg
	"""
	わが ひっさつのこぶしを
	せきぞうに おみまいしよう
	"""
	keyWait
		any = false
	clearMsg
	"""
	チャｰジ時間が
	長ければ 長いほど
	"""
	keyWait
		any = false
	clearMsg
	"""
	わがこぶしの
	攻撃はんいも ひろくなる
	"""
	keyWait
		any = false
	clearMsg
	"""
	一撃で
	おおくの せきぞうを
	はかいすることも かのうだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	左上の3このホイｰルが
	オレのたいりょくだ
	"""
	keyWait
		any = false
	clearMsg
	"""
	せきぞうを こわせなかったり
	ぶつかってしまったときは
	ホイｰルが1こへる
	"""
	keyWait
		any = false
	clearMsg
	"""
	3回ミスをすると
	しゅぎょうがしっぱいに
	なってしまう
	"""
	keyWait
		any = false
	clearMsg
	"気をつけてくれ"
	keyWait
		any = false
	clearMsg
	"""
	ゼニｰやバグのかけらも
	ながれてくることがある
	"""
	keyWait
		any = false
	clearMsg
	"""
	こわさずに とれれば
	しゅぎょうのあとに
	手に 入れることができる
	"""
	keyWait
		any = false
	clearMsg
	"""
	せつめいは いじょうだ
	じゅんびはいいな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
	positionOptionVertical
		width = 8
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
		width = 8
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"もう一回 きく"
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
script 3 mmbn45 {
	mugshotShow
		mugshot = MetalMan
	msgOpen
	"""
	おまえには
	オレを オペレｰトして
	"""
	keyWait
		any = false
	clearMsg
	"""
	オレの しゅぎょうに
	チャレンジしてもらう
	"""
	keyWait
		any = false
	clearMsg
	"""
	このしゅぎょうで
	オレのコブシを
	ふるわせてみろ
	"""
	keyWait
		any = false
	clearMsg
	"""
	さあ しゅぎょうかいしだ
	じゅんびは いいな?
	"""
	keyWait
		any = false
	clearMsg
	mugshotHide
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
	"うん\n"
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
	"しゅぎょうほうほうをきく"
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
