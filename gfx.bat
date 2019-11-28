@echo off

tools\PixelPet ^
	Import-Bitmap "img\field\speech-bubbles\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\field\speech-bubbles\speech-bubbles.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y   1 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y   1 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y   9 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y   9 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y   1 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y  25 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Profile.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y  34 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y  34 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y  42 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y  42 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y  34 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y  58 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Preschool.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  58 -y  34 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 106 -y  34 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  58 -y  42 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  90 -y  42 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  90 -y  34 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  82 -y  58 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_School.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 115 -y  34 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 163 -y  34 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 115 -y  42 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 147 -y  42 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 147 -y  34 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 139 -y  58 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Company.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y  67 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y  67 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y  75 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y  75 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y  67 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y  91 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Friend.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 100 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 100 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 108 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 108 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 100 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 124 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_BigBro.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 133 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 133 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 141 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 141 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 133 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 157 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_LilBro.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 166 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 166 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 174 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 174 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 166 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 190 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_BigSis.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 199 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 199 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 207 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 207 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 199 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 223 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_LilSis.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 232 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 232 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 240 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 240 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 232 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 256 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_TVShow.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 265 -w 32 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 265 -w 16 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 265 -w  8 -h 32 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_FavFood.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 298 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 298 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 306 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 306 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 298 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 322 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Wishlist.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 331 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 331 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 339 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 339 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 331 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 355 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Hobby.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 364 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 364 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 372 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 372 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 364 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 388 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Dream.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 397 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 397 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 405 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 405 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 397 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 421 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Crush.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 430 -w 32 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 430 -w 16 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 430 -w  8 -h 32 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Idol.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 463 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 463 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 471 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 471 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 463 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 487 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_Enemy.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 496 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 496 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 504 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 504 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 496 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 520 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_BestSubj.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 529 -w 32 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 529 -w 16 -h  8 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x   1 -y 537 -w 32 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  33 -y 537 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  49 -y 529 -w  8 -h 32 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  25 -y 553 -w  8 -h  8 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\506C18_WorstSubj.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\506C18.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\minigames\numberman\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\minigames\numberman\correct.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y 0 -w 32 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -y 0 -w  8 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 40 -y 8 -w 32 -h 16 --no-reduce ^
	Import-Bitmap "img\minigames\numberman\numbers.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\51234C.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\51234C.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\buster-attack\pal-dedupl.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\buster-attack\buster-attack.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 64 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 96 -h 16 --no-reduce ^
	Pad-Tileset 32 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\512FA0.img.bin" ^
	Clear-Palettes ^
	Import-Bitmap "img\pet\buster-attack\pal.png" Read-Palettes Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\512FA0.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\minigames\labels\pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\minigames\labels\start.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y  0 -w 64 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  64 -y  0 -w 32 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  96 -y  0 -w 16 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 112 -y  0 -w  8 -h  8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\5131A4_Start.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\minigames\labels\ok.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y  0 -w 32 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x   0 -y 32 -w 32 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  32 -y  0 -w  8 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  32 -y 32 -w  8 -h  8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\5131A4_OK.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\minigames\labels\ng.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y  0 -w 32 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x   0 -y 32 -w 32 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  32 -y  0 -w  8 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  32 -y 32 -w  8 -h  8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\5131A4_NG.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\minigames\labels\pass.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y  0 -w 64 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  64 -y  0 -w 32 -h 32 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\5131A4_Pass.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\minigames\labels\clear.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y  0 -w 32 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  32 -y 16 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  40 -y  0 -w 64 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 104 -y  0 -w 16 -h 32 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\5131A4_Clear.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\minigames\labels\fail.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y  0 -w 64 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  64 -y 16 -w 16 -h 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\5131A4_Fail.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\minigames\labels\program-advance.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x   0 -y  0 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  32 -y  0 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  64 -y  0 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  96 -y  0 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  55 -y 24 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  87 -y 24 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 119 -y 24 -w 32 -h 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\5131A4_PA.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\5131A4.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\date-time\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\date-time\controls.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  36 -y 106 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  36 -y 122 -w 16 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  52 -y 112 -w 32 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  84 -y 112 -w  8 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  76 -y 120 -w  8 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  98 -y 112 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 106 -y 112 -w 32 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 148 -y 112 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 156 -y 112 -w 32 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 188 -y 112 -w 16 -h  8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\539E34.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\539E34.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\font\bigfont.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\font\bigfont.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 0 -w 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\601738.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Clear-Tileset --tile-size 16 12 ^
	Import-Bitmap "img\font\vwfont.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\font\vwfont.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\608758.font.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\font\bigfont.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\font\bigfont.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 9 -w 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\612E38.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\font\monofont.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\font\monofont.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\619EF8.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\field\hud\old.pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\field\hud\hp.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Import-Bitmap "img\field\hud\time.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Import-Bitmap "img\field\hud\am-pm.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Import-Bitmap "img\field\hud\weekdays.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y  0 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y  0 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y 16 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 16 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y 32 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 32 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y 48 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 48 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y 64 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 64 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y 80 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 80 -w  8 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y 96 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 96 -w  8 -h 16 --no-reduce ^
	Import-Bitmap "img\field\hud\mission-time.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Import-Bitmap "img\field\hud\chip-gate.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\621158.img.bin" ^
	Clear-Palettes ^
	Import-Bitmap "img\field\hud\new.pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\6210F8.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\capcom\capcom.pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\capcom\capcom.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -h 88 Pad-Tileset 0x7F ^
	Clear-Tilemap ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 --first-tile 0x0000 Export-Bytes "%_TEMP%\62FAB4.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\62F134.img.lz" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\62FA94.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\menu-buttons\pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\pet\menu-buttons\menu-buttons.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y   0 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y   0 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 80 -y   0 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  16 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y  16 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y  16 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  32 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y  32 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y  32 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  48 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y  48 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y  48 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  64 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y  64 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y  64 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  80 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y  80 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y  80 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  96 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y  96 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y  96 -w 32 -h 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\630398.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\630398.pal.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP -x  0 -y 112 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 112 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y 112 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 80 -y   0 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y 128 -w 16 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 16 -y 128 -w 32 -h 16 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y 128 -w 32 -h 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\631798.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\631798.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\navi-names\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\navi-names\megaman.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\631F00.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\pet\navi-names\protoman.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\632248.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\pet\navi-names\bass.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\63287C.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\datetime\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\datetime\weekdays.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\632DE4.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\menu-names\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\menu-names\menu-names.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -y  0 -h 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\632FA4.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP -y  8 -h 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6330A4.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP -y 16 -h 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6331A4.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP -y 24 -h 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6332A4.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP -y 32 -h 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6333A4.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP -y 40 -h 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6334A4.img.bin" ^
	Clear-Tileset ^
	Generate-Tilemap GBA-4BPP -y 48 -h 8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6335A4.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\profile-intro\pal.png" Read-Palettes --palette-number 10 Convert-Palettes GBA ^
	Import-Bitmap "img\profile-intro\intro.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\634BB8.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\63466C.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\schedule\foreground.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\schedule\numbers.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6359D0.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\schedule\foreground.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\schedule\month-names.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y   0 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y   0 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y  16 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y  16 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y  32 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y  32 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y  48 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y  48 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y  64 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y  64 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y  80 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y  80 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y  96 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y  96 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y 112 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y 112 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y 128 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y 128 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y 144 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y 144 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y 160 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y 160 -w  8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y 176 -w 16 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y 176 -w  8 -h 16 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\635DD0.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\schedule\foreground.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\schedule\event-types.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce --height 16 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6364D0.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\schedule\foreground.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\schedule\days.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6365B8.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\schedule\event-frequency.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\schedule\event-frequency.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\63673C.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\schedule\calendar.pal.png" Read-Palettes --palette-number 9 Convert-Palettes GBA ^
	Import-Bitmap "img\pet\schedule\calendar-sunday.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\63816C_U.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\63756C_U.img.bin" ^
	Clear-Tilemap Clear-Tileset ^
	Import-Bitmap "img\pet\schedule\calendar-monday.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\63816C_E.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\63756C_E.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\navi-select\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\navi-select\navi-names.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\639208.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\text-input\pal.png" Read-Palettes --palette-number 9 Convert-Palettes GBA ^
	Import-Bitmap "img\text-input\page1-full.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tileset Export-Bytes "%_TEMP%\63ABF4.img.bin" ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\6412D4.map.bin" ^
	Clear-Tilemap Clear-Tileset ^
	Import-Bitmap "img\text-input\page2-full.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tileset Export-Bytes "%_TEMP%\63D174.img.bin" ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\641784.map.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\pa-memo\pal-dedupl.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\pa-memo\chip.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x 64 -y   0 -w 16 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  72 -w 64 -h 64 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 80 -y  64 -w  8 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 48 -y  64 -w 16 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y  64 -w 16 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 80 -y  96 -w  8 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 64 -y  96 -w 16 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 80 -y 104 -w  8 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 64 -y 104 -w 16 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 64 -y  64 -w 16 -h 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w 64 -h 64 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 80 -y   0 -w  8 -h 32 --no-reduce ^
	Import-Bitmap "img\pet\pa-memo\combo.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y   8 -w 32 -h  8 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w  8 -h  8 --no-reduce ^
	Import-Bitmap "img\pet\pa-memo\num.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -y   0 -w 56 -h  8 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6D8188.img.bin" ^
	Clear-Palettes ^
	Import-Bitmap "img\pet\pa-memo\pal.png" Read-Palettes Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\6D8188.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\tournament\label.pal.png" Read-Palettes --palette-size 16 --palette-number 2 Convert-Palettes GBA ^
	Import-Bitmap "img\tournament\silver-tournament-label.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6E5480.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\tournament\official-tournament-label.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6E5518.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\tournament\gold-tournament-label.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6E55B0.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\tournament\under-tournament-label.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6E5648.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\tournament\everyday-tournament-label.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6E56F4.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6E443C.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\6E540C.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\tournament\silver-tournament.pal.png" Read-Palettes --palette-number 5 Convert-Palettes GBA ^
	Import-Bitmap "img\tournament\silver-tournament-bracket.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x11 Export-Bytes "%_TEMP%\6E6F4C.map.bin" ^
	Clear-Tilemap Clear-Palettes ^
	Import-Bitmap "img\tournament\gold-tournament.pal.png" Read-Palettes --palette-number 6 Convert-Palettes GBA ^
	Import-Bitmap "img\tournament\gold-tournament-bracket.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x11 Export-Bytes "%_TEMP%\6E70D0.map.bin" ^
	Clear-Tilemap Clear-Palettes ^
	Import-Bitmap "img\tournament\official-tournament.pal.png" Read-Palettes --palette-number 7 Convert-Palettes GBA ^
	Import-Bitmap "img\tournament\official-tournament-bracket.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x11 Export-Bytes "%_TEMP%\6E7254.map.bin" ^
	Clear-Tilemap Clear-Palettes ^
	Import-Bitmap "img\tournament\under-tournament.pal.png" Read-Palettes --palette-number 8 Convert-Palettes GBA ^
	Import-Bitmap "img\tournament\under-tournament-bracket.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x11 Export-Bytes "%_TEMP%\6E73D8.map.bin" ^
	Clear-Tilemap Clear-Palettes ^
	Import-Bitmap "img\tournament\everyday-tournament.pal.png" Read-Palettes --palette-number 9 Convert-Palettes GBA ^
	Import-Bitmap "img\tournament\everyday-tournament-bracket.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x11 Export-Bytes "%_TEMP%\6E7590.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6E5CD4.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\chip-roulette\chip-roulette.pal.png" Read-Palettes --palette-number 10 Convert-Palettes GBA ^
	Import-Bitmap "img\chip-roulette\chip-roulette.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x101 Export-Bytes "%_TEMP%\6F18B4.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6F1660.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\subchip\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\pet\subchip\background.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FBC68.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\pet\subchip\submem-frame-x1.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FBDAC.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\pet\subchip\submem-frame-x2.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FBDD8.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\pet\subchip\submem-frame-x3.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FBE08.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\pet\subchip\submem-frame-x4.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FBE38.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6FB82C.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\sort-chips\pal.png" Read-Palettes --palette-number 13 Convert-Palettes GBA ^
	Import-Bitmap "img\pet\sort-chips\sort-chips.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FCD54.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6FCA14.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\subchip\active.pal.png" Read-Palettes --palette-number 11 Convert-Palettes GBA ^
	Import-Bitmap "img\pet\subchip\active.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x320 Export-Bytes "%_TEMP%\6FC100.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6FBE68.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\bbs\bbs.pal.png" Read-Palettes --palette-number 4 Convert-Palettes GBA ^
	Import-Bitmap "img\bbs\bbs.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP Pad-Tileset 17 ^
	Clear-Tilemap ^
	Import-Bitmap "img\bbs\bbs-label.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FFD68.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\bbs\under-label.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\6FFDAC.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\6FF378.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\shop\pal-dedupl.png" Read-Palettes --palette-number 5 Convert-Palettes GBA ^
	Import-Bitmap "img\shop\list.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x12 Export-Bytes "%_TEMP%\705370.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\shop\zenny.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x12 Export-Bytes "%_TEMP%\705568.map.bin" ^
	Clear-Tilemap ^
	Import-Bitmap "img\shop\items.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x12 Export-Bytes "%_TEMP%\705620.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\705918.img.bin" ^
	Clear-Tilemap Clear-Tileset ^
	Import-Bitmap "img\shop\bugfrags.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x3B Export-Bytes "%_TEMP%\7055C4.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\705E58.img.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\706178.img.bin" ^
	Clear-Palettes Clear-Tilemap Clear-Tileset ^
	Import-Bitmap "img\shop\pal-dedupl.png" Read-Palettes --palette-number 14 Convert-Palettes GBA ^
	Import-Bitmap "img\shop\bugfrags.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x2C0 Export-Bytes "%_TEMP%\70567C.map.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\pet\classic\pal.png" Read-Palettes --palette-size 16 Convert-Palettes GBA ^
	Import-Bitmap "img\pet\classic\labels1.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\70AA14.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\pet\classic\icons.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Import-Bitmap "img\pet\classic\frame.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -w 32 --no-reduce ^
	Import-Bitmap "img\pet\classic\labels2.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\70ABD4.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\70ABD4.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\battle\elemplus\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\battle\elemplus\fireplus.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -w 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\721ADC.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\battle\elemplus\aquapowr.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -w 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\721C5C.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\battle\elemplus\thunplus.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -w 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\721DDC.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\battle\elemplus\woodpowr.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP -x  0 -w 32 --no-reduce ^
	Generate-Tilemap GBA-4BPP -x 32 -w 16 --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\721F5C.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\battle\battle-skip\pal.png" Read-Palettes --palette-number 9 Convert-Palettes GBA ^
	Import-Bitmap "img\battle\battle-skip\battle-skip.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x18C --first-tile 0x0000 Export-Bytes "%_TEMP%\016318.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\72213C.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\battle\result\pal.png" Read-Palettes --palette-number 9 Convert-Palettes GBA ^
	Import-Bitmap "img\battle\result\result.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\772B20.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\7704A0.img.bin" ^
	Clear-Tileset Clear-Tilemap ^
	Import-Bitmap "img\battle\result\winner.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\772E50.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\7711A0.img.bin" ^
	Clear-Tileset Clear-Tilemap ^
	Import-Bitmap "img\battle\result\loser.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x1 Export-Bytes "%_TEMP%\773180.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\771EA0.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\battlechip\grrrtopman.pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\battlechip\grrrtopman.png" Convert-Bitmap GBA Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\7508F0.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\battle\program-advance\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\battle\program-advance\program-advance.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  0 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x  8 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 16 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 24 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 32 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 40 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 48 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 56 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 64 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 72 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 80 -y 0 -w 8 -h 16 ^
	Generate-Tilemap GBA-4BPP --no-reduce -x 88 -y 0 -w 8 -h 16 ^
	Serialize-Tileset Export-Bytes "%_TEMP%\76E240.img.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\76ED80.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\battle\customizing\pal.png" Read-Palettes --palette-number 10 Convert-Palettes GBA ^
	Import-Bitmap "img\battle\customizing\customizing.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x9C Export-Bytes "%_TEMP%\016108.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\76E780.img.bin" ^
	Clear-Tileset Clear-Tilemap ^
	Import-Bitmap "img\battle\customizing\stratchange.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP ^
	Serialize-Tilemap --base-tile 0x9C Export-Bytes "%_TEMP%\0163F4.map.bin" ^
	Serialize-Tileset Export-Bytes "%_TEMP%\76E940.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\battle\atkplus\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\battle\atkplus\atk.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\770080.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\battle\atkplus\navi.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\7700E0.img.bin" ^
	Clear-Tileset ^
	Import-Bitmap "img\battle\atkplus\num.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\770140.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\title\options\pal.png" Read-Palettes Convert-Palettes GBA ^
	Import-Bitmap "img\title\options\options.png" Convert-Bitmap GBA ^
	Generate-Tilemap GBA-4BPP --no-reduce ^
	Serialize-Tileset Export-Bytes "%_TEMP%\7CEA94.img.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\title\title-us\copyright-pal.png" Read-Palettes Convert-Palettes GBA ^
	Pad-Palettes 16 ^
	Serialize-Palettes Export-Bytes "%_TEMP%\7CEF8C_U.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\title\title-us\orb-normal-15.png" Extract-Palettes --palette-size 224 ^
	Import-Bitmap "img\title\title-us\title-223.png" Extract-Palettes --palette-size 224 ^
	Generate-Tilemap GBA-8BPP Convert-Palettes GBA ^
	Serialize-Tileset Export-Bytes "%_TEMP%\7CEFA4_U.img.bin" ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\7D36A4_U.map.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\7D3BE4_U.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\title\title-us\orb-dark-15.png" Extract-Palettes --palette-size 16 Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\7D3DA4.pal.bin" ^
	Clear-Palettes ^
	Import-Bitmap "img\title\title-us\orb-normal-15.png" Extract-Palettes --palette-size 16 Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\7D3DC4.pal.bin" ^
	Clear-Palettes ^
	Import-Bitmap "img\title\title-us\orb-light-15.png" Extract-Palettes --palette-size 16 Convert-Palettes GBA ^
	Serialize-Palettes Export-Bytes "%_TEMP%\7D3DE4.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\title\title-eu\title-223.png" ^
	Extract-Palettes --palette-size 224 --x 240 ^
	Extract-Palettes --palette-size 224 ^
	Pad-Palettes 224 --color 0x00FF00 ^
	Generate-Tilemap GBA-8BPP Convert-Palettes GBA ^
	Serialize-Tileset Export-Bytes "%_TEMP%\7CEFA4_E.img.bin" ^
	Serialize-Tilemap Export-Bytes "%_TEMP%\7D36A4_E.map.bin" ^
	Serialize-Palettes Export-Bytes "%_TEMP%\7D3BE4_E.pal.bin"
if %errorlevel% neq 0 goto :error

tools\PixelPet ^
	Import-Bitmap "img\title\title-eu\copyright-pal.png" Convert-Bitmap GBA Read-Palettes ^
	Pad-Palettes 16 ^
	Serialize-Palettes Export-Bytes "%_TEMP%\7CEF8C_E.pal.bin"
if %errorlevel% neq 0 goto :error

exit /b 0

:error
exit /b 1