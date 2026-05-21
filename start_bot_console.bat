@echo off
setlocal

set "PROJECT_DIR=%~dp0"
set "PYTHON_EXE=C:\Users\user\AppData\Local\Programs\Python\Python314\python.exe"
set "BOT_FILE=telegram_bot_cosmetic_NEW.py"

cd /d "%PROJECT_DIR%"

if not exist "%PYTHON_EXE%" (
    echo Python not found: %PYTHON_EXE%
    pause
    exit /b 1
)

if not exist "%BOT_FILE%" (
    echo Bot file not found: %PROJECT_DIR%%BOT_FILE%
    pause
    exit /b 1
)

echo Starting Telegram bot in console mode...
echo Press Ctrl+C to stop the bot.
echo.

"%PYTHON_EXE%" "%BOT_FILE%"

echo.
echo Bot stopped or crashed. Exit code: %ERRORLEVEL%
pause

endlocal
