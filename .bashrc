#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/yoav/.cfg/ --work-tree=/home/yoav'

# Qt5 appearance with qt5ct
export QT_QPA_PLATFORMTHEME="qt5ct"
