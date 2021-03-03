# User specific aliases and functions

# Color LS
colorflag="-G"

#alias ls="command ls ${colorflag}"

alias ls="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd="ls -lF ${colorflag} | grep '^d'" # only directories

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ~="cd ~"

#grep function that shows just the filenames of where the match occurs
grpf() {
	grep -rl "$1" "$2"
}

#grep function that shows filenames and lines where the match occurs
grpl() {
	grep -rn "$1" "$2"
}

# Git
alias g="git"
alias ga="git add -A ."
alias gca="git commit --amend"
alias gco="git checkout"
alias gcm="git commit -m"
alias ghr="git reset --hard"
alias gpl="git pull origin"
alias gps="git push origin"
alias gpu="git push -u origin"
alias gs="git status -s"
alias gsc="git stash clear"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gss="git stash save"
alias gst="git stash"
alias gun="git reset --"

function gnb() {
	git checkout -b "$1"
}

function gsa() {
	git stash apply stash@{"$1"}
}

function gsd() {
	git stash drop stash@{"$1"}
}

function gssp() {
	git stash save -p "$1"
}

if [ -f "$HOME"/git_completion ]; then
	source "$HOME"/git_completion
	__git_complete gco _git_checkout
	__git_complete gps _git_push
	__git_complete gpl _git_pull
fi