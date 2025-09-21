#! /usr/bin/bash

if ! pgrep -u $USER obsidian >/dev/null 2>&1; then
    exec obsidian
    pkill -SIGKILL obsidian
else
    pkill -SIGKILL obsidian
    exec obsidian
    pkill -SIGKILL obsidian
fi



