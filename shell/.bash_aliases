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
alias df='df -h'

alias f='find . -name'
alias g='grep -nr'

# python http server
alias pservice='python3 -m http.server'

# tags and cscope
alias csrbq='sudo find -type f -name "*.[chS]" > cscope.files && cscope -bR -i cscope.files'
alias ctagsdb='ctags -R *'
alias db_init='csrbq && ctagsdb'
alias db_clean='rm -f cscope.* tags'

alias sadb='adb kill-server; sudo adb start-server;adb devices'
alias mk='make clean;make'

# git alias
alias gits='git status'
alias gitl='git log | bat -n'
alias gitd='git diff | bat -n'
alias gitdc='git diff --cached | bat -n'
alias gitb='git branch'
alias gitc='git checkout -- .'
alias gitr='git reset --hard HEAD^'
alias gitco='git checkout'
alias gitcom='git checkout master'
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
venv3() { python3 -m venv $@; }
dotedit() { (cd ~/.local/dotfiles && vim); }
dotup() { (cd ~/.local/dotfiles && git pull); }
alias dotcd='cd ~/.local/dotfiles'

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
