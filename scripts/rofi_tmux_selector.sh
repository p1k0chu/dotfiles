#!/bin/sh

if [ -z "$@" ]; then
    tmux list-sessions -F "#S"
else
    ~/scripts/kitty_float_maybe.sh tmux attach-session -t "$@" &>/dev/null &
fi

