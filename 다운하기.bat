@echo off
setlocal
 
:: 변수 초기화
set address=
set fime_name=

:RE
set /p address=링크 주소 입력:
if "%address%" == "" goto RE

:RE2
set /p fime_name=생성할 동영상 파일명 입력:
if "%fime_name%" == "" goto RE2

ffmpeg.exe -i "%address%" -bsf:a aac_adtstoasc -c copy %fime_name%.mp4

