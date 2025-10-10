@echo off
echo ========================================
echo Zener - Quick Production Build
echo ========================================
echo.

echo [1/2] Installing dependencies...
call npm install
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)
echo.

echo [2/2] Building production application...
echo This may take several minutes...
echo.

call npm run build

if errorlevel 1 (
    echo.
    echo ERROR: Build failed
    pause
    exit /b 1
)

echo.
echo ========================================
echo Build completed successfully!
echo.
echo The installer can be found in:
echo src-tauri\target\release\bundle\
echo ========================================
echo.
pause
