xrdb -merge ~/.Xresources

#Keyboard
setxkbmap -option caps:escape
setxkbmap -option "grp:lswitch" "us,hr"

xsetroot -solid "#303030"

udiskie &

exec i3
