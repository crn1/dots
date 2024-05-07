xrdb -merge ~/.Xresources

#Keyboard
setxkbmap -option caps:escape
#setxkbmap -option "grp:lswitch" "us,hr"

xsetroot -solid "#303030"

exec i3

# Randomize wallpaper with feh and wal
# set wallpaper = $(ls -1A ~/wallpapers | shuf -n 1)"; feh $wallpaper; wal -i $wallpaper -n
