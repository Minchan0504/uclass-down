@echo off
setlocal
 
:: ���� �ʱ�ȭ
set address=
set fime_name=

:RE
set /p address=��ũ �ּ� �Է�:
if "%address%" == "" goto RE

:RE2
set /p fime_name=������ ������ ���ϸ� �Է�:
if "%fime_name%" == "" goto RE2

ffmpeg.exe -i "%address%" -bsf:a aac_adtstoasc -c copy %fime_name%.mp4

