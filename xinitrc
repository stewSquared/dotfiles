xrdb -load /home/stew/.Xresources
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
setxkbmap -layout dvorak -option ctrl:nocaps
xmodmap ~/.Xmodmap
xbindkeys &
# xrandr --output DP1 --mode 2560x1440 --pos 0x0
# xrandr --output HDMI1 --mode 2560x1440 --pos 2560x0
# xrandr --output eDP1 --mode 1920x1080 --pos 1600x1440 --primary
xrandr --output HDMI1 --mode 1920x1080 --pos 0x0
xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0
xrandr --output eDP1 --mode 1920x1080 --pos 960x1080 --primary
redshift &
xset b 0
xautolock -time 15 -locker slock -killtime 10 -killer 'systemctl suspend' &
exec xmonad
