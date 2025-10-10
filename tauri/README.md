# Zener Cards ESP Test

A desktop application for testing psychic abilities and extrasensory perception (ESP) using Zener Cards.

## About

Test your psychic abilities with this interactive Zener Cards ESP test. Practice telepathy and extrasensory perception using the classic 5-symbol cards (circle, plus, waves, square, star) in multiple colors. Track your accuracy and develop your intuitive skills.

## Features

- **5 Classic Zener Symbols**: Circle, Plus, Waves, Square, and Star
- **7 Color Variations**: Black, Purple, Blue, Green, Yellow, Orange, and Red
- **Real-time Accuracy Tracking**: Monitor your correct predictions and percentage
- **Dark Mode Support**: Toggle between light and dark themes
- **Clean Interface**: Simple, distraction-free design for focused testing
- **Help Documentation**: Built-in guide for using the application

## Quick Start

### Development Mode

Double-click `quick-dev.bat` to start the development server. The application will open automatically.

### Production Build

Double-click `quick-build.bat` to create a production build. The installer will be generated in `src-tauri/target/release/bundle/`.

## Manual Commands

```bash
# Install dependencies
npm install

# Run in development mode
npm run dev

# Build for production
npm run build
```

## Requirements

- Node.js (v16 or higher)
- Rust (latest stable version)
- Windows, macOS, or Linux

## Project Structure

```
zener/
├── src/                    # Web application files
│   ├── index.html         # Main application
│   ├── help.html          # Help documentation
│   ├── *.png              # Card images (35 total)
│   └── help_files/        # Help documentation assets
├── src-tauri/             # Tauri/Rust backend
│   ├── src/               # Rust source files
│   ├── icons/             # Application icons
│   ├── Cargo.toml         # Rust dependencies
│   └── tauri.conf.json    # Tauri configuration
├── package.json           # Node.js dependencies
├── quick-dev.bat          # Quick development start
└── quick-build.bat        # Quick production build
```

## How to Use

1. **Select Your Prediction**: Choose a shape (1-5) and color before revealing the card
2. **Click Reveal**: See the randomly selected card
3. **Track Your Progress**: View your accuracy statistics in real-time
4. **Click New**: Clear the card and make another prediction
5. **Toggle Dark Mode**: Use the switch in the top-right corner

## Scoring

- **2 points**: Correct shape AND color
- **1 point**: Correct shape OR color
- **0 points**: Neither correct

Your percentage is calculated as: (Total Points / Total Attempts × 2) × 100%

## License

MIT License - See LICENSE file for details

## Author

Radius.Center

## Version

1.0.0
