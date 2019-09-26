xrdb -load /home/stew/.Xresources -I.Xresources.d
emacs --daemon # After xrdb so emacs GUI is properly configured
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
xmodmap ~/.Xmodmap
setxkbmap -layout dvorak -option ctrl:nocaps
xbindkeys
# xrandr --output DP-3.1 --mode 1920x1080 --pos 0x0
# xrandr --output DP-3.2 --mode 1920x1080 --pos 1920x0
# xrandr --output DP-4   --mode 1920x1080 --pos 960x1080 --primary
xset b 0 # mute bell
redshift &
xautolock -time 10 -locker slock\
          -killtime 12 -killer 'systemctl suspend -i'\
	  -corners ++-- -cornerdelay 1 -cornerredelay 15 &
exec xmonad
