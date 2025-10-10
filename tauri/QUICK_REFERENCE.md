# Quick Reference Guide - Zener Cards ESP Test

Quick command reference for building and developing the Zener Cards ESP Test application across all platforms.

## Quick Start

### Windows
```cmd
# Development
quick-dev.bat

# Production Build
quick-build.bat
```

### macOS/Linux
```bash
# Make scripts executable (first time only)
chmod +x quick-dev.sh quick-build.sh

# Development
./quick-dev.sh

# Production Build
./quick-build.sh
```

---

## NPM Scripts Reference

### Development Commands

```bash
# Start development mode (auto-detects platform)
npm run dev

# Platform-specific development
npm run dev:windows    # Windows
npm run dev:mac        # macOS
npm run dev:linux      # Linux
```

### Build Commands

```bash
# Build for current platform (auto-detects)
npm run build

# Windows builds
npm run build:windows  # MSI + NSIS installers

# macOS builds
npm run build:mac      # DMG + APP (Apple Silicon)
npm run build:macos    # Same as build:mac
npm run build:mac-intel # DMG + APP (Intel)

# Linux builds
npm run build:linux        # DEB + AppImage
npm run build:linux-deb    # DEB + AppImage (Ubuntu/Debian)
npm run build:linux-rpm    # RPM only (Fedora/RHEL)
npm run build:fedora       # RPM + AppImage (Fedora/RHEL)
```

### Utility Commands

```bash
# Display platform information
npm run platform:info

# Clean build artifacts
npm run clean

# Clean everything (including node_modules)
npm run clean:all
```

---

## Build Output Locations

### Windows
```
src-tauri\target\release\bundle\
├── msi\
│   └── zener_1.0.0_x64_en-US.msi
└── nsis\
    └── zener_1.0.0_x64-setup.exe
```

### macOS
```
src-tauri/target/release/bundle/
├── dmg/
│   └── zener_1.0.0_aarch64.dmg
└── macos/
    └── zener.app
```

### Linux (Ubuntu/Debian)
```
src-tauri/target/release/bundle/
├── deb/
│   └── zener_1.0.0_amd64.deb
└── appimage/
    └── zener_1.0.0_amd64.AppImage
```

### Linux (Fedora/RHEL)
```
src-tauri/target/release/bundle/
├── rpm/
│   └── zener-1.0.0-1.x86_64.rpm
└── appimage/
    └── zener_1.0.0_amd64.AppImage
```

---

## Common Tasks

### First Time Setup

**Windows:**
```cmd
npm install
quick-dev.bat
```

**macOS/Linux:**
```bash
npm install
chmod +x quick-dev.sh quick-build.sh
./quick-dev.sh
```

### Update Dependencies

```bash
# Update npm packages
npm update

# Update Rust
rustup update

# Update Tauri CLI
npm install @tauri-apps/cli@latest
```

### Clean Build

```bash
# Clean Rust build artifacts
npm run clean

# Clean everything and reinstall
npm run clean:all
npm install
```

### Check Platform Configuration

```bash
npm run platform:info
```

Output example:
```
=== Platform Information ===
Platform: Windows
Architecture: x64
OS Release: 10.0.22621

Build Targets: msi, nsis
Output Directory: src-tauri\target\release\bundle
===========================
```

---

## Installation Commands

### Windows
```cmd
# MSI installer (double-click or)
msiexec /i zener_1.0.0_x64_en-US.msi

# NSIS installer (double-click)
zener_1.0.0_x64-setup.exe
```

### macOS
```bash
# Mount DMG and drag to Applications
open zener_1.0.0_aarch64.dmg

# Or install via command line
hdiutil attach zener_1.0.0_aarch64.dmg
cp -R /Volumes/zener/zener.app /Applications/
hdiutil detach /Volumes/zener
```

### Linux (Ubuntu/Debian)
```bash
# Install DEB package
sudo dpkg -i zener_1.0.0_amd64.deb

# Or using apt
sudo apt install ./zener_1.0.0_amd64.deb

# Run AppImage (no installation needed)
chmod +x zener_1.0.0_amd64.AppImage
./zener_1.0.0_amd64.AppImage
```

### Linux (Fedora/RHEL)
```bash
# Install RPM package
sudo dnf install zener-1.0.0-1.x86_64.rpm

# Or using rpm
sudo rpm -i zener-1.0.0-1.x86_64.rpm

# Run AppImage (no installation needed)
chmod +x zener_1.0.0_amd64.AppImage
./zener_1.0.0_amd64.AppImage
```

---

## Troubleshooting Quick Fixes

### "command not found: node"
```bash
# Install Node.js from https://nodejs.org/
# Then restart terminal
```

### "command not found: cargo"
```bash
# Install Rust from https://rustup.rs/
# Then restart terminal or run:
source $HOME/.cargo/env  # macOS/Linux
```

### "WebView2 not found" (Windows)
```
Download from: https://developer.microsoft.com/microsoft-edge/webview2/
```

### Build fails with missing dependencies (Linux)

**Ubuntu/Debian:**
```bash
sudo apt install libwebkit2gtk-4.1-dev build-essential
```

**Fedora:**
```bash
sudo dnf install webkit2gtk4.1-devel gcc
```

### "Permission denied" on scripts (macOS/Linux)
```bash
chmod +x quick-dev.sh quick-build.sh
```

### Port already in use
```bash
# Kill the process using the port
# Windows:
netstat -ano | findstr :PORT
taskkill /PID <PID> /F

# macOS/Linux:
lsof -ti:PORT | xargs kill -9
```

### npm install fails
```bash
# Delete and reinstall
rm -rf node_modules package-lock.json  # macOS/Linux
# or
rmdir /s /q node_modules & del package-lock.json  # Windows

npm install
```

---

## Development Workflow

### Typical Development Session

1. **Start development mode:**
   ```bash
   npm run dev
   ```

2. **Make changes to source files**
   - Edit files in `src/` directory
   - Changes auto-reload in dev window

3. **Test changes**
   - Application reloads automatically
   - Check console for errors

4. **Build for testing:**
   ```bash
   npm run build
   ```

5. **Test installer:**
   - Install from `src-tauri/target/release/bundle/`
   - Verify functionality

### Before Release

1. **Update version** in `package.json` and `src-tauri/tauri.conf.json`
2. **Clean build:**
   ```bash
   npm run clean
   ```
3. **Build for all target platforms**
4. **Test installers on clean systems**
5. **Create release notes**

---

## File Structure

```
zener/tauri/
├── src/                          # Frontend source files
│   ├── index.html               # Main HTML
│   └── *.png                    # Zener card images
├── src-tauri/                   # Tauri backend
│   ├── src/
│   │   ├── main.rs             # Rust main file
│   │   └── lib.rs              # Rust library
│   ├── tauri.conf.json         # Tauri configuration
│   ├── Cargo.toml              # Rust dependencies
│   └── icons/                  # App icons
├── scripts/
│   └── platform-utils.js       # Platform detection
├── package.json                # NPM configuration
├── quick-dev.bat               # Windows dev script
├── quick-build.bat             # Windows build script
├── quick-dev.sh                # Unix dev script
├── quick-build.sh              # Unix build script
└── *.md                        # Documentation
```

---

## Environment Variables

### Useful Tauri Environment Variables

```bash
# Enable debug logging
export RUST_LOG=debug

# Disable auto-reload in dev mode
export TAURI_SKIP_DEVSERVER_CHECK=true

# Custom dev server port
export TAURI_DEV_SERVER_PORT=3000
```

---

## Additional Resources

- **Full Build Guide:** [BUILD_INSTRUCTIONS_CROSS_PLATFORM.md](BUILD_INSTRUCTIONS_CROSS_PLATFORM.md)
- **Setup Guide:** [PLATFORM_SETUP.md](PLATFORM_SETUP.md)
- **Implementation Details:** [CROSS_PLATFORM_SUMMARY.md](CROSS_PLATFORM_SUMMARY.md)
- **Tauri Docs:** https://tauri.app/
- **Rust Docs:** https://doc.rust-lang.org/

---

## Quick Command Cheat Sheet

| Task | Windows | macOS/Linux |
|------|---------|-------------|
| Dev Mode | `quick-dev.bat` | `./quick-dev.sh` |
| Build | `quick-build.bat` | `./quick-build.sh` |
| Platform Info | `npm run platform:info` | `npm run platform:info` |
| Clean | `npm run clean` | `npm run clean` |
| Install Deps | `npm install` | `npm install` |
| Update Rust | `rustup update` | `rustup update` |

---

**Pro Tip:** Bookmark this page for quick access to common commands!
