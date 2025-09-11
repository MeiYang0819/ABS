@echo off
setlocal

set DEST=audio\piano
if not exist %DEST% mkdir %DEST%

set BASE=https://tonejs.github.io/audio/salamander/

for %%F in (
  A1.mp3
  C2.mp3 Ds2.mp3 Fs2.mp3 A2.mp3
  C3.mp3 Ds3.mp3 Fs3.mp3 A3.mp3
  C4.mp3 Ds4.mp3 Fs4.mp3 A4.mp3
  C5.mp3
) do (
  echo Downloading %%F...
  powershell -Command "Invoke-WebRequest -Uri %BASE%%%F -OutFile %DEST%\%%F"
)

echo Done!
pause