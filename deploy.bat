@echo off
REM N7 Banking - Quick Deploy Script for Windows
REM This script helps you deploy to Vercel quickly

echo ================================================
echo   N7 Banking - Quick Deploy to Vercel
echo ================================================
echo.

REM Check if git is initialized
if not exist .git\ (
    echo Initializing git repository...
    git init
    echo Git initialized
) else (
    echo Git repository already exists
)

REM Check if Vercel CLI is installed
where vercel >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Vercel CLI not found
    echo Installing Vercel CLI globally...
    call npm install -g vercel
    echo Vercel CLI installed
)

REM Test build locally
echo.
echo Testing production build...
call npm run build

if %ERRORLEVEL% NEQ 0 (
    echo Build failed. Please fix errors before deploying.
    pause
    exit /b 1
)

echo Build successful
echo.
echo Ready to deploy to Vercel?
echo.
echo Options:
echo 1. Deploy to production (vercel --prod)
echo 2. Deploy to preview (vercel)
echo 3. Exit
echo.

set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" (
    echo.
    echo Deploying to production...
    call vercel --prod
) else if "%choice%"=="2" (
    echo.
    echo Deploying to preview...
    call vercel
) else if "%choice%"=="3" (
    echo Exiting. No deployment made.
    exit /b 0
) else (
    echo Invalid choice. Exiting.
    pause
    exit /b 1
)

echo.
echo ================================================
echo   Deployment complete!
echo ================================================
echo.
echo Next steps:
echo   - Check your deployment at the URL provided above
echo   - Set up custom domain in Vercel dashboard (optional)
echo   - Enable analytics in Vercel dashboard (optional)
echo.
echo Your N7 Banking site is live!
echo.
pause
