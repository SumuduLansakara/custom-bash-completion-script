#!/usr/bin/env bash

# BEGIN: user defined argument scheme
_opts=(arg1 arg2)
arg1_opts=(arg11 arg12)
arg2_opts=(arg21 arg22)
# END: user defined argument scheme

function _get_completions() {
  ## all completion tokens
  _path=("${COMP_WORDS[@]:1}")

  ## remove last empty-token word
  [[ "${#COMP_WORDS[@]}" -gt 1 ]] && unset '_path[${#_path[@]}-1]'

  ## create target array variable expansion expression
  IFS=_
  _var="${_path[*]}_opts[*]"
  unset IFS

  mapfile -t COMPREPLY < <(compgen -W "${!_var}" "${COMP_WORDS[${COMP_CWORD}]}")
}

# Generate completions for an executable named `mytool`
complete -F _get_completions mytool
