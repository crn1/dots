[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

#Keyboard
setxkbmap -option caps:escape
setxkbmap -option "grp:lswitch" "us,hr"

udiskie &

exec i3
