xrdb -load /home/stew/.Xresources
setxkbmap dvorak
xmodmap ~/.Xmodmap
xbindkeys &
xrandr --output DP1 --mode 1920x1080 --pos 0x0
xrandr --output DP2 --mode 1920x1080 --right-of DP1
xrandr --output eDP1 --pos 1120x1080
xflux -z 94103
exec xmonad
