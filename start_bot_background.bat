@echo off
setlocal

set "PROJECT_DIR=%~dp0"
set "PYTHON_EXE=C:\Users\user\AppData\Local\Programs\Python\Python314\python.exe"
set "BOT_FILE=telegram_bot_cosmetic_NEW.py"
set "OUT_LOG=%PROJECT_DIR%bot.out.log"
set "ERR_LOG=%PROJECT_DIR%bot.err.log"

if not exist "%PYTHON_EXE%" (
    echo Python not found: %PYTHON_EXE%
    exit /b 1
)

if not exist "%PROJECT_DIR%%BOT_FILE%" (
    echo Bot file not found: %PROJECT_DIR%%BOT_FILE%
    exit /b 1
)

for /f "tokens=2 delims=," %%P in ('tasklist /FI "IMAGENAME eq python.exe" /FO CSV /NH 2^>nul') do (
    for /f "tokens=1" %%C in ('wmic process where "ProcessId=%%~P" get CommandLine /value 2^>nul ^| findstr /I "%BOT_FILE%"') do (
        taskkill /PID %%~P /F >nul 2>nul
    )
)

start "" /B "%PYTHON_EXE%" "%PROJECT_DIR%%BOT_FILE%" > "%OUT_LOG%" 2> "%ERR_LOG%"

echo Bot started in background.
echo Output log: %OUT_LOG%
echo Error log: %ERR_LOG%

endlocal
