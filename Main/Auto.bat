@echo off
cd allServer
rem select the server
echo ----------------------1. Japan-A-Server----------------------
echo.
echo ----------------------2. Japan-B-Server----------------------
echo.
echo ----------------------3. Japan-C-Server----------------------
echo.
echo ----------------------4. Singapore-A-Server----------------------
echo.
echo ----------------------5. Singapore-B-Server----------------------
echo.
echo ----------------------6. Singapore-C-Server----------------------
echo.
echo ----------------------7. Usa-A-Server----------------------
echo.
CHOICE /C 1234567 /M Please--Input--the--Server--Num

if %errorlevel%==1 goto JapanA
if %errorlevel%==2 goto JapanB
if %errorlevel%==3 goto JapanC
if %errorlevel%==4 goto SingaporeA
if %errorlevel%==5 goto SingaporeB
if %errorlevel%==6 goto SingaporeC
if %errorlevel%==7 goto UsaA

:JapanA
run_shadowsocks.py 1
goto end

:JapanB
run_shadowsocks.py 2
goto end

:JapanC
run_shadowsocks.py 3
goto end

:SingaporeA
run_shadowsocks.py 4
goto end

:SingaporeB
run_shadowsocks.py 5
goto end

:SingaporeC
run_shadowsocks.py 6
goto end

:UsaA
run_shadowsocks.py 7
goto end

:end
pause
