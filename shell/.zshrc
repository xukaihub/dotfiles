# Add homebrew path
[ -d /home/linuxbrew ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Zinit autoload
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit ice wait lucid depth"1"
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid depth"1"
zinit light zsh-users/zsh-syntax-highlighting

zinit ice wait lucid depth"1"
zinit light zsh-users/zsh-completions

zinit ice wait lucid depth"1"
zinit light zsh-users/zsh-history-substring-search

# Snippets
zinit snippet OMZP::z
zinit snippet OMZP::sudo
zinit snippet OMZP::extract
zinit snippet OMZP::command-not-found
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::history.zsh

# zinit snippet OMZL::async_prompt.zsh
# zinit snippet OMZL::bzr.zsh
# zinit snippet OMZL::cli.zsh
# zinit snippet OMZL::compfix.zsh
# zinit snippet OMZL::correction.zsh
# zinit snippet OMZL::diagnostics.zsh
# zinit snippet OMZL::functions.zsh
# zinit snippet OMZL::git.zsh
# zinit snippet OMZL::grep.zsh
# zinit snippet OMZL::key-bindings.zsh
# zinit snippet OMZL::misc.zsh
# zinit snippet OMZL::nvm.zsh
# zinit snippet OMZL::prompt_info_functions.zsh
# zinit snippet OMZL::spectrum.zsh
# zinit snippet OMZL::termsupport.zsh
# zinit snippet OMZL::vcs_info.zsh

# Theme
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure

autoload -Uz compinit && compinit
zinit cdreplay -q

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

