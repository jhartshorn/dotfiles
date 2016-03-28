exec xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 1 &
exec xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 2 &
exec xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 200 &
exec xbindkeys &
exec sudo tpb &
exec xscreensaver -no-splash &
exec /usr/bin/awesome -c /home/james/.config/awesome/rc.lua
