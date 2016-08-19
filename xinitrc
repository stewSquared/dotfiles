xrdb -load /home/stew/.Xresources
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
setxkbmap -layout dvorak -option ctrl:nocaps
xmodmap ~/.Xmodmap
xbindkeys &
xrandr --output DP-1 --mode 2560x1440 --pos 0x0
xrandr --output DP-3 --mode 2560x1440 --pos 2560x0
xrandr --output DP-4 --mode 1920x1080 --pos 1600x1440 --primary
redshift &
xset b 0
xautolock -time 15 -locker slock -killtime 10 -killer 'systemctl suspend' &
exec xmonad
