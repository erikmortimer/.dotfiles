#!/usr/bin/env bash

languages=$(echo "golang c cpp python rust" | tr " " "\n")
core_utils=$(echo "find xargs sed awk bash" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

# -p is for prompt
read -p "QUERY: " query

if echo "$languages" | grep -qs $selected; then
    tmux split-window -p 32 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less -r"
else
    tmux split-window -p 32 -h bash -c "curl cht.sh/$selected~$query | less -r" 
fi
