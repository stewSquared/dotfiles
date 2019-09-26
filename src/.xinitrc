xrdb -load /home/stew/.Xresources -I.Xresources.d
emacs --daemon # After xrdb so emacs GUI is properly configured
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
xmodmap ~/.Xmodmap
setxkbmap -layout dvorak -option ctrl:nocaps
xbindkeys
xset b 0 # mute bell
redshift &
xautolock -time 10 -locker slock\
          -killtime 12 -killer 'systemctl suspend -i'\
	  -corners ++-- -cornerdelay 1 -cornerredelay 15 &
exec xmonad
