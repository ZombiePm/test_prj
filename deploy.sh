#!/bin/bash

echo "=== GREEN-API Test Deployment Script ==="
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: GREEN-API test interface"
fi

echo "Choose deployment option:"
echo "1. GitHub Pages"
echo "2. Netlify (drag and drop)"
echo "3. Vercel"
echo "4. Exit"
echo ""

read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Deploying to GitHub Pages..."
        echo "Steps:"
        echo "1. Create a new repository on GitHub"
        echo "2. Run: git remote add origin https://github.com/yourusername/your-repo.git"
        echo "3. Run: git push -u origin main"
        echo "4. Enable GitHub Pages in repository settings"
        echo ""
        read -p "Enter your GitHub username: " username
        read -p "Enter repository name: " reponame
        git remote add origin https://github.com/$username/$reponame.git
        git branch -M main
        git push -u origin main
        echo "Repository pushed! Enable GitHub Pages in your repo settings."
        ;;
    2)
        echo "For Netlify deployment:"
        echo "1. Go to https://netlify.com"
        echo "2. Sign up or log in"
        echo "3. Drag and drop your project folder"
        echo "4. Your site will be deployed automatically"
        echo ""
        echo "Opening Netlify in browser..."
        start https://app.netlify.com/drop
        ;;
    3)
        echo "For Vercel deployment:"
        echo "1. Go to https://vercel.com"
        echo "2. Sign up or log in"
        echo "3. Import your GitHub repository"
        echo "4. Deploy with one click"
        echo ""
        echo "Opening Vercel in browser..."
        start https://vercel.com/new
        ;;
    4)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice"
        exit 1
        ;;
esac