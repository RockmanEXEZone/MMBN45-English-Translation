@echo off
setlocal

set "_TEMP=_temp"
set "_LOG=_temp\_log.txt"
set "_ROM_IN=_rom\Rockman EXE45 - Real Operation (J).gba"
set "_ROM_OUT=_rom\Mega Man Battle Network 45 - Real Operation.gba"
set "_LZSS_FLAGS=-ewn"

set "_TARGET=%1"
if [%1]==[] (
	set "_TARGET=US"
)
if /I "%_TARGET%"=="jp" (
	set "_TARGET=JP"
	set "_ROM_OUT=_rom\Rockman EXE45 - Real Operation.gba"
	set "_REGION=(J)(Upgrade Patch)"
	set "_EUROPE="
	set "_DEBUG="
) else if /I "%_TARGET%"=="eu-dev" (
	set "_TARGET=EU-Dev"
	set "_REGION=(E)(Dev)"
	set "_EUROPE=1"
	set "_DEBUG=1"
) else if /I "%_TARGET%"=="eu" (
	set "_TARGET=EU"
	set "_REGION=(E)"
	set "_EUROPE=1"
	set "_DEBUG="
) else if /I "%_TARGET%"=="us-dev" (
	set "_TARGET=US-Dev"
	set "_REGION=(U)(Dev)"
	set "_EUROPE="
	set "_DEBUG=1"
) else if /I "%_TARGET%"=="us" (
	set "_TARGET=US"
	set "_REGION=(U)"
	set "_EUROPE="
	set "_DEBUG="
) else if /I "%_TARGET%" neq "clean" (
	echo Unknown target %1.
	echo.
	echo An error occurred, ROM could not be built.
	exit /b 1
)

set "_REVISION=ffffffff"
if exist ".git" (
	for /F %%f in ('git rev-parse --short HEAD') do set "_REVISION=%%f"
)
for %%f in ("%_TEMP%") do (
	set "_TEMP=%%~dpnxf"
)
for %%f in ("%_LOG%") do (
	set "_LOG=%%~dpnxf"
	set "_LOG_FILE=%%~nxf"
)
for %%f in ("%_ROM_IN%") do (
	set "_ROM_IN=%%~dpnxf"
)
for %%f in ("%_ROM_OUT%") do (
	set "_ROM_OUT_BASE=%%~dpnf"
	set "_SYM_OUT=%%~dpnf %_REGION%.sym"
	set "_TEMP_OUT=%%~dpnf %_REGION%.temp"
	set "_TPL_OUT=%%~dpnf %_REGION%.tpl"
	set "_TXT_OUT=%%~dpnf %_REGION%.txt"
	set "_ROM_OUT=%%~dpnf %_REGION%%%~xf"
	set "_ROM_OUT_FILE=%%~nf %_REGION%%%~xf"
)

if /I "%1"=="clean" (
	echo Cleaning.
	if exist "%_TEMP%" rmdir /S /Q "%_TEMP%"
	if exist "%_LOG%" del /F "%_LOG%"
	if exist "%_ROM_OUT_BASE%*.gba" del /F "%_ROM_OUT_BASE%*.gba"
	if exist "%_ROM_OUT_BASE%*.sym" del /F "%_ROM_OUT_BASE%*.sym"
	if exist "%_ROM_OUT_BASE%*.temp" del /F "%_ROM_OUT_BASE%*.temp"
	if exist "%_ROM_OUT_BASE%*.tpl" del /F "%_ROM_OUT_BASE%*.tpl"
	if exist "%_ROM_OUT_BASE%*.txt" del /F "%_ROM_OUT_BASE%*.txt"
	exit /b %errorlevel%
)

if defined _EUROPE (
	set "_ARMIPS_FLAG=-definelabel VAR_EU 1"
) else (
	set "_ARMIPS_FLAG=-definelabel VAR_EU 0"
)
if defined _DEBUG (
	set "_ARMIPS_FLAG=%_ARMIPS_FLAG% -definelabel VAR_DEBUG 1"
	set "_SCRIPT_POST=Read-Text-Archives "script-en" --format tpl --patch Read-Text-Archives "script-en\dev" --format tpl --patch"
) else (
	set "_ARMIPS_FLAG=%_ARMIPS_FLAG% -definelabel VAR_DEBUG 0"
	set "_SCRIPT_POST=Read-Text-Archives "script-en" --format tpl --patch"
)

mkdir "%_TEMP%" 2> nul
rem. > "%_LOG%"

if not exist "%_ROM_IN%" (
	echo File not found: "%_ROM_IN%"
	goto :error
)
for /f "skip=1" %%h in ('CertUtil -hashfile "%_ROM_IN%" SHA1') do (
	set "_ROM_HASH=%%h"
	goto :checksha1
)
:checksha1:
if /I "%_ROM_HASH%"=="f89ef4ca8ec1823eb75fa184f2d0f9e66cc78a59" (
	echo Input ROM: Rockman EXE4.5: Real Operation ^(Japan^)
) else if /I "%_ROM_HASH%"=="6efcd1f8ef84f6f90f265a33ca3d469fb6c41e7f" (
	echo Input ROM: Rockman EXE4.5: Real Operation ^(Japan^)^(Wii U Virtual Console^)
) else (
	echo Warning: Input ROM is not recognized!
	echo SHA1: %_ROM_HASH%
)

if /I "%_TARGET%"=="jp" (
	echo Importing text...
	tools\TextPet ^
		Load-Plugins "tools\plugins" ^
		Game EXE45 ^
		Load-File-Index "tools\exe45.tpi" ^
		Read-Text-Archives "%_ROM_IN%" ^
		Write-Text-Archives "text\jp" --format txt ^
		Write-Text-Archives "text\tpl" --format tpl ^
		Read-Text-Archives "script-jp\fixes" --recursive --format tpl --patch ^
		Write-Text-Archives "%_TPL_OUT%" --format tpl --single ^
		Write-Text-Archives "%_TXT_OUT%" --format txt --single ^
		Write-Text-Archives "%_TEMP%" --format msg >> "%_LOG%" || goto :error

	echo Compressing files...
	tools\lzss %_LZSS_FLAGS% "%_TEMP%\6F7D10.msg" >> %_LOG% || goto :error

	echo Patching files...
	tools\armips "main_jp.asm" ^
		-sym2 "%_SYM_OUT%" ^
		-temp "%_TEMP_OUT%" ^
		-strequ ROM_IN "%_ROM_IN%" ^
		-strequ ROM_OUT "%_ROM_OUT%" ^
		-strequ TEMP "%_TEMP%" >> "%_LOG%" || goto :error

	goto :done
)

echo Building target %_TARGET%.

echo Generating images...
call gfx.bat >> "%_LOG%" || goto :error

for %%f in (sprite/*.spr.asm) do (
	tools\armips "sprite\%%f" -strequ TEMP "%_TEMP%" >> "%_LOG%" || goto :error
)

echo Importing text...
tools\TextPet ^
	Load-Plugins "tools\plugins" ^
	Game EXE45 ^
	Load-File-Index "tools\exe45.tpi" ^
	Read-Text-Archives "%_ROM_IN%" ^
	Write-Text-Archives "text\jp" --format txt ^
	Write-Text-Archives "text\tpl" --format tpl ^
	Read-Text-Archives "script-jp" --recursive --format tpl --patch ^
	Game EXE45T ^
	Flood ^
	Insert-Text-Boxes "text\en" --recursive ^
	Insert-Text-Boxes "text\import" --recursive ^
	Run-Script "regex.tps" ^
	%_SCRIPT_POST% ^
	Write-Text-Archives "%_TEMP%" --format msg ^
	Write-Text-Archives "%_TPL_OUT%" --format tpl --single ^
	Write-Text-Archives "%_TXT_OUT%" --format txt --single >> "%_LOG%" || goto :error

echo Compressing files...
tools\armips "lz.asm" -strequ TEMP "%_TEMP%" >> "%_LOG%" || goto :error

call lz.bat >> "%_LOG%" || goto :error

echo Patching files...
tools\armips "main_en.asm" ^
	-sym2 "%_SYM_OUT%" ^
	-temp "%_TEMP_OUT%" ^
	-strequ ROM_IN "%_ROM_IN%" ^
	-strequ ROM_OUT "%_ROM_OUT%" ^
	-strequ TEMP "%_TEMP%" ^
	-strequ VAR_TARGET "%_TARGET%" ^
	-definelabel VAR_REVISION 0x%_REVISION% ^
	%_ARMIPS_FLAG% >> "%_LOG%" || goto :error

:done
echo.
echo %_ROM_OUT_FILE% built successfully.
title %comspec%
exit /b 0

:error
echo.
echo An error occurred, ROM could not be built. See temp\%_LOG_FILE% for details.
title %comspec%
pause
exit /b 1