Xvfb :1 -screen 0 800x600x16 -ac &
sleep 2
x11vnc -display :1 -http -forever &
sleep 2
DISPLAY=:1 blackbox &
sleep 2
DISPLAY=:1 firefox &
