# Default navigation commands/keybindings

Most keybindings follow a "prefix+key" structure, but custom ones can be defined with any key combination.

<kbd><C-b></kbd> -- prefix

Alternatives: <kbd><C-a></kbd> (conflicts with most shells' "go to first char"); <kbd><C-z></kbd> (conflicts with tmux "suspend client" command); <kbd><C-s></kbd> (conflicts with most shells' "freeze terminal")

<kbd><prefix> + c</kbd> -- create new window

<kbd><prefix> + %</kbd> -- split vertically

<kbd><prefix> + "</kbd> -- split horizontally

<kbd><prefix> + d</kbd> -- detach from tmux session

<kbd><prefix> + <prefix></kbd> -- send `prefix` key to terminal

<kbd><prefix> + <number></kbd> -- go to window represented with <number>

<kbd><prefix> + </kbd> -- kill terminal (kill pane)

<kbd><prefix> + &</kbd> -- kill window

<kbd><prefix> + z</kbd> -- zoom into pane (give current pane the max terminal dimensions)

<kbd><prefix> + {/}</kbd> -- swap current pane with previous/next pane

<kbd><prefix> + <M-{1-5}></kbd> -- switch into 1 of 5 preset layouts

<kbd><prefix> + <C-arrow></kbd> -- resize pane in steps of 1 cell

<kbd><prefix> + <M-arrow></kbd> -- resize pane in steps of 5 cells

<kbd><prefix> + :</kbd> -- enter the tmux command prompt (where the server awaits tmux commands)

# Important features

The server is killed only when no clients are running (no sessions are closed if you close the terminal emulator via navigation buttons; you'll have to send an exit command to the child shell in tmux). Attaching is done via `tmux attach`

`tmux` can be set as a login shell (via `chsh`), which requires a `default-shell` option set in the configuration file.

The statusline can be customized and can also run executables (most common being `whoami`, `hostname` and `date`)

`tmux` has a copy mode, in which terminal feeds are treated as text output and everything printed on `stdout` can be copied/scrolled through. The default mode depends on the $EDITOR variable (if the executable contains a "vi" in the filename, `copy-mode` is set to `vi`).

# Configuration

The default configuration file is ~/.tmux.conf and follows a vi-like config syntax.
