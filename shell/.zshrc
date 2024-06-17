# Add homebrew path
[ -d /home/linuxbrew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# Plugins
zplug "robbyrussell/oh-my-zsh",            use:oh-my-zsh.sh
zplug "plugins/z",                         from:oh-my-zsh
zplug "plugins/sudo",                      from:oh-my-zsh

zplug "sorin-ionescu/prezto"
zplug "modules/autosuggestions",           from:prezto
zplug "modules/syntax-highlighting",       from:prezto
zplug "modules/command-not-found",         from:prezto
zplug "modules/archive",                   from:prezto

# Load theme file
zplug 'themes/gnzh', from:oh-my-zsh, as:theme

# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

# Install .tmux
if [[ ! -d ~/.tmux ]]; then
    git clone https://github.com/gpakosz/.tmux.git ~/.tmux
    ln -s -f .tmux/.tmux.conf ~/.tmux.conf
fi

# Hide username and hostname
export DEFAULT_USER=$USER

# Solve "zsh:no matches found" issue
setopt no_nomatch

# Source some useful bash alias
source $HOME/.bash_aliases

# zsh-autosuggestions settings
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

