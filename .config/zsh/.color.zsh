autoload -U colors && colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

setopt auto_cd
setopt multios
setopt prompt_subst

[[ -n "$WINDOW" ]] && SCREEN_NO="%B$WINDOW%b " || SCREEN_NO=""
