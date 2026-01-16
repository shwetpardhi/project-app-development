import { defineConfig } from 'vite'
import path from 'path'
import tailwindcss from '@tailwindcss/vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  root: process.cwd(), // Explicitly set root for Vercel
  plugins: [react(), tailwindcss()],
  base: '/', 
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './src'),
    },
  },
})
