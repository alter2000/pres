%title: tmux Workshop

# `tmux`

## The terminal multiplexer

------

# Why it works

 * Server-client architecture
 * Efficient terminal usage
 * Persistence across devices
 * Text-based tiling WM in a terminal

------

# Sessions, windows and panes

Analogues to GUI window managers:

 session | session
  window | desktop
   pane  | window

 * Multiple sessions per server
 * Multiple clients per session
  * screen sharing; limited to smallest terminal
 * Multiple windows per session
 * Multiple instances per window

------

# Modes

## Insert
Standard mode, i.e shell command mode

## Copy
Scrollback; search/copy text printed on console

## Command
Send commands to the tmux server/client

------

# Keybindings & configuration

 * Everything uses a prefix (\ by default) as a dead key
 * The default config file is ~/.tmux.conf
  * Can source other files


## Follows Vi-like configuration and has a vi copy mode

------

# Statusline

 * Can display any arbitrary text and evaluate expressions
  * Differentiate between SSH/Mosh sessions
  * Differentiate between projects

 * Display active window/pane, user/hostname, time, last log line, etc.

------

# Practice!

1. Learn default keybindings
^

2. Customize keybindings
^

3. Share a tmux session over SSH
^

4. Customize the interface
^

5. Set up a statusline
^

6. Add plugins?
