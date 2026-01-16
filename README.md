# N7 Banking - Modern Financial Solutions

A modern banking landing page built with React, Vite, and Tailwind CSS, featuring a sleek fintech design with mobile app showcases.

## 🚀 Quick Start

### Local Development

```bash
# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build

# Preview production build
npm run preview
```

## 📦 Deploy to Vercel

### Option 1: Deploy via Vercel Dashboard (Easiest)

1. Push your code to GitHub/GitLab/Bitbucket
2. Go to [vercel.com](https://vercel.com)
3. Click "New Project"
4. Import your repository
5. Vercel will automatically detect the Vite framework
6. Click "Deploy"

That's it! Vercel will automatically:
- Install dependencies
- Run the build command
- Deploy your site
- Provide you with a live URL

### Option 2: Deploy via Vercel CLI

```bash
# Install Vercel CLI globally
npm i -g vercel

# Login to Vercel
vercel login

# Deploy to production
vercel --prod
```

### Option 3: One-Click Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=YOUR_REPO_URL)

## 🔧 Configuration

The project includes a `vercel.json` configuration file that:
- Sets the build command to `npm run build`
- Configures the output directory to `dist`
- Handles client-side routing with rewrites

## 📱 Features

- **Responsive Design**: Fully optimized for all screen sizes
- **Modern Banking UI**: Professional fintech design with gradient backgrounds
- **Mobile App Showcase**: Interactive mobile banking interface mockups
- **Transaction History**: Visual representation of financial activities
- **Brand Showcase**: Trusted partners section with company logos
- **Smooth Navigation**: Fixed header with dropdown menus

## 🛠️ Tech Stack

- **React 18.3.1**: Modern UI library
- **Vite 6.3.5**: Lightning-fast build tool
- **Tailwind CSS v4**: Utility-first CSS framework
- **TypeScript**: Type-safe development
- **Motion**: Smooth animations

## 📂 Project Structure

```
/
├── src/
│   ├── app/
│   │   ├── App.tsx          # Main app component
│   │   └── components/       # Reusable UI components
│   ├── imports/
│   │   ├── Frame74.tsx       # Figma imported design
│   │   └── svg-*.tsx         # SVG assets
│   ├── styles/
│   │   ├── index.css         # Main styles
│   │   ├── fonts.css         # Font imports
│   │   ├── theme.css         # Theme variables
│   │   └── tailwind.css      # Tailwind config
│   └── main.tsx              # App entry point
├── index.html                # HTML entry point
├── package.json              # Dependencies
├── vite.config.ts            # Vite configuration
└── vercel.json               # Vercel deployment config
```

## 🎨 Customization

### Colors
The app uses a dark gradient theme. To customize:
1. Edit `src/app/App.tsx` background gradient classes
2. Modify theme variables in `src/styles/theme.css`

### Fonts
Fonts are imported in `src/styles/fonts.css`:
- Archivo (headings)
- Chivo Mono (buttons/CTA)
- Roboto (logos)
- Inter (body text)

## 🌐 Environment Variables

No environment variables are required for basic deployment. The app is a static site.

## 📄 License

Private - All rights reserved

## 🤝 Support

For deployment issues:
- Check [Vercel Documentation](https://vercel.com/docs)
- Review build logs in Vercel dashboard
- Ensure all dependencies are properly listed in `package.json`

---

Built with ❤️ using Figma Make
