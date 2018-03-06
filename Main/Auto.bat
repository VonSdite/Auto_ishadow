@echo off
cd allServer
rem select the server
echo ----------------------1. Japan-A-Server--------------------
echo.
echo ----------------------2. Japan-B-Server--------------------
echo.
echo ----------------------3. Japan-C-Server--------------------
echo.
echo ----------------------4. Singapore-A-Server----------------
echo.
echo ----------------------5. Singapore-B-Server----------------
echo.
echo ----------------------6. Singapore-C-Server----------------
echo.
echo ----------------------7. Usa-A-Server----------------------
echo.
CHOICE /C 1234567 /M Please--Input--the--Server--Num

run_shadowsocks.py %errorlevel%
pause
