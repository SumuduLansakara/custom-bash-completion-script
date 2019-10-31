#/usr/bin/env bash

## Command-line argument scheme definition
## (only this section needs to be customized to match the target tool)

# First argument options
_opts=(list remove)

# Second argument options, when the first argument is 'list'
list_opts=(user)
list_user_opts=(name address telephone-number)

# Second argument options, when the first argument is 'remove'
remove_opts=(user)

## Similarly this can be extended to support any number of arguments.
## E.g. Following are some possible valid extention to the given example.
##    remove_user_address_opts=(arg1 arg2 arg3)
##    remove_user_address_arg1_opts=(arg11 arg12)
##    remove_user_address_arg1_arg11_opts=(arg111)

## Generic section below
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
