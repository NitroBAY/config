#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
alias bruh='mpg123 ~/shared/dontread.mp3'
alias debit='iperf -c ping.online.net -p 5200 -t 5 -b'
PS1='[\u@\h \W]\$ '
