# Lab Space 
# A collection of pre-configured docker images for quick testing of code.
# Github: https://www.github.com/lewisevans2007/lab_space
# Licence: GNU General Public License v3.0
# By: Lewis Evans

_normal=$'\e[0m'
if [ "$USER" = root ]; then
   _color=$'\e[1;31m' # red
   _symbol='#'
else
   _color=$'\e[1;32m' # green
   _symbol='$'
fi
if [ -n "$ZSH_VERSION" ]; then
   PS1="%{$_color%}Lab Space [%{$_normal%}%~%{$_color%}]$_symbol %{$_normal%}"
else
   PS1="\[$_color\]Lab Space [\[$_normal\]\w\[$_color\]]$_symbol \[$_normal\]"
fi
unset _normal _color _symbol