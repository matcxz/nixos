#!/etc/profiles/per-user/matheus/bin/bash
cache="/tmp/polybar-cmus-cache"

status=$(cmus-remote -Q 2>/dev/null)

if [ -z "$status" ]; then
    exit 0
fi

state=$(echo "$status" | awk '/^status/ {print $2}')

if [ "$state" != "playing" ]; then
    exit 0
fi

file=$(echo "$status" | sed -n 's/^file //p')

if [ -f "$cache" ]; then
    read -r cached_file cached_output < "$cache"
    if [ "$cached_file" = "$file" ]; then
        echo "$cached_output"
        exit 0
    fi
fi

filename=$(basename "$file")
filename="${filename%.*}"

if [[ "$filename" == *" - "* ]]; then
    artist="${filename%% - *}"
    title="${filename#* - }"
    output="󰝚 ${artist} - ${title}"
else
    output="󰝚 ${filename}"
fi

echo "$file $output" > "$cache"
echo "$output"
