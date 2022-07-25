@echo off
title Zonetool Helper v1.4
mode con: cols=100 lines=36

::Main menu
:menu
cls
:: Thanks https://github.com/massgravel/Microsoft-Activation-Scripts for the UI
echo:
echo:
echo                   _______________________________________________________________
echo                  ^|                                                               ^|
echo                  ^|                                                               ^|
echo                  ^|                        ZONETOOL HELPER                        ^|
echo                  ^|                        Made by forgive                        ^|
echo                  ^|                           ver. 1.4                            ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|                        [!] REMINDER [!]                       ^|
echo                  ^|                                                               ^|
echo                  ^|      Make sure this file is ran in your game folder!          ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [1] Auto-detect                                          ^|
echo                  ^|                                                               ^|
echo                  ^|      [2] Call of Duty 4: Modern Warfare                       ^|
echo                  ^|                                                               ^|
echo                  ^|      [3] Call of Duty: Modern Warfare 2 // IW4x               ^|
echo                  ^|                                                               ^|
echo                  ^|      [4] Call of Duty: Modern Warfare 3                       ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [5] Credits                                              ^|
echo                  ^|                                                               ^|
echo                  ^|      [6] Github Repo                                          ^|
echo                  ^|                                                               ^|
echo                  ^|      [7] Exit                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
echo:          
choice /C:1234567 /N /M ">                                     Select [1,2,3,4,5,6,7]: "

if errorlevel  7 exit
if errorlevel  6 (
	cls
	start https://github.com/4GlVE/extra
	goto menu
	
)
if errorlevel  5 (
	cls
	goto credits
	goto menu

)
if errorlevel  4 (
	cls
	goto iw5
)
if errorlevel  3 (
	cls
	goto iw4
)
if errorlevel  2 (
	cls
	goto iw3
)
if errorlevel  1 (
	cls
	goto versioncheck
)

::Auto-detection script
:versioncheck
if exist iw3mp.exe goto :iw3
if exist iw4mp.exe goto :iw4
if exist iw4x.exe goto :iw4
if exist iw5mp.exe goto :iw5
goto :versionchoice


::COD4 Menu
:iw3
cls
echo:
echo:
echo                   _______________________________________________________________
echo                  ^|                                                               ^|
echo                  ^|                                                               ^|
echo                  ^|                        ZONETOOL HELPER                        ^|
echo                  ^|                        Made by forgive                        ^|
echo                  ^|                           ver. 1.4                            ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|                Call of Duty 4: Modern Warfare                 ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [Y] Download Zonetool                                    ^|
echo                  ^|                                                               ^|
echo                  ^|      [Q] Download Quak's Zonetool [Optional]                  ^|
echo                  ^|                                                               ^|
echo                  ^|          [-] Make Zonetool folders                            ^|
echo                  ^|                                                               ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [N] Back                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [7] Exit                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
echo:          
choice /C YQN7 /N /M ">                                     Select [Y/Q/N/7]: "
GOTO OPTION-%ERRORLEVEL%

:OPTION-1
goto iw3download

:OPTION-2
goto iw3quak

:OPTION-3
goto menu

:OPTION-4
exit


::MW2//IW4x Menu
:iw4
cls
echo:
echo:
echo                   _______________________________________________________________
echo                  ^|                                                               ^|
echo                  ^|                                                               ^|
echo                  ^|                        ZONETOOL HELPER                        ^|
echo                  ^|                        Made by forgive                        ^|
echo                  ^|                           ver. 1.4                            ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|            Call of Duty: Modern Warfare 2 // IW4x             ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [Y] Download Zonetool                                    ^|
echo                  ^|                                                               ^|
echo                  ^|      [Q] Download Quak's Zonetool [Optional]                  ^|
echo                  ^|                                                               ^|
echo                  ^|          [-] Make Zonetool folders                            ^|
echo                  ^|                                                               ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [N] Back                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [7] Exit                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
echo:          
choice /C YQN7 /N /M ">                                     Select [Y/Q/N/7]: "
GOTO OPTION-%ERRORLEVEL%

:OPTION-1
goto iw4download

:OPTION-2
goto iw4quak

:OPTION-3
goto menu

:OPTION-4
exit


::MW3 Menu
:iw5
cls
echo:
echo:
echo                   _______________________________________________________________
echo                  ^|                                                               ^|
echo                  ^|                                                               ^|
echo                  ^|                        ZONETOOL HELPER                        ^|
echo                  ^|                        Made by forgive                        ^|
echo                  ^|                           ver. 1.4                            ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|                 Call of Duty: Modern Warfare 3                ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [Y] Download Zonetool                                    ^|
echo                  ^|                                                               ^|
echo                  ^|      [Q] Download Quak's Zonetool [Optional]                  ^|
echo                  ^|                                                               ^|
echo                  ^|          [-] Make Zonetool folders                            ^|
echo                  ^|                                                               ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [N] Back                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [7] Exit                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
echo:          
CHOICE /C YQN7 /N /M ">                                     Select [Y/Q/N/7]: "
GOTO OPTION-%ERRORLEVEL%

