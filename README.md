# zsh-tig-plugin

A plugin for Zsh that automatically adds a few advanced bindings and also
provides a Zsh-rewritten function and/or script `tig-pick` (i.e.: the code is
agnostic and can be run either as a script or as a function; it defaults to
function), originally shipped with tig as `sh`-script in the `contrib/`
subdirectory.

## The Added Bindings

### xmf – eXecute MakeFile

Retrieves the list of targets for `Makefile` in the current directory and runs
`fzf` or `fzy` on the list and then, when a target gets selected, executes
`make` on that target.

### xamf – eXecute `all` MakeFile

Runs `make all`

### xcmf – eXecute `clean` MakeFile

Runs `make clean`

### xcp - eXecute CoPy

Copies the SHA of currently active (highlighted) commit into the clipboard.
Supports OS X's `pbcopy` and Linux/other's `xsel` and `xclip`.

### xcpf - eXecute File CoPy

Copies the contents of currently active (highlighted) file into the clipboard.
Supports OS X's `pbcopy` and Linux/other's `xsel` and `xclip`.

<!-- vim:set ft=markdown tw=80 fo+=a1n autoindent: -->
