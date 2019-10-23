.macro .create_lz,filename
	.create substr(filename, 0, rfind(filename, ".")) + ".lz",0
		.dw (filesize(filename) + 4) << 8
		.import filename
	.close
.endmacro
.gba

.create_lz TEMP+"/512FA0.dmp"
.create_lz TEMP+"/631F00.img.bin"
.create_lz TEMP+"/632248.img.bin"
.create_lz TEMP+"/63287C.img.bin"
.create_lz TEMP+"/63466C.img.bin"
.create_lz TEMP+"/634BB8.map.bin"
.create_lz TEMP+"/6364D0.img.bin"
.create_lz TEMP+"/6365B8.img.bin"
.create_lz TEMP+"/63673C.img.bin"
.create_lz TEMP+"/639208.img.bin"
.create_lz TEMP+"/6D8188.dmp"

.create_lz TEMP+"/6E443C.img.bin"
.create_lz TEMP+"/6E540C.pal.bin"
.create_lz TEMP+"/6E5480.map.bin"
.create_lz TEMP+"/6E5518.map.bin"
.create_lz TEMP+"/6E55B0.map.bin"
.create_lz TEMP+"/6E5648.map.bin"
.create_lz TEMP+"/6E56F4.map.bin"

.create_lz TEMP+"/6E5CD4.img.bin"
.create_lz TEMP+"/6E6F4C.map.bin"
.create_lz TEMP+"/6E70D0.map.bin"
.create_lz TEMP+"/6E7254.map.bin"
.create_lz TEMP+"/6E73D8.map.bin"
.create_lz TEMP+"/6E7590.map.bin"
.create_lz TEMP+"/6F1660.img.bin"
.create_lz TEMP+"/6F18B4.map.bin"
.create_lz TEMP+"/6FB82C.img.bin"
.create_lz TEMP+"/6FBC68.map.bin"
.create_lz TEMP+"/6FBDAC.map.bin"
.create_lz TEMP+"/6FBDD8.map.bin"
.create_lz TEMP+"/6FBE08.map.bin"
.create_lz TEMP+"/6FBE38.map.bin"
.create_lz TEMP+"/6FCA14.img.bin"
.create_lz TEMP+"/6FCD54.map.bin"
.create_lz TEMP+"/6FBE68.img.bin"
.create_lz TEMP+"/6FC100.map.bin"
.create_lz TEMP+"/6FF378.img.bin"
.create_lz TEMP+"/7CEA94.img.bin"
.create_lz TEMP+"/7CEF8C_E.pal.bin"
.create_lz TEMP+"/7CEF8C_U.pal.bin"
.create_lz TEMP+"/7CEFA4_E.img.bin"
.create_lz TEMP+"/7CEFA4_U.img.bin"
.create_lz TEMP+"/7D36A4_E.map.bin"
.create_lz TEMP+"/7D36A4_U.map.bin"
.create_lz TEMP+"/7D3BE4_E.pal.bin"
.create_lz TEMP+"/7D3BE4_U.pal.bin"