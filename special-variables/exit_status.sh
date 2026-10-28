#!/usr/bin/env bash

# $? contains the previous command's exit status. Read it immediately.
true
printf 'After true, $? = %s (success)\n' "$?"

false
printf 'After false, $? = %s (failure)\n' "$?"

# Save the status if you want to use it later.
bash -c 'exit 7'
status=$?
printf 'After a command that exits with 7, saved status = %s\n' "$status"
