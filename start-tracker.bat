@echo off
REM MJ Card Tracker - Quick Start Script for Windows
REM This script starts a local web server for the card tracker

echo.
echo ==============================================
echo    MJ Card Tracker - Quick Start
echo ==============================================
echo.

REM Check if we're in the right directory
if not exist "index.html" (
    echo ERROR: index.html not found!
    echo.
    echo Please run this script from the folder containing:
    echo   - index.html
    echo   - jordan_cards_database.json
    echo.
    pause
    exit /b 1
)

if not exist "jordan_cards_database.json" (
    echo WARNING: jordan_cards_database.json not found
    echo The tracker will work but only with 12 sample cards
    echo.
)

echo Files found!
echo.
echo Starting web server on http://localhost:8000
echo.
echo Server will serve files from: %CD%
echo.
echo Open your browser to:
echo    http://localhost:8000/
echo    (or http://localhost:8000/index.html)
echo.
echo Press Ctrl+C to stop the server
echo ==============================================
echo.

REM Start the server
python -m http.server 8000

pause
