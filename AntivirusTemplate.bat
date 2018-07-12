@echo off
title [Antivirus Name Here]
echo [Antivirus Name Here]
echo SCANNING.....
cls
cls
cls
color 47
dir/s
if %random%.bat exist goto delete
if MEMZDestructive.exe exist goto delete
if MEMZ.exe exist goto delete
if %random%.bat NOT exist goto safe
if MEMZDestructive.exe NOT exist goto safe
if MEMZ.exe NOT exist goto safe
:delete
echo virus found!
echo YES or NO?

set /p variable=

if %variable% equ YES goto situation1

if %variable% equ NO exit
:situation1
/taskkill MEMZDestructive.exe
/taskkill MEMZ.exe
/taskkill %random%.bat
:safe
echo safe
exit

