xrdb -load /home/stew/.Xresources
export DISPLAY=":0.0"; xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
setxkbmap dvorak
xmodmap ~/.Xmodmap
xbindkeys &
exec xmonad
