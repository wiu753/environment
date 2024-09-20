# Environment
Minimal step by step guide to setting up my work environment.

## Overview
- Browser
- Windows
- Terminal
- WSL2

## Browser
1. Download Mozilla Firefox
2. Pin devops platform in spot number one, plain tab in number two, and Spotify in number three.

## Terminal
1. Download [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install).
2. Remove `ctrl + alt + 1/2/3...` to be able to type `@£$€{[]}`.

## Windows
1. Download [powertoys](https://learn.microsoft.com/en-us/windows/powertoys/install).
2. Remap `Alt + 1/2/3...` to `Windows + 1/2/3...` in order to swap windows quickly.
3. Set the terminal in the first position, browser in second position, and communication channel (teams/slack/signal) in the third position within the taskbar.
4. Pin all of the applications that you frequently use.
5. Remove Windows fluff by unpinning and removing applications not in use.

## WSL2
1. Download [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).
2. Run `wsl.exe --install` in PowerShell.
3. Set Ubuntu as the default profile in Windows Terminal.
4. Run `sudo apt install zsh`.
5. Run `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`.
6. Download the [Hack Nerd Font](https://www.nerdfonts.com/font-downloads) and select it as the font face for the Ubuntu profile.
7. Change the colorscheme to Tango Dark and remove padding within the Ubuntu Profile.
8. Run `sudo apt-get update && sudo apt-get upgrade`.
9. Install latest stable version of Neovim by running `curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz`.
10. Run `sudo rm -rf /opt/nvim`.
11. Run `sudo tar -C /opt -xzf nvim-linux64.tar.gz`. 
12. Add `alias vim="nvim"` to `.zshrc`.
13. Add `export PATH="$PATH:/opt/nvim-linux64/bin` to `.zshrc`.
14. Restart terminal.

### Git
1. Run `sudo apt install git gh`.
2. Run `gh auth login` and complete the login.

### Neovim
1. Run `sudo apt update`
2. Run `sudo apt install git gcc ripgrep unzip make`.
3. Run `mkdir ~/.config" and "mkdir ~/.config/nvim`.
4. Run `git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim`.
5. Run `vim` to start installing.
6. Run `vim ~/.config/nvim/init.lua`.
7. Configure or copy from [here](./init.lua).
8. Run `sudo apt-get install -y dotnet-sdk-8.0`.

### Tmux
1. Run `touch ~/.tmux.conf` and enter [this](./.tmux.conf).
2. Run `source ~/.tmux.conf`.

### Tmuxifier
1. Run `git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier`.
2. Add `export PATH="$HOME/.tmuxifier/bin:$PATH"` to your path.
3. Add [this](./work.session.sh) file to `~/.tmuxifier/layouts`.
4. Run `tmuxifier load-session work` when starting to work.
