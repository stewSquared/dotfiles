xrdb -load /home/stew/.Xresources
export DISPLAY=":0.0"; xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
setxkbmap dvorak
xmodmap ~/.Xmodmap
xbindkeys &
xrandr --output DP1 --mode 1920x1080 --above eDP1
xrandr --output DP2 --mode 1920x1080 --right-of DP1
exec xmonad
