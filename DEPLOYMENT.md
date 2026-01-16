# 🚀 Vercel Deployment Guide

## Prerequisites

Before deploying, make sure you have:
- A GitHub, GitLab, or Bitbucket account
- Your code pushed to a Git repository
- A Vercel account (free tier works great)

## Step-by-Step Deployment

### Method 1: Vercel Dashboard (Recommended for Beginners)

#### Step 1: Push Code to GitHub

```bash
# Initialize git repository (if not already done)
git init

# Add all files
git add .

# Commit your changes
git commit -m "Initial commit: N7 Banking landing page"

# Add your GitHub repository as remote
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git push -u origin main
```

#### Step 2: Deploy on Vercel

1. Go to [https://vercel.com](https://vercel.com)
2. Click **"Sign Up"** or **"Login"** (you can use your GitHub account)
3. Click **"Add New Project"** or **"Import Project"**
4. Select **"Import Git Repository"**
5. Find and select your repository from the list
6. Vercel will auto-detect settings:
   - **Framework Preset**: Vite
   - **Root Directory**: `./`
   - **Build Command**: `npm run build`
   - **Output Directory**: `dist`
7. Click **"Deploy"**

#### Step 3: Wait for Deployment

- Vercel will install dependencies and build your project
- This usually takes 1-3 minutes
- You'll see a live preview once it's done

#### Step 4: Your Site is Live! 🎉

- You'll get a URL like: `https://your-project.vercel.app`
- You can customize this domain in project settings
- Every push to your main branch will auto-deploy

### Method 2: Vercel CLI (For Advanced Users)

```bash
# Install Vercel CLI
npm i -g vercel

# Login to Vercel
vercel login

# Deploy (first time)
vercel

# Follow the prompts:
# - Set up and deploy? Yes
# - Which scope? Select your account
# - Link to existing project? No
# - What's your project's name? n7-banking
# - In which directory is your code located? ./
# - Want to override settings? No

# Deploy to production
vercel --prod
```

### Method 3: Direct Git Integration

If you've already linked your GitHub to Vercel:

1. Push any changes to GitHub
2. Vercel automatically deploys
3. Check deployment status in Vercel dashboard

## Configuration Files Included

This project includes optimized configuration:

### `vercel.json`
```json
{
  "buildCommand": "npm run build",
  "outputDirectory": "dist",
  "framework": "vite",
  "rewrites": [
    {
      "source": "/(.*)",
      "destination": "/index.html"
    }
  ]
}
```

### `package.json` Scripts
```json
{
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  }
}
```

## Custom Domain Setup (Optional)

### Add Your Own Domain

1. Go to your project in Vercel dashboard
2. Click **"Settings"** → **"Domains"**
3. Click **"Add"**
4. Enter your domain (e.g., `n7banking.com`)
5. Follow Vercel's DNS configuration instructions
6. Wait for DNS propagation (can take up to 48 hours)

### Common Domain Providers

- **Namecheap**: Add CNAME record pointing to `cname.vercel-dns.com`
- **GoDaddy**: Similar CNAME configuration
- **Cloudflare**: Can be used as DNS proxy

## Environment Variables (If Needed)

If you add backend features later:

1. Go to **Settings** → **Environment Variables**
2. Add your variables (e.g., API keys)
3. Redeploy for changes to take effect

```bash
# In Vercel dashboard:
Name: VITE_API_KEY
Value: your-api-key-here
```

## Troubleshooting

### Build Fails

**Check these:**
- All dependencies in `package.json` are listed correctly
- `npm run build` works locally
- No TypeScript errors
- All imports use correct paths

**View Logs:**
1. Go to deployments tab
2. Click on failed deployment
3. Check build logs for errors

### Site Shows 404

**Solution:**
- Ensure `vercel.json` rewrites are configured
- Check that `dist` folder contains `index.html`

### Styles Not Loading

**Check:**
- CSS imports in `main.tsx`
- Tailwind config is correct
- All font imports in `fonts.css` are accessible

## Performance Optimization

Vercel automatically provides:
- ✅ Global CDN
- ✅ Automatic HTTPS
- ✅ Image optimization
- ✅ Compression (Gzip/Brotli)
- ✅ Edge caching

## Continuous Deployment

Once connected:
- Every `git push` to main branch = auto deployment
- Pull requests get preview deployments
- Easy rollback to previous versions

## Analytics (Optional)

Enable Vercel Analytics:
1. Go to **Analytics** tab
2. Click **Enable**
3. View real-time traffic data

## Cost

**Free Tier Includes:**
- Unlimited personal projects
- 100GB bandwidth/month
- Automatic HTTPS
- Custom domains
- Fast CDN

**Perfect for this landing page!**

## Next Steps After Deployment

1. ✅ Test your live site
2. ✅ Share the URL
3. ✅ Set up custom domain (optional)
4. ✅ Enable analytics
5. ✅ Add your backend API (if needed)

## Support Resources

- [Vercel Documentation](https://vercel.com/docs)
- [Vite Documentation](https://vitejs.dev/)
- [Vercel Community](https://github.com/vercel/vercel/discussions)

---

**Your N7 Banking site is ready to go live!** 🎉

Any push to your repository will automatically trigger a new deployment.
