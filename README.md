# Dotfiles

This is my personal `dotfiles` repository.

## Dependencies

Before installing the dotfiles, ensure you have the following software installed:

- `zsh`
- `stow`
- `tmux`
- `vim`
- `neovim`
- `git`
- `gcc`
- `ripgrep`

In MacOS, you can install these dependencies using `brew`:

```sh
brew install zsh stow tmux vim neovim git ripgrep
```

In Ubuntu, you can install these dependencies using `apt`:

```sh
sudo apt update
sudo apt install zsh stow tmux vim neovim git build-essential
```

## Installation

Before installing, you need to back up your existing `dotfiles` first. Execute the following commands:

```sh
cd ~/
mkdir dotfiles_backup
mv .vim .vimrc .tmux .tmux.conf .tmux.conf.local .gitconfig .gitignore_global .zshrc .bash_aliases .config/nvim dotfiles_backup/
```

### Clone the Repository and Start zsh

```sh
git clone https://github.com/xukaihub/dotfiles.git ~/.local/dotfiles
cd ~/.local/dotfiles && ./dotfiles.sh stow
zsh
```

### Install Vim Plugins

Enter `\vim` and run:

```vim
:PluginInstall
```

Your `dotfiles` are now installed and configured!

## NerdFont Install

```sh
./nerdfont.sh UbuntuMono DejaVuSansMono
```