:OPTION-1
goto iw5download

:OPTION-2
goto iw5quak

:OPTION-3
goto menu

:OPTION-4
exit

::Base download scripts
:iw3download
color 06
echo [] Downloading...
powershell -Command "Invoke-WebRequest https://github.com/ZoneTool/zonetool/releases/latest/download/ZoneTool-x86-release.dll -OutFile ZoneTool-x86-release.dll"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ZoneTool/zonetool-binaries/master/zonetool_iw3.exe -OutFile zonetool_iw3.exe"
ren ZoneTool-x86-release.dll zoneiw3.dll
echo [x] Done!
color 0a
goto foldersetup

:iw4download
color 06
[] Downloading...
powershell -Command "Invoke-WebRequest https://github.com/ZoneTool/zonetool/releases/latest/download/ZoneTool-x86-release.dll -OutFile ZoneTool-x86-release.dll"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ZoneTool/zonetool-binaries/master/zonetool_iw4.exe -OutFile zonetool_iw4.exe"
ren ZoneTool-x86-release.dll zonetool.dll
[x] Done!
color 0a
goto foldersetup

:iw5download
color 06
echo [] Downloading...
powershell -Command "Invoke-WebRequest https://github.com/ZoneTool/zonetool/releases/latest/download/ZoneTool-x86-release.dll -OutFile ZoneTool-x86-release.dll"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ZoneTool/zonetool-binaries/master/zonetool_iw5.exe -OutFile zonetool_iw5.exe"
ren ZoneTool-x86-release.dll zonetool.dll
echo [x] Done!
color 0a
goto foldersetup

::Quak download scripts
:iw3quak
color 06
echo [ ] Downloading...
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/559833220716429326/1000962063448940634/zonetool.dll -OutFile zonetool.dll"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ZoneTool/zonetool-binaries/master/zonetool_iw3.exe -OutFile zonetool_iw3.exe"
echo [x] Done!
color 0a
goto foldersetup

:iw4quak
color 06
echo [ ] Downloading...
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/559833220716429326/1000962063448940634/zonetool.dll -OutFile zonetool.dll"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ZoneTool/zonetool-binaries/master/zonetool_iw4.exe -OutFile zonetool_iw4.exe"
echo [x] Done!
color 0a
goto foldersetup

:iw5quak
color 06
echo [ ] Downloading...
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/559833220716429326/1000962063448940634/zonetool.dll -OutFile zonetool.dll"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/ZoneTool/zonetool-binaries/master/zonetool_iw5.exe -OutFile zonetool_iw5.exe"
echo [x] Done!
color 0a
goto foldersetup

::Folder setup script
:foldersetup
md zone_source
md zonetool
goto :credits

::Credits page // Shows on completion
:credits
cls
color 0F
echo:
echo:
echo                   _______________________________________________________________
echo                  ^|                                                               ^| 
echo                  ^|                                                               ^|
echo                  ^|                        ZONETOOL HELPER                        ^|
echo                  ^|                        Made by forgive                        ^|
echo                  ^|                           ver. 1.4                            ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|                            CREDITS                            ^|
echo                  ^|                                                               ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [1] Rekti // For making Zonetool                         ^|
echo                  ^|                                                               ^|
echo                  ^|      [2] Expert // For giving me the idea for this script     ^|
echo                  ^|                                                               ^|
echo                  ^|      [3] Chopper // For help with extra stuff                 ^|
echo                  ^|      ___________________________________________________      ^|
echo                  ^|                                                               ^|
echo                  ^|      [4] Back                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|      [7] Exit                                                 ^|
echo                  ^|                                                               ^|
echo                  ^|_______________________________________________________________^|
choice /C:1234567 /N /M ">                                     Select [1,2,3,4,7]: "

if errorlevel  7 exit
if errorlevel  6 (
	cls 
	goto credits
	
)
if errorlevel  5 (
	cls 
	goto credits
	
)
if errorlevel  4 (
	cls
	goto menu
)
if errorlevel  3 (
	cls
	start https://github.com/chopper1337
	goto credits
)
if errorlevel  2 (
	cls
	start https://github.com/soexperttt
	goto credits
	
)
if errorlevel  1 (
	cls
	start https://github.com/RektInator
	goto credits
	
)