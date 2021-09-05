# MMBN4.5 English Translation

This repository holds the source code for the Mega Man Battle Network 4.5: Real
Operation - English Translation patch.

**Looking for the download link? Grab the translation patch and bonus materials from [The Rockman EXE Zone](https://www.therockmanexezone.com/general/2019/10/26/mega-man-battle-network-4-5-real-operation-english-translation/)!**

## Reporting bugs
Bugs and suggestions are not accepted in this repository. Please visit the project
topic on The Rockman EXE Zone Forums instead:

https://forums.therockmanexezone.com/rockman-exe-4-5-real-operation-translation-patch-t4424.html

## Credits

 *  **Darknet** - Translation
 *  **[Jumi](https://twitter.com/JumpKain)** - Lead Translation
 *  **[Lex](https://twitter.com/lexhikari)** - Editing
 *  **[MegaRockEXE](https://twitter.com/megarock_exe)** - Graphic Design, Instruction Booklet
 *  **[MidniteW](https://twitter.com/MidniteW)** - Editing
 *  **[Prof. 9](https://twitter.com/Prof9)** - Project Manager, Programming, Lead Editing
 *  **[Tim MacKenzie](https://twitter.com/megamanx411)** - Translation

**Special Thanks:** boco, cornshot, elixirdream, Esoteric, Eurasia_M,
Greiga Master, Kerreb17, killer336, luckytyphlosion, Nigoli, NMarkro, Ragathy,
Spikeman, Symes, tanukisuitup, teiohx, TwilightEXE, ubergeek77, Void, WetSalad

## Building

Building is supported only on Windows 10.

First place a compatible Rockman EXE4.5: Real Operation ROM file in the `_rom`
folder. See the `PLACE_ROM_HERE.txt` file for more info on this.

Next, download ARMIPS and place the `armips.exe` executable in the `tools`
folder. The version used is [`d519abb`](https://github.com/Kingcom/armips/commit/d519abb43a4f6c0f816aaae3730fb1ac5d583ecf);
any newer version should also work.

Next, download [Nintendo DS/GBA Compressors](https://www.romhacking.net/utilities/826/)
by CUE and place the `lzss.exe` executable in the `tools` folder.

Compatible versions of [TextPet](https://github.com/Prof9/TextPet) and [PixelPet](https://github.com/Prof9/PixelPet)
are also required. These have been included in the repository.

To build, run the following from a command prompt:
```
make <target>
```
Target can be any of the following:

| Target name | Description                                                               |
| ----------- | ------------------------------------------------------------------------- |
| jp          | Builds Japanese Upgrade Patch.                                            |
| us          | Builds English Translation - North America version.                       |
| us-dev      | Builds English Translation - North America version with developer cheats. |
| eu          | Builds English Translation - Europe version.                              |
| eu-dev      | Builds English Translation - Europe version with developer cheats.        |
| clean       | Removes temp files and English Translation output files.                  |

If no target is specified, it defaults to `us`.

The output ROM will be built in the `_rom` folder, as well as a text dump and
symfile (for use with No$gba).

In addition, all Japanese script files from the original ROM will be extracted
to the `text/jp` and `text/tpl` folders on every build.

## Developer cheats

Targets `us-dev` and `eu-dev` include developer cheats:

 *  Build ID is displayed on the title screen.
 *  Movement speed is increased by 2.5x.
 *  Press Select on the overworld to open a cheats menu. Note: some of the
    options may not work correctly.
 *  Hold Select upon entering the Navi Select screen to unlock all Navis.
 *  Press Select when choosing a target enemy in battle to instantly delete that
    enemy.
 *  Hold Select on the PET screen to instantly receive a mission or minigame
    (only for certain Navis).

## Editing

Most text in the translation is found in the `text/en` folder as plain text
files. Two text editing tools are included in the repository.

**PetEdit** is a dialogue editing tool and is the recommended tool for editing
the text files in `text/en`. It has a built-in previewer which supports the most
used text boxes in the game, and automatically applies the regex replacement
rules defined in `regex.tps` (however, these are stored in the program itself
and not loaded from `regex.tps`). Note that text box previews and used mugshots
are visual only, changing them in PetEdit will not change them in the game. Some
text may display differently in-game than it does in PetEdit.

**TextBoxWorkshop** is a smaller tool, its purpose is just to preview text. It
does not support regex replacement rules or text variables, but it does support
some additional text boxes. Left or right-click the preview change the text box
or mugshot displayed.

All images used in the translation are stored in the `img` folder as PNG files
which can be edited directly. Certain color limits and image placement rules
must be respected, however. For some PNGs, only parts of the image are actually
converted into data for the game. Some palettes can be changed too, but most of
them are not actually converted into game data by the graphics conversion
scripts.

## License
```
BSD 3-Clause License

Copyright (c) 2019, Darknet, Jumi, Lex, MegaRockEXE, MidniteW, Prof. 9, Tim MacKenzie
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

This translation project is not endorsed by or affiliated with Capcom in any
way. Mega Man and Mega Man Battle Network are registered trademarks of Capcom.
All rights belong to their respective owners.
