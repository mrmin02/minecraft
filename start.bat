@echo off
title 마인크래프트 1.18.1 Craft 버킷
:main
set mc_file_path=C:\Users\minseok\Desktop\server123
cls
echo ┍───────────────────────────────
echo │
echo │ 경로 : %path%
echo │
echo │     마인크래프트 1.18.1 Craft 버킷
echo │ 
echo │   1. 서버 구동하기
echo │ 
echo │   2. 에러 발생 시 해결방법
echo │
echo │   3. IP 확인하기
echo │
echo │   4. 도메인 무료 만들기
echo │
echo │   5. 버킷 종료 
echo │
echo │ 
echo ┕───────────────────────────────


set/p a=번호를 적은 후 Enter :
if %a%==1 goto a
if %a%==2 goto b
if %a%==3 goto c
if %a%==4 goto z
if %a%==5 goto d

:a
cls
echo ┍───────────────────────────────
echo │
echo │     마인크래프트 1.18.1 Craft 버킷
echo │ 
echo │   1. 서버 구동하기 - 1GB
echo │ 
echo │   2. 서버 구동하기 - 2GB (권장)
echo │
echo │   3. 서버 구동하기 - 4GB
echo │
echo │   4. 서버 구동하기 - 8GB
echo │
echo │   5. 서버 구동하기 - 16GB
echo │
echo │ 
echo ┕───────────────────────────────

set/p a=번호를 적은 후 Enter :

if %a%==1 goto aa
if %a%==2 goto bb
if %a%==3 goto cc
if %a%==4 goto dd
if %a%==5 goto ddd

:aa
cls
echo ┍───────────────────────────────
echo │
echo │      겜돌이의 마인크래프트 서버파일을 이용해주셔서 감사합니다
echo │
echo │      겜돌이의 구동기가 서버에 이용할 파일를 자동으로
echo │      탐지하고 있습니다. 잠시만 기다려주세요 
echo │
echo │ * 참고사항 : 서버종료는 stop입니다!!
echo │
echo ┕───────────────────────────────
cd %mc_file_path%
java -Xms1G -Xmx1G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:bb
cls
echo ┍───────────────────────────────
echo │
echo │      겜돌이의 마인크래프트 서버파일을 이용해주셔서 감사합니다
echo │
echo │      겜돌이의 구동기가 서버에 이용할 파일를 자동으로
echo │      탐지하고 있습니다. 잠시만 기다려주세요 
echo │
echo │ * 참고사항 : 서버종료는 stop입니다!!
echo │
echo ┕───────────────────────────────
cd %mc_file_path%
java -Xms1G -Xmx2G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:cc
cls
echo ┍───────────────────────────────
echo │
echo │      겜돌이의 마인크래프트 서버파일을 이용해주셔서 감사합니다
echo │
echo │      겜돌이의 구동기가 서버에 이용할 파일를 자동으로
echo │      탐지하고 있습니다. 잠시만 기다려주세요 
echo │
echo │ * 참고사항 : 서버종료는 stop입니다!!
echo │
echo ┕───────────────────────────────
cd %mc_file_path%
java -Xms1G -Xmx4G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:dd
cls
echo ┍───────────────────────────────
echo │
echo │      겜돌이의 마인크래프트 서버파일을 이용해주셔서 감사합니다
echo │
echo │      겜돌이의 구동기가 서버에 이용할 파일를 자동으로
echo │      탐지하고 있습니다. 잠시만 기다려주세요 
echo │
echo │ * 참고사항 : 서버종료는 stop입니다!!
echo │
echo ┕───────────────────────────────
cd %mc_file_path%
java -Xms2G -Xmx8G -jar craftbukkit-1.18.1.jar
pause

:ddd
cls
echo ┍───────────────────────────────
echo │
echo │      겜돌이의 마인크래프트 서버파일을 이용해주셔서 감사합니다
echo │
echo │      겜돌이의 구동기가 서버에 이용할 파일를 자동으로
echo │      탐지하고 있습니다. 잠시만 기다려주세요 
echo │
echo │ * 참고사항 : 서버종료는 stop입니다!!
echo │
echo ┕───────────────────────────────
cd %mc_file_path%
java -Xms4G -Xmx16G -jar craftbukkit-1.18.1.jar
pause

cls
goto main

:b
cls
goto main

:c
cls
goto main

:z
cls
goto main

:d
exit