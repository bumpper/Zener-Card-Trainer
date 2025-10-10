# Platform Setup Guide for Zener Cards ESP Test

This guide provides detailed setup instructions for preparing your development environment on Windows, macOS, and Linux to build the Zener Cards ESP Test application.

## Table of Contents

- [Windows Setup](#windows-setup)
- [macOS Setup](#macos-setup)
- [Linux Setup (Ubuntu/Debian)](#linux-setup-ubuntudebian)
- [Linux Setup (Fedora/RHEL)](#linux-setup-fedorarhel)
- [Transferring Project Between Platforms](#transferring-project-between-platforms)
- [Verifying Your Setup](#verifying-your-setup)
- [Common Issues](#common-issues)

---

## Windows Setup

### 1. Install Node.js

1. Download Node.js from https://nodejs.org/
2. Choose the LTS (Long Term Support) version
3. Run the installer
4. Verify installation:
   ```cmd
   node --version
   npm --version
   ```

### 2. Install Rust

1. Download Rust from https://rustup.rs/
2. Run `rustup-init.exe`
3. Follow the prompts (default options are fine)
4. Restart your terminal
5. Verify installation:
   ```cmd
   rustc --version
   cargo --version
   ```

### 3. Install Visual Studio Build Tools

1. Download from https://visualstudio.microsoft.com/downloads/
2. Select "Build Tools for Visual Studio"
3. In the installer, select:
   - "Desktop development with C++"
   - Ensure "MSVC" and "Windows SDK" are checked
4. Install (this may take 30+ minutes)

### 4. Install WebView2 (if needed)

- Windows 11: Pre-installed
- Windows 10: Download from https://developer.microsoft.com/microsoft-edge/webview2/

### 5. Clone/Copy the Project

```cmd
# If using Git
git clone <repository-url>
cd zener/tauri

# Or copy the project folder to your desired location
```

### 6. Install Project Dependencies

```cmd
cd path\to\zener\tauri
npm install
```

### 7. Test Your Setup

```cmd
# Run in development mode
quick-dev.bat

# Or
npm run dev
```

---

## macOS Setup

### 1. Install Xcode Command Line Tools

```bash
xcode-select --install
```

Follow the prompts to complete installation.

### 2. Install Homebrew (Optional but Recommended)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 3. Install Node.js

**Using Homebrew:**
```bash
brew install node
```

**Or download from:**
https://nodejs.org/

Verify installation:
```bash
node --version
npm --version
```

### 4. Install Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Follow the prompts (default options are fine).

Restart your terminal or run:
```bash
source $HOME/.cargo/env
```

Verify installation:
```bash
rustc --version
cargo --version
```

### 5. Clone/Copy the Project

```bash
# If using Git
git clone <repository-url>
cd zener/tauri

# Or copy the project folder to your desired location
```

### 6. Install Project Dependencies

```bash
cd path/to/zener/tauri
npm install
```

### 7. Make Scripts Executable

```bash
chmod +x quick-dev.sh quick-build.sh
```

### 8. Test Your Setup

```bash
# Run in development mode
./quick-dev.sh

# Or
npm run dev
```

---

## Linux Setup (Ubuntu/Debian)

### 1. Update System Packages

```bash
sudo apt update
sudo apt upgrade -y
```

### 2. Install Node.js

**Using NodeSource repository (recommended):**
```bash
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
```

**Or using apt (may be older version):**
```bash
sudo apt install -y nodejs npm
```

Verify installation:
```bash
node --version
npm --version
```

### 3. Install Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Follow the prompts (default options are fine).

Restart your terminal or run:
```bash
source $HOME/.cargo/env
```

Verify installation:
```bash
rustc --version
cargo --version
```

### 4. Install System Dependencies

```bash
sudo apt install -y \
  libwebkit2gtk-4.1-dev \
  build-essential \
  curl \
  wget \
  file \
  libssl-dev \
  libayatana-appindicator3-dev \
  librsvg2-dev
```

### 5. Clone/Copy the Project

```bash
# If using Git
git clone <repository-url>
cd zener/tauri

# Or copy the project folder to your desired location
```

### 6. Install Project Dependencies

```bash
cd path/to/zener/tauri
npm install
```

### 7. Make Scripts Executable

```bash
chmod +x quick-dev.sh quick-build.sh
```

### 8. Test Your Setup

```bash
# Run in development mode
./quick-dev.sh

# Or
npm run dev
```

---

## Linux Setup (Fedora/RHEL)

### 1. Update System Packages

```bash
sudo dnf update -y
```

### 2. Install Node.js

```bash
sudo dnf install -y nodejs npm
```

Verify installation:
```bash
node --version
npm --version
```

### 3. Install Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Follow the prompts (default options are fine).

Restart your terminal or run:
```bash
source $HOME/.cargo/env
```

Verify installation:
```bash
rustc --version
cargo --version
```

### 4. Install System Dependencies

```bash
sudo dnf install -y \
  webkit2gtk4.1-devel \
  openssl-devel \
  curl \
  wget \
  file \
  libappindicator-gtk3-devel \
  librsvg2-devel \
  rpm-build
```

### 5. Clone/Copy the Project

```bash
# If using Git
git clone <repository-url>
cd zener/tauri

# Or copy the project folder to your desired location
```

### 6. Install Project Dependencies

```bash
cd path/to/zener/tauri
npm install
```

### 7. Make Scripts Executable

```bash
chmod +x quick-dev.sh quick-build.sh
```

### 8. Test Your Setup

```bash
# Run in development mode
./quick-dev.sh

# Or
npm run dev
```

---

## Transferring Project Between Platforms

The Zener Cards ESP Test project can be easily transferred between platforms:

### What to Transfer

✅ **Include:**
- All source files (`src/`, `src-tauri/`)
- Configuration files (`package.json`, `tauri.conf.json`)
- Scripts (`quick-dev.*`, `quick-build.*`, `scripts/`)
- Documentation files (`.md` files)

❌ **Exclude (will be regenerated):**
- `node_modules/` directory
- `src-tauri/target/` directory
- Platform-specific build outputs

### Transfer Methods

**1. Using Git (Recommended):**
```bash
# On source machine
git add .
git commit -m "Update project"
git push

# On target machine
git clone <repository-url>
# or
git pull
```

**2. Using File Transfer:**
- Compress the project folder (excluding `node_modules` and `target`)
- Transfer via USB, network share, cloud storage, etc.
- Extract on target machine

**3. Using Cloud Sync:**
- Use services like Dropbox, Google Drive, OneDrive
- Exclude `node_modules/` and `src-tauri/target/` from sync

### After Transfer

On the new platform:

```bash
# Install dependencies
npm install

# Make scripts executable (macOS/Linux only)
chmod +x quick-dev.sh quick-build.sh

# Test
npm run dev
```

---

## Verifying Your Setup

### Check All Prerequisites

Run this command to check your platform configuration:

```bash
npm run platform:info
```

This will display:
- Current platform
- Architecture
- Build targets
- Output directories

### Test Development Mode

**Windows:**
```cmd
quick-dev.bat
```

**macOS/Linux:**
```bash
./quick-dev.sh
```

The application should launch in a development window.

### Test Build Process

**Windows:**
```cmd
quick-build.bat
```

**macOS/Linux:**
```bash
./quick-build.sh
```

The build should complete successfully and create installers in `src-tauri/target/release/bundle/`.

---

## Common Issues

### Issue: "command not found: node"

**Solution:** Node.js is not installed or not in PATH
- Reinstall Node.js
- Restart your terminal
- Check PATH environment variable

### Issue: "command not found: cargo"

**Solution:** Rust is not installed or not in PATH
- Install Rust from https://rustup.rs/
- Restart your terminal
- Run: `source $HOME/.cargo/env` (macOS/Linux)

### Issue: "WebView2 not found" (Windows)

**Solution:** Install WebView2 Runtime
- Download from: https://developer.microsoft.com/microsoft-edge/webview2/

### Issue: Build fails with "missing dependencies" (Linux)

**Solution:** Install system dependencies

**Ubuntu/Debian:**
```bash
sudo apt install libwebkit2gtk-4.1-dev build-essential
```

**Fedora:**
```bash
sudo dnf install webkit2gtk4.1-devel gcc
```

### Issue: "Permission denied" on scripts (macOS/Linux)

**Solution:** Make scripts executable
```bash
chmod +x quick-dev.sh quick-build.sh
```

### Issue: npm install fails

**Solution:**
1. Delete `node_modules/` and `package-lock.json`
2. Run `npm install` again
3. If still failing, update npm: `npm install -g npm@latest`

### Issue: Build is extremely slow

**Solution:** This is normal for first builds
- First build: 10-30 minutes (Rust compilation)
- Subsequent builds: 1-5 minutes (cached)
- Use `npm run dev` for faster development iteration

### Issue: Port already in use

**Solution:** Another instance is running
- Close other instances of the app
- Kill the process using the port
- Restart your terminal

---

## Next Steps

After setting up your environment:

1. Read [BUILD_INSTRUCTIONS_CROSS_PLATFORM.md](BUILD_INSTRUCTIONS_CROSS_PLATFORM.md) for build instructions
2. Check [QUICK_REFERENCE.md](QUICK_REFERENCE.md) for common commands
3. Review [CROSS_PLATFORM_SUMMARY.md](CROSS_PLATFORM_SUMMARY.md) for implementation details

---

## Additional Resources

- [Node.js Documentation](https://nodejs.org/docs/)
- [Rust Documentation](https://doc.rust-lang.org/)
- [Tauri Documentation](https://tauri.app/)
- [Tauri Prerequisites Guide](https://tauri.app/v1/guides/getting-started/prerequisites)

---

**Need Help?** Check the [Troubleshooting](#common-issues) section above or consult the Tauri documentation.
