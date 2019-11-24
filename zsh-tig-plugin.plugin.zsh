# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0=${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}
0=${${(M)0:#/*}:-$PWD/$0}

# Then ${0:h} to get plugin's directory

if [[ ${zsh_loaded_plugins[-1]} != */zsh-tig-plugin && -z ${fpath[(r)${0:h}]} ]]
then
    fpath+=( "${0:h}" )
fi

typeset -gx ZSH_TIG_DIR=${0:h}

alias tig='TIGRC_USER=$ZSH_TIG_DIR/tigrc tig'

autoload zsh_tig_plugin_update
