#!/usr/bin/env bash

# In Bash, $_ expands to the last argument of the previous command.
printf '%s\n' apple banana cherry
printf 'The previous command had last argument: %s\n' "$_"

# Quotes keep a phrase together as one argument.
printf '%s\n' 'hello world'
printf 'Now the previous command had last argument: %s\n' "$_"

# Read $_ immediately, because each new command can change it.
