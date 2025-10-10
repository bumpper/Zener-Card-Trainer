# 🎴 Zener Cards ESP Test - Getting Started

Welcome to the Zener Cards ESP Test application! This guide will help you get started quickly.

## 🚀 Quick Start (Easiest Method)

### For Development/Testing:
1. **Double-click** `quick-dev.bat`
2. Wait for the application to open
3. Start testing your psychic abilities!

### For Production Build:
1. **Double-click** `quick-build.bat`
2. Wait for the build to complete (5-10 minutes)
3. Find your installer in `src-tauri/target/release/bundle/`

## 📋 What You Need

Before running the application, make sure you have:

- ✅ **Node.js** (v16 or higher) - [Download here](https://nodejs.org/)
- ✅ **Rust** (latest stable) - [Download here](https://rustup.rs/)

### First Time Setup

If this is your first time:

1. **Install Node.js**
   - Download from https://nodejs.org/
   - Run the installer
   - Restart your computer

2. **Install Rust**
   - Download from https://rustup.rs/
   - Run the installer
   - Restart your computer

3. **Run the Application**
   - Double-click `quick-dev.bat`
   - The first run will take 5-10 minutes (installing dependencies)
   - Subsequent runs will be much faster!

## 🎮 How to Use the Application

### Making Predictions

1. **Choose a Shape** (1-5):
   - 1 = Circle
   - 2 = Plus
   - 3 = Waves
   - 4 = Square
   - 5 = Star

2. **Choose a Color**:
   - Black, Purple, Blue, Green, Yellow, Orange, or Red

3. **Click "Reveal"** to see the card

4. **Click "New"** to try again

### Understanding Your Score

- **2 points**: Both shape AND color correct
- **1 point**: Either shape OR color correct
- **0 points**: Neither correct

Your percentage shows your overall accuracy.

## 🎨 Features

- **Dark Mode**: Toggle in the top-right corner
- **Help Button**: Click "?" for detailed instructions
- **Real-time Stats**: Track your accuracy as you go
- **35 Unique Cards**: 5 shapes × 7 colors

## 📁 Project Structure

```
zener/
├── quick-dev.bat          ← Double-click to start!
├── quick-build.bat        ← Double-click to build!
├── README.md              ← Full documentation
├── BUILD_INSTRUCTIONS.md  ← Detailed build guide
├── src/                   ← Web application files
│   ├── index.html        ← Main application
│   └── *.png             ← Card images
└── src-tauri/            ← Tauri configuration
```

## 🔧 Manual Commands (Advanced)

If you prefer using the command line:

```bash
# Install dependencies
npm install

# Run in development mode
npm run dev

# Build for production
npm run build
```

## ❓ Troubleshooting

### "Command not found" errors
- Make sure Node.js and Rust are installed
- Restart your terminal/command prompt
- Restart your computer if needed

### Application won't start
- Run `npm install` first
- Check that all prerequisites are installed
- See BUILD_INSTRUCTIONS.md for detailed help

### Build fails
- Delete `node_modules` folder
- Run `npm install` again
- See BUILD_INSTRUCTIONS.md for platform-specific fixes

## 📚 Additional Documentation

- **README.md** - Complete project overview
- **BUILD_INSTRUCTIONS.md** - Detailed build instructions
- **Help Button (?)** - In-app help documentation

## 🎯 Testing Your ESP

### Tips for Best Results

1. **Relax**: Find a quiet, comfortable space
2. **Focus**: Clear your mind before each prediction
3. **Trust Your Intuition**: Go with your first impression
4. **Practice**: ESP abilities may improve with regular practice
5. **Track Progress**: Monitor your accuracy over time

### What's a Good Score?

- **20%**: Random chance (expected baseline)
- **25-30%**: Above average, possible ESP indication
- **35%+**: Significantly above chance, strong ESP indication
- **50%+**: Exceptional results (very rare)

## 🌟 Enjoy!

Have fun testing your psychic abilities! Remember, this is for entertainment and personal exploration.

---

**Version**: 1.0.0  
**Author**: Radius.Center  
**License**: MIT
