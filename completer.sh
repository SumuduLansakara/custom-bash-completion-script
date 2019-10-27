#/usr/bin/env bash

# Custom argument scheme definition
_opts=(arg1 arg2)
arg1_opts=(arg11 arg12)
arg2_opts=(arg21 arg22)

# Generic section below
function _gencomp()
{
    ## all completion tokens
    _path=("${COMP_WORDS[@]:1}")

    ## remove last empty-token word
    [[ "${#COMP_WORDS[@]}" -gt 1 ]] && unset '_path[${#_path[@]}-1]'

    ## create target array variable expansion expression
    IFS=_ 
    _var="${_path[*]}_opts[*]"
    unset IFS

    COMPREPLY=($(compgen -W "${!_var}" "${COMP_WORDS[${COMP_CWORD}]}"))
}

complete -F _gencomp mytool
