
```
sudo apt update
sudo apt install git build-essential curl gdebi
```

Install google-chrome-stable
```
sudo gdebi google-chrome-stable_current_amd64.deb 
```

Caps remap to Ctrl

```
Tweaks -> Keyboard & Mouse -> Additional Layout Options -> Caps Lock behave -> Make Caps Lock an additional Ctrl
```

SSH setting
```
ssh-keygen
ssh-add
```

add `~/.ssh/id_rsa.pub` to github 

Install Clash for Windows

Install `HomeBrew`

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> ~/.bashrc
brew install zsh stow tmux vim neovim git ripgrep eza zoxide
```

Install `dotfiles`
```
git clone git@github.com:xukaihub/dotfiles.git ~/.local/dotfiles
cd ~/.local/dotfiles
./nerdfont.sh UbuntuMono DejaVuSansMono 
./dotfiles.sh stow

```

Set terminal fonts

Install `neovim` plugin
```
neovim
```

Install `vim` plugin
```
vim
:PlugInstall
```
Setup `zsh`
```
zsh
```

Setup `tmux`
```
tmux
```
