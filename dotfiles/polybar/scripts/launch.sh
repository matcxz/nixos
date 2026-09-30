#!/etc/profiles/per-user/matheus/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do
	sleep 1
done

polybar main &
