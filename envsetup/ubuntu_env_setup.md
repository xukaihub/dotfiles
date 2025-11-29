# Ubuntu Environment Setup Guide

This guide will help you set up your Ubuntu environment with essential tools and configurations.

## Update and Install Basic Utilities

First, update your package list and install some essential utilities:

```bash
sudo apt update
sudo apt install git zsh build-essential curl gdebi
```

## Install Google Chrome

Download the `google-chrome-stable_current_amd64.deb` package from the official [Google Chrome website](https://www.google.com/chrome/), then install it using `gdebi`:

```bash
sudo gdebi google-chrome-stable_current_amd64.deb 
```

## Remap Caps Lock to Ctrl

To remap Caps Lock to an additional Ctrl key:

1. Open Tweaks.
2. Go to `Keyboard & Mouse` -> `Additional Layout Options`.
3. Select `Caps Lock behavior` -> `Make Caps Lock an additional Ctrl`.

## SSH Setup

Generate SSH keys and add them to the SSH agent:

```bash
ssh-keygen
ssh-agent bash
ssh-add
```

Add the contents of `~/.ssh/id_rsa.pub` to your GitHub account.


## Install Homebrew

Install Homebrew on Linux:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.bashrc
```

Reload your shell:

```bash
source ~/.bashrc
```

Install necessary packages via Homebrew:

```bash
brew install stow tmux vim neovim git eza zoxide bat lazygit bfs vivid ag
```

## Install Dotfiles

Clone your dotfiles repository and set up the environment:

```bash
git clone https://github.com/xukaihub/dotfiles.git ~/.local/dotfiles
cd ~/.local/dotfiles
./nerdfont.sh UbuntuMono DejaVuSansMono 
./dotfiles.sh stow
```

## Set Terminal Fonts

Follow your terminal emulator's instructions to set the installed Nerd Fonts as the terminal font.


## Setup Zsh

Change your shell to Zsh and configure it:

```bash
chsh -s $(which zsh)
zsh
```

## Setup Tmux

Start Tmux and configure it:

```bash
tmux
```
Tmux plugin  will be installed automatically when you start Tmux.


## Install Neovim Plugins

Open Neovim and install plugins:

```bash
nvim
```
Plugin will be installed automatically when you start Neovim.


## Install Vim Plugins

Open Vim and install plugins:

```bash
\vim
:PlugInstall
```

