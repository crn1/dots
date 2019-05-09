#        _               _
#       | |             | |
#       | |__   __ _ ___| |__  _ __ ___
#       | '_ \ / _` / __| '_ \| '__/ __|
#      _| |_) | (_| \__ \ | | | | | (__
#     (_)_.__/ \__,_|___/_| |_|_|  \___|
#

[[ $- != *i* ]] && return

export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="chromium"

set -o vi

#Alias
alias ls='ls -h --color=auto'
alias la='ls -h -a --color=auto'
alias sd='sudo shutdown 0'
alias rs='sudo reboot'
alias susp='sudo systemctl suspend'
alias sx='startx'
alias e='exit'
alias q='exit'
alias x='exit'
alias v='sudo vim -p'
alias vs='sudo vim -S .vim_session'
alias s='sudo'
alias c='clear'
alias t='sudo touch $@'
alias cp='sudo cp $@'
alias mv='sudo mv $@'
alias fd='sudo fdisk -l'
alias r='sudo ranger .'
alias p='sudo pacman -S'
alias pr='sudo pacman -Rsc'
alias ps='sudo pacman -Ss'
alias pu='sudo pacman -Syu'
alias ctl='sudo systemctl'
alias a='alsamixer'
alias m='sudo mount'
alias um='sudo umount'
alias rm='sudo rm $@'

#YouTube komande
alias yt="youtube-dl --add-metadata -ic"
alias yta="youtube-dl --add-metadata --extract-audio --audio-format mp3"

#git komande
alias g='sudo git'
alias gi='sudo git init'
alias ga='sudo git add'
alias gm='sudo git commit'
alias gs='sudo git status'
alias gl='sudo git log'
alias gd='sudo git diff'
alias gc='sudo git clone'
alias gch='sudo git checkout'
alias gpl='sudo git pull'
alias gph='sudo git push'
alias gmr='sudo git merge'

#rc
alias bashrc='sudo vim ~/repo/new-dots/bashrc'
alias xinitrc='sudo vim ~/repo/new-dots/xinitrc'
alias vimrc='sudo vim ~/repo/new-dots/vimrc'
alias i3rc='sudo vim ~/repo/new-dots/config/i3/config'
alias i3barrc='sudo vim ~/repo/new-dots/config/i3status/config'
alias xres='sudo vim ~/repo/new-dots/Xresources'
alias bp='sudo vim ~/repo/new-dots/bash_profile'
alias dots='cd ~/repo/new-dots'

#cd
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias .....='cd .....'
cd()
{
	builtin cd $@
	ls -h --color=auto
}

#ostalo
shopt -s autocd
PS1='[\u@\h \W]\$ '
