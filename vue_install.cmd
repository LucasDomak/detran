@echo off
color 09
:menu
cls
date /t
echo Computador: %computername%   Usuario:  %username%

echo              MENU
echo  ==================================
echo * 1. If you have already installed vue and want to run a application press 1  * 
echo * 2. If not press 2  *
echo * 3. Or if you want only install vue press 3 *
set /p opcao= Choose a option:

echo ------------------------------

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3

:opcao1
cls

call npm install vue
call npm run build
call npm run lint

echo running program...
call npm run serve

:opcao2
echo bye soo
:exit

:opcao3
call npm install vue
echo vue installed!
pause
goto menu