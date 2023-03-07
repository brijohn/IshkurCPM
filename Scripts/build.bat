@ECHO OFF
cd ..\System

REM Assemble the CP/M system into a binary image
REM Then move to outputs folder
..\Build\zasm cpm22.asm -u -w -b cpm22.bin
..\Build\zasm boot.asm -u -w -b boot.bin
move cpm22.bin bin >NUL
move cpm22.lst ..\Output\Listings >NUL
move boot.bin bin >NUL
move boot.lst ..\Output\Listings >NUL

REM Build Ishkur-specific applications
cd ..\Applications
..\Build\zasm init.asm -u -w -b init.com
move init.com ..\Directory >NUL
move init.lst ..\Output\Listings >NUL

REM Assemble the disk image
cd ..\Build\cpmtools
.\mkfs.cpm -f osborne1 -b ..\..\System\bin\boot.bin -b ..\..\System\bin\font.bin -b ..\..\System\bin\cpm22.bin ishkur.img
move ishkur.img ..\..\Output >NUL

REM This loop is needed because winblows sucks
for %%f in (..\..\Directory\*) do (
	copy %%f %%~nf%%~xf >NUL
	echo Writing %%~nf%%~xf to image
	cpmcp -f osborne1 ..\..\Output\ishkur.img %%~nf%%~xf 0:
	del %%~nf%%~xf
)

REM Resize the file
REM If only I had to `dd` command...
cd ..\..\Output
python ..\Build\e5pad.py ishkur.img 204800