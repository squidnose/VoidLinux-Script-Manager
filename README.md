# VoidLinux-Script-Manager
## What is it:
- A manager for my favourite voidlinux scripts.
- It downloads scripts from the internet.
- Designed for Live(Pre install) and Post install voidlinux enviroments.

## The scripts that are included
- https://github.com/squidnose/Voidlinux-Post-Install-TUI
- https://github.com/kkrruumm/void-install-script

## What will it do
- Update xbps
- Download: git newt dialog
- Give the user 5 options:
1. Download Latest Version of: Voidlinux-Post-Install-TUI by squidnose
2. Download Latest Version of: void-install-script by kkrruumm
3. Run Cached Version of: Voidlinux-Post-Install-TUI by squidnose
4. Run Cached Version of: void-install-script by kkrruumm
5. Run normal void-installer (Live system only)

# How to use it
in the terminal:
```
sudo xbps-install -Syu xbps
sudo xbps-install -Syu git
git clone https://github.com/squidnose/VoidLinux-Script-Manager
cd VoidLinux-Script-Manager
./script-manager.sh
```
