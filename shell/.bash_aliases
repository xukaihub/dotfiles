#!/bin/bash

alias b='cd ..; clear; ls'
alias bb='cd ../..; clear; ls'
alias bbb='cd ../../..; clear; ls'
alias ~='cd ~; clear; ls'
alias lah='ls -lah'
alias lh='ls -lh'

alias cp='cp -rf'
alias mv='mv -i'

alias c='reset;clear'
alias fix="dpkg -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P 2>  /dev/null"

alias free='free -h'
alias df='duf'

alias f='bfs . -name'
alias g='ag'
alias du='dust -r'

# python http server
alias pservice='python3 -m http.server'

# tags
alias ctagsdb='ctags -R *'
alias db_init='ctagsdb'
alias db_clean='rm -f tags'

alias sadb='adb kill-server; sudo adb start-server;adb devices'
alias mk='make clean;make'

# git alias
alias gits='git status'
alias gitl='git log'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitb='git branch'
alias gitc='git checkout -- .'
alias gitr='git reset --hard HEAD^'
alias gitco='git checkout'
alias gitaa='git add --all'
alias gitau='git add -u'
alias gitcm='git commit'
alias gitcma='git commit --amend'

# repo alias
alias repos='repo sync .'
alias repob='repo abandon'
alias repou='repo upload .'

# tmux alias
alias ta='tmux attach'
alias td='tmux detach'
alias tl='tmux list-sessions'
alias tk='tmux kill-session -t $1'

# Editor alias
alias vim="nvim"
alias vi="nvim"
alias vimdiff='nvim -d'
export EDITOR=nvim

pc() { picocom -e e -b 115200 /dev/ttyUSB$1; }
mc() { minicom -D /dev/ttyUSB$1 -b 115200 --color=on; }
tc() {
    local DEV=${1:-0}
    local BAUD=${2:-115200}

    # If DEV is a number, automatically expand it to /dev/ttyUSB<num>
    if [[ "$DEV" =~ ^[0-9]+$ ]]; then
        DEV="/dev/ttyUSB$DEV"
    fi

    while true; do
        clear
        echo "🔌 Starting tio on $DEV at $BAUD..."
        tio -b "$BAUD" "$DEV"
        local EXIT_CODE=$?
        echo
        if [ "$EXIT_CODE" -eq 0 ]; then
            echo "✅ Exited normally. Stopping auto-reconnect."
            break
        fi

        echo "🔁 Press Enter to reconnect, or Ctrl+C to quit..."
        # Reset terminal and wait for user input
        stty sane
        bash -c 'read -n1'
    done
}

venv3() { python3 -m venv $@; }
dotedit() { (cd ~/.local/dotfiles && vim); }
dotup() { (cd ~/.local/dotfiles && git pull); }
alias dotcd='cd ~/.local/dotfiles'

# Fzf
export FZF_DEFAULT_OPTS="--height 40% --border --layout=reverse --ansi"

# colored man pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}

#
# PATH
#
function ADD_PATH() {
	if [[ -d $1 ]] && [[ ! $PATH =~ $1 ]]; then
		export PATH="$PATH:$1"
	fi
}

function ADD_PATH_BEFORE() {
	if [[ -d $1 ]] && [[ ! $PATH =~ $1 ]]; then
		export PATH="$1:$PATH"
	fi
}

ADD_PATH_BEFORE $HOME/.local/bin

if [ -f ~/.bash_local_aliases ]; then
	. ~/.bash_local_aliases
fi
