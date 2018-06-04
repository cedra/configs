# Zshrc

# not running interactively then bail
[[ $- != *i* ]] && return

# shell opts
setopt auto_cd
setopt bang_hist
setopt completealiases
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt inc_append_history
setopt share_history

(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh

alias pass="mpw -u [redacted] -t x -R 1 "
alias theme="python ~/i3wm-themer/src/i3wm-themer.py --config ~/i3wm-themer/src/config.yaml --load "
alias irc="ssh [server] -t tmux a"

EDITOR=/usr/bin/vim
export TERM='rxvt-unicode-256color'

# alias
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias upd='sudo pacman -Syyu'
alias pac='sudo pacman --color auto'
alias merge='xrdb -merge ~/.Xresources'
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 --sort rate --save /etc/pacman.d/mirrorlist --verbose'

al-info
