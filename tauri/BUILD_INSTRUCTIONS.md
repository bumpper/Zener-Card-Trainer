# Build Instructions for Zener Cards ESP Test

This document provides detailed instructions for building the Zener Cards ESP Test application.

## Prerequisites

Before building, ensure you have the following installed:

### Required Software

1. **Node.js** (v16 or higher)
   - Download from: https://nodejs.org/
   - Verify installation: `node --version`

2. **Rust** (latest stable version)
   - Download from: https://rustup.rs/
   - Verify installation: `rustc --version`

3. **System Dependencies**
   - **Windows**: Microsoft Visual Studio C++ Build Tools
   - **macOS**: Xcode Command Line Tools
   - **Linux**: `build-essential`, `libwebkit2gtk-4.0-dev`, `libssl-dev`, `libgtk-3-dev`, `libayatana-appindicator3-dev`, `librsvg2-dev`

## Quick Build Methods

### Method 1: Using Quick Build Script (Recommended)

1. Navigate to the project directory
2. Double-click `quick-build.bat` (Windows) or run `./quick-build.sh` (macOS/Linux)
3. Wait for the build to complete
4. Find the installer in `src-tauri/target/release/bundle/`

### Method 2: Using NPM Commands

```bash
# Install dependencies
npm install

# Build for production
npm run build
```

## Development Build

To run the application in development mode:

### Using Quick Dev Script
- Double-click `quick-dev.bat` (Windows) or run `./quick-dev.sh` (macOS/Linux)

### Using NPM Commands
```bash
npm install
npm run dev
```

## Build Output Locations

After a successful build, you'll find the installers in:

```
src-tauri/target/release/bundle/
├── msi/          # Windows MSI installer
├── nsis/         # Windows NSIS installer
├── deb/          # Linux DEB package
├── rpm/          # Linux RPM package
├── dmg/          # macOS DMG installer
└── macos/        # macOS app bundle
```

## Platform-Specific Builds

### Windows
```bash
npm run build:windows
```
Generates: `.msi` and `.exe` installers

### Linux
```bash
npm run build:linux
```
Generates: `.deb` and `.rpm` packages

### macOS
```bash
npm run build:macos
```
Generates: `.dmg` and `.app` bundle

## Troubleshooting

### Common Issues

1. **"Rust not found" error**
   - Install Rust from https://rustup.rs/
   - Restart your terminal/command prompt

2. **"Node modules not found" error**
   - Run `npm install` first
   - Delete `node_modules` folder and run `npm install` again

3. **Build fails on Windows**
   - Install Visual Studio C++ Build Tools
   - Ensure Windows SDK is installed

4. **Build fails on Linux**
   - Install required system dependencies:
     ```bash
     sudo apt-get update
     sudo apt-get install -y libwebkit2gtk-4.0-dev build-essential curl wget libssl-dev libgtk-3-dev libayatana-appindicator3-dev librsvg2-dev
     ```

5. **Build fails on macOS**
   - Install Xcode Command Line Tools:
     ```bash
     xcode-select --install
     ```

### Clean Build

If you encounter persistent issues, try a clean build:

```bash
# Remove build artifacts
rm -rf node_modules
rm -rf src-tauri/target

# Reinstall and rebuild
npm install
npm run build
```

## Build Configuration

The build configuration is defined in:
- `package.json` - NPM scripts and dependencies
- `src-tauri/tauri.conf.json` - Tauri application configuration
- `src-tauri/Cargo.toml` - Rust dependencies and build settings

## Optimizations

The release build includes several optimizations:
- Code minification
- Dead code elimination
- Link-time optimization (LTO)
- Binary stripping for smaller file size

These are configured in `src-tauri/Cargo.toml`:
```toml
[profile.release]
panic = "abort"
codegen-units = 1
lto = true
opt-level = "s"
strip = true
```

## Build Time

Typical build times:
- First build: 5-10 minutes (downloads and compiles dependencies)
- Subsequent builds: 2-5 minutes (incremental compilation)

## Support

For build issues or questions:
- Check the Tauri documentation: https://tauri.app/
- Review the troubleshooting section above
- Ensure all prerequisites are properly installed
