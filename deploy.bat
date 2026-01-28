@echo off
title GREEN-API Test Deployment

echo === GREEN-API Test Deployment Script ===
echo.

echo Choose deployment option:
echo 1. GitHub Pages
echo 2. Netlify (drag and drop)
echo 3. Vercel
echo 4. Exit
echo.

set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" (
    echo Deploying to GitHub Pages...
    echo Steps:
    echo 1. Create a new repository on GitHub
    echo 2. Run: git remote add origin https://github.com/yourusername/your-repo.git
    echo 3. Run: git push -u origin main
    echo 4. Enable GitHub Pages in repository settings
    echo.
    set /p username=Enter your GitHub username: 
    set /p reponame=Enter repository name: 
    git remote add origin https://github.com/%username%/%reponame%.git
    git branch -M main
    git push -u origin main
    echo Repository pushed! Enable GitHub Pages in your repo settings.
    pause
) else if "%choice%"=="2" (
    echo For Netlify deployment:
    echo 1. Go to https://netlify.com
    echo 2. Sign up or log in
    echo 3. Drag and drop your project folder
    echo 4. Your site will be deployed automatically
    echo.
    echo Opening Netlify in browser...
    start https://app.netlify.com/drop
    pause
) else if "%choice%"=="3" (
    echo For Vercel deployment:
    echo 1. Go to https://vercel.com
    echo 2. Sign up or log in
    echo 3. Import your GitHub repository
    echo 4. Deploy with one click
    echo.
    echo Opening Vercel in browser...
    start https://vercel.com/new
    pause
) else if "%choice%"=="4" (
    echo Exiting...
    exit /b
) else (
    echo Invalid choice
    pause
    exit /b
)