#!/usr/bin/env bash

# & starts a command in the background.
sleep 2 &

# $! is the PID of the most recently started background process.
background_pid=$!
printf 'Started sleep in the background; $! = %s\n' "$background_pid"
printf 'This script can continue while sleep runs.\n'

# Wait for our background process to finish.
wait "$background_pid"
printf 'Background process %s has finished.\n' "$background_pid"
