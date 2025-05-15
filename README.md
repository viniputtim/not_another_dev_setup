# Not Another Dev Setup

This repository is your ultimate **toolkit** for setting up and automating development environments on Ubuntu. It’s packed with handy scripts to save you time and hassle, from installing fonts to cleaning up your system.

## Features

### 1. `github_token_copier.sh`
- Copies your GitHub token cleanly to the clipboard.
- Ensures no trailing newlines to avoid token errors.

### 2. `font_installer.sh`
- Installs custom fonts directly into your project folders.
- Automates font setup so your projects always have the right typography.

### 3. `snap_remover.sh`
- Removes Snap packages from your Ubuntu system.
- Helps declutter your environment if you’re not a fan of Snap.

### 4. `recycler.sh`
- Script to automate emptying the trash.
- Designed to run on a schedule via cron (e.g., at reboot).
- Keeps your workspace clean without lifting a finger.

### 5. `raylib_installer.sh`
- Installs Raylib, the awesome C game development library.
- Sets up dependencies and environment so you can start coding games fast.

## Usage

Just clone the repo, give execution permission to the scripts, and run them as needed. Some scripts are designed to run automatically via cron for effortless maintenance.

```bash
git clone https://github.com/viniputtim/not_another_dev_setup.git
cd yourrepo
chmod +x *.sh
./snap_remover.sh
./font_installer.sh
# and so on...
