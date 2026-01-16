#!/bin/bash

# N7 Banking - Quick Deploy Script
# This script helps you deploy to Vercel quickly

echo "🚀 N7 Banking - Quick Deploy to Vercel"
echo "========================================"
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git repository already exists"
fi

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo ""
    echo "❌ Vercel CLI not found"
    echo "📥 Installing Vercel CLI globally..."
    npm install -g vercel
    echo "✅ Vercel CLI installed"
fi

# Test build locally
echo ""
echo "🔨 Testing production build..."
npm run build

if [ $? -eq 0 ]; then
    echo "✅ Build successful"
else
    echo "❌ Build failed. Please fix errors before deploying."
    exit 1
fi

# Ask if user wants to deploy
echo ""
echo "Ready to deploy to Vercel?"
echo ""
echo "Options:"
echo "1. Deploy to production (vercel --prod)"
echo "2. Deploy to preview (vercel)"
echo "3. Exit"
echo ""
read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        echo ""
        echo "🚀 Deploying to production..."
        vercel --prod
        ;;
    2)
        echo ""
        echo "🚀 Deploying to preview..."
        vercel
        ;;
    3)
        echo "👋 Exiting. No deployment made."
        exit 0
        ;;
    *)
        echo "❌ Invalid choice. Exiting."
        exit 1
        ;;
esac

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📝 Next steps:"
echo "  • Check your deployment at the URL provided above"
echo "  • Set up custom domain in Vercel dashboard (optional)"
echo "  • Enable analytics in Vercel dashboard (optional)"
echo ""
echo "🎉 Your N7 Banking site is live!"
