# Bash special variables

Run these examples from the project directory using Bash:

```bash
bash special-variables/current_pid.sh
bash special-variables/exit_status.sh
bash special-variables/background_pid.sh
bash special-variables/last_argument.sh
```

| Variable | Meaning | What to expect |
| --- | --- | --- |
| `$$` | PID of the shell running the script | A numeric PID, usually different each run |
| `$?` | Exit status of the last command | `0` for success; nonzero for failure (examples: `1`, `7`) |
| `$!` | PID of the last background process | The PID of `sleep`, followed by a completion message after two seconds |
| `$_` | Last argument of the previous command in Bash | `cherry`, then `hello world` |

Read `$?`, `$!`, and `$_` promptly, or save them in named variables before another relevant command changes them. Run these scripts with `bash` rather than sourcing them into another shell, since shell behavior can differ.
