#/usr/bin/env bash

# Custom command-line argument scheme definitions
_opts=(list remove)
list_opts=(user)
list_user_opts=(name address telephone-number)
remove_opts=(user)

# Generic section below
function _gencomp()
{
    _path=("${COMP_WORDS[@]:1}")
    [[ "${#COMP_WORDS[@]}" -gt 1 ]] && unset '_path[${#_path[@]}-1]'
    IFS=_ 
    _var="${_path[*]}_opts[*]"
    unset IFS
    COMPREPLY=($(compgen -W "${!_var}" "${COMP_WORDS[${COMP_CWORD}]}"))
}
complete -F _gencomp mytool
