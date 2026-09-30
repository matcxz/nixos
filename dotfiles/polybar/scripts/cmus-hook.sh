#!/etc/profiles/per-user/matheus/bin/bash
cache="/tmp/polybar-cmus-cache"

status=$(cmus-remote -Q 2>/dev/null)
state=$(echo "$status" | awk '/^status/ {print $2}')

if [ "$state" != "playing" ]; then
    echo "" > "$cache"
    polybar-msg action "#cmus.hook.0" >/dev/null 2>&1
    exit 0
fi

file=$(echo "$status" | sed -n 's/^file //p')
filename=$(basename "$file")
filename="${filename%.*}"

output="󰝚 ${filename}"

echo "$output" > "$cache"
polybar-msg action "#cmus.hook.0" >/dev/null 2>&1
