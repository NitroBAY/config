#
# ~/.bashrc
#
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
shopt -s extglob
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export LIBVA_DRIVER_NAME=i965
export PATH="${PATH}:$HOME/bin:/usr/share/applications"
export BROWSER="chromium"
export EDITOR="vim"
alias ls='ls --color=auto'
alias pac='sudo pacman'
alias ins='sudo pacman -S'
export PS1="\[\033[38;5;13m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;9m\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]\W\[$(tput sgr0)\]\[\033[38;5;13m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#PS1='[[\e[01;33m\]\u@\h \W]\$ '
#PS1="\n\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\] \t \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\n$ "

if [ -z "$BASH_EXECUTION_STRING" ]; then
    exec fish;
fi



