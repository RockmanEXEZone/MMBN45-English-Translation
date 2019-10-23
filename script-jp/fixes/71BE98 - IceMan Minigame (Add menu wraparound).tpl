@archive 71BE98
@size 9

script 0 mmbn45 {
	checkFlag
		flag = 6452
		jumpIfTrue = 6
		jumpIfFalse = continue
	checkFlag
		flag = 6401
		jumpIfTrue = 5
		jumpIfFalse = continue
	checkFlag
		flag = 6402
		jumpIfTrue = 5
		jumpIfFalse = continue
	positionBox
		left = 0
		top = 12
		type = 3
	msgOpenQuick
	positionText
		left = 15
		top = 110
		arrowDistance = 3
	positionArrow
		left = 144
		top = 141
	"""
	この
	プログラムは
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボクが つくった
	ウイルスげきたいよう
	プログラムです
	"""
	keyWait
		any = false
	clearMsg
	"""
	たのしく かんたんに
	ウイルスをデリｰト
	するです
	"""
	keyWait
		any = false
	clearMsg
	spacePx
		count = 16
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"デリｰトかいし\n"
	spacePx
		count = 16
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"せつめいをきく"
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
	positionBox
		left = 0
		top = 12
		type = 3
	msgOpenQuick
	positionText
		left = 15
		top = 110
		arrowDistance = 3
	positionArrow
		left = 144
		top = 141
	"""
	プログラムの
	つかいかたを
	せつめいするです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスの数は
	ボクの上の
	数字をみるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	この数だけ
	ウイルスが
	いるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスを
	1体たおすごとに
	1へるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	数字が0になったら
	プログラムクリアです
	"""
	keyWait
		any = false
	clearMsg
	"""
	では
	ウイルスのたおしかたを
	おしえるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	左のチップの中から
	十字ボタンでチップを
	えらぶです
	"""
	keyWait
		any = false
	clearMsg
	"""
	チップによって
	こうげきはんいが
	"""
	keyWait
		any = false
	clearMsg
	"""
	ちがうので
	かんがえてチップを
	えらぶです
	"""
	keyWait
		any = false
	clearMsg
	"""
	決まったらAボタンで
	チップをつかうです
	"""
	keyWait
		any = false
	clearMsg
	"""
	攻撃はんいないの
	ウイルスをたおせるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	右上に
	とくてんがあるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	いちどに
	ウイルスを
	たくさんたおせば
	"""
	keyWait
		any = false
	clearMsg
	"""
	高とくてんが
	もらえるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	プログラムをクリアすれば
	とくてんにおうじた
	ゼニｰがもらえるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	つぎは
	ウイルスについて
	せつめいするです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスが
	とじこめられている
	"""
	keyWait
		any = false
	clearMsg
	"""
	アイスキュｰブは
	ヒビが入ったら
	"""
	keyWait
		any = false
	clearMsg
	"""
	つぎのタｰンに
	われるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスは
	つぎのタｰンに
	攻撃してくるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	3回ダメｰジを
	あてられると
	"""
	keyWait
		any = false
	clearMsg
	"""
	このプログラムは
	きょうせい
	しゅうりょうするです
	"""
	keyWait
		any = false
	clearMsg
	"""
	せん より上の
	キュｰブは
	"""
	keyWait
		any = false
	clearMsg
	"""
	攻撃したあとに
	おちてくる
	キュｰブです
	"""
	keyWait
		any = false
	clearMsg
	"""
	あれを見て
	よｰく かんがえて
	"""
	keyWait
		any = false
	clearMsg
	"""
	攻撃する
	ばしょをえらぶです
	"""
	keyWait
		any = false
	clearMsg
	"""
	かんがえないと
	あとでとりかえしが
	つかないです
	"""
	keyWait
		any = false
	clearMsg
	"""
	同じチップが
	3枚そろえば
	"""
	keyWait
		any = false
	clearMsg
	"""
	プログラムアドバンスが
	おこるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	せんより下の
	キュｰブやウイルスを
	すべてデリｰトするです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスを1どに
	3体いじょうたおすと
	"""
	keyWait
		any = false
	clearMsg
	"""
	カウントボムが
	でてくるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	1タｰンに
	1カウントへるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	カウントが0になると
	ボムのまわりの
	"""
	keyWait
		any = false
	clearMsg
	"""
	ウイルスやキュｰブを
	まきこんで
	ばくはつするです
	"""
	keyWait
		any = false
	clearMsg
	"""
	さいごに
	ボｰナスの
	おはなしです
	"""
	keyWait
		any = false
	clearMsg
	"""
	下から3だん
	アイスキュｰブ
	だけになると
	"""
	keyWait
		any = false
	clearMsg
	"""
	9この
	アイスキュｰブが
	こわれて
	"""
	keyWait
		any = false
	clearMsg
	"""
	ボｰナスとくてんが
	もらえるです
	"""
	keyWait
		any = false
	clearMsg
	"ねらってみるです"
	keyWait
		any = false
	clearMsg
	"""
	いじょうが
	このプログラムの
	つかいかたです
	"""
	keyWait
		any = false
	clearMsg
	"""
	すこし長かったですが
	プログラムをスタｰト
	させるですよ?
	"""
	keyWait
		any = false
	clearMsg
	spacePx
		count = 24
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"うん\n"
	spacePx
		count = 24
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"もういっかい"
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
script 5 mmbn45 {
	positionBox
		left = 0
		top = 12
		type = 3
	msgOpenQuick
	positionText
		left = 15
		top = 110
		arrowDistance = 3
	positionArrow
		left = 144
		top = 141
	"""
	この プログラムは
	ぼくがつくった
	"""
	keyWait
		any = false
	clearMsg
	"""
	とくせい
	ウイルスくじょ
	プログラムです
	"""
	keyWait
		any = false
	clearMsg
	"オペレｰタｰさん"
	keyWait
		any = false
	clearMsg
	"""
	これをつかって
	ウイルスを
	くじょするです
	"""
	keyWait
		any = false
	clearMsg
	"いくですよ!"
	keyWait
		any = false
	clearMsg
	spacePx
		count = 16
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"くじょ かいし\n"
	spacePx
		count = 16
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"せつめいをきく"
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
script 6 mmbn45 {
	checkNavi
		navi = 19
		jumpIfTrue = 7
		jumpIfFalse = continue
	positionBox
		left = 0
		top = 12
		type = 3
	msgOpenQuick
	positionText
		left = 15
		top = 110
		arrowDistance = 3
	positionArrow
		left = 144
		top = 141
	"""
	・・・・・・
	・・・・・・・・・
	"""
	keyWait
		any = false
	clearMsg
	"""
	このPETないを
	ウイルスけんさく
	したところ
	"""
	keyWait
		any = false
	clearMsg
	"""
	いま うわさの
	フリｰズウイルスに
	かんせんしているです
	"""
	keyWait
		any = false
	clearMsg
	"""
	このままでは
	PETじたいが
	フリｰズしてしまうです
	"""
	keyWait
		any = false
	clearMsg
	"""
	でも
	ごあんしんを
	"""
	keyWait
		any = false
	clearMsg
	"""
	このプログラムは
	フリｰズウイルス
	たいさくプログラムです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぼくを オペレｰトして
	フリｰズウイルスを
	くじょするです
	"""
	keyWait
		any = false
	clearMsg
	"""
	さあ
	はじめるですよ?
	"""
	keyWait
		any = false
	clearMsg
	spacePx
		count = 16
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"オペレｰトかいし\n"
	spacePx
		count = 16
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"せつめいをきく"
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
script 7 mmbn45 {
	positionBox
		left = 0
		top = 12
		type = 3
	msgOpenQuick
	positionText
		left = 15
		top = 110
		arrowDistance = 3
	positionArrow
		left = 144
		top = 141
	"""
	この てがみは
	ウイルス
	けんさくソフトです
	"""
	keyWait
		any = false
	clearMsg
	"""
	とくに
	さいきんは
	"""
	keyWait
		any = false
	clearMsg
	"""
	PETをフリｰズさせる
	フリｰズウイルスが
	うわさになっているです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ねんのため
	ウイルスけんさく
	かいしです!
	"""
	keyWait
		any = false
	clearMsg
	"""
	・・・・・・
	・・・・・・・・・
	"""
	keyWait
		any = false
	clearMsg
	"!!!!!!"
	keyWait
		any = false
	clearMsg
	"""
	このPETに
	フリｰズウイルスが
	ひそんでいるらしいです
	"""
	keyWait
		any = false
	clearMsg
	"""
	でも
	だいじょうぶです
	"""
	keyWait
		any = false
	clearMsg
	"""
	ぼくには
	ウイルスげきたいよう
	プログラムがあるです
	"""
	keyWait
		any = false
	clearMsg
	"""
	はりきって
	ウイルスをたいじするです
	"""
	keyWait
		any = false
	clearMsg
	spacePx
		count = 16
	option
		brackets = false
		left = 0
		right = 0
		up = 1
		down = 1
	space
		count = 1
	"デリｰトかいし\n"
	spacePx
		count = 16
	option
		brackets = false
		left = 1
		right = 1
		up = 0
		down = 0
	space
		count = 1
	"せつめいをきく"
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