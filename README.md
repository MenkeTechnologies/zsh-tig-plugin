# zsh-tig-plugin

A plugin for Zsh that automatically adds a few advanced bindings and also
provides a Zsh-rewritten function and/or script `tig-pick` (i.e.: the code is
agnostic and can be run either as a script or as a function; it defaults to
function), originally shipped with tig as `sh`-script in the `contrib/`
subdirectory.

## The Added Bindings

### —— Make Bindings ——

#### xmf – eXecute MakeFile

Retrieves the list of targets for `Makefile` in the current directory and runs
`fzf` or `fzy` on the list and then, when a target gets selected, executes
`make` on that target.

#### xamf – eXecute `all` MakeFile

Runs `make all`

#### xcmf – eXecute `clean` MakeFile

Runs `make clean`

### —— Copy Bindings ——

#### xcp - eXecute CoPy

Copies the SHA of currently active (highlighted) commit into the clipboard.
Supports OS X's `pbcopy` and Linux/other's `xsel` and `xclip`.

#### xfcp - eXecute File CoPy

Copies the contents of currently active (highlighted) file into the clipboard.
Supports OS X's `pbcopy` and Linux/other's `xsel` and `xclip`.

### —— Editor Bindings ——

#### xed - eXecute EDitor

Executes an editor on selected file. It's either `$VISUAL`, then `$EDITOR` and
then `vim`.

#### xled - eXecute List EDitor

Runs fuzzy-finder (either `fzf` or `fzy`) on the list of the files in the
repository and after selecting one it then executes an editor like in `xed`.

### —— Midnight Commander Bindings ——

#### xmc – eXecute Midnight Commander

Executes `mc` with the left pane set to the repository and the right pane to
`$ZSH_TIG_MC_DIR`. If the variable isn't set it uses `$HOME` instead.

#### xhmc – eXecute Home Midnight Commander

Executes `mc` with the left pane set to the repository and the right pane to the
home directory.

<!-- vim:set ft=markdown tw=80 fo+=a1n autoindent: -->
