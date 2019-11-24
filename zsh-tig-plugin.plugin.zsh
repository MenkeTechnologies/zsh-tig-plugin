# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0=${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}
0=${${(M)0:#/*}:-$PWD/$0}

if [[ ${zsh_loaded_plugins[-1]} != */zsh-tig-plugin && -z ${fpath[(r)${0:h}]} ]]
then
    fpath+=( "${0:h}" )
fi

# END OF THE STANDARD BLOCK

# Export the parameter just in case zsh_tig_plugin_update
# will be run as script and something goes wrong with its
# detection of the plugin dir
typeset -gx ZSH_TIG_DIR=${0:h}

# The alias that points tig to the extended tigrc
alias tig='TIGRC_USER=$ZSH_TIG_DIR/tigrc tig'

# Provide the custom tigrc generator
autoload zsh_tig_plugin_update

# Register an on-update hook as per the plugin standard
(( ${+functions[@zsh-plugin-run-on-update]} )) && \
    @zsh-plugin-run-on-update "zsh_tig_plugin_update"

# Generate initial tigrc
[[ ! -f $ZSH_TIG_DIR/tigrc ]] && zsh_tig_plugin_update
