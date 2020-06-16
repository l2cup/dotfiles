eval "`fnm env --multi`"

# Theme
source /Users/uros/.config/zsh/.theme.zsh
source /Users/uros/.config/zsh/.icons.zsh

# Autocorret async usage enable
typeset -g ZSH_AUTOSUGGEST_USE_ASYNC=1

typeset -g ZSH_DISABLE_COMPFIX=true
# Faster key timeouts 
typeset -g KEYTIMEOUT=1

typeset -g DISABLE_AUTO_UPDATE=true

typeset -g DISABLE_MAGIC_FUNCTIONS=true

plugins=(
 git
 gitignore
 z
 zsh_reload
 tmux
 fzf
 zsh-syntax-highlighting
 zsh-autosuggestions
 vi-mode
 pyenv
)
# Aliases
source /Users/uros/.config/zsh/.alias.zsh

#TODO Move the oh-my-zsh leftovers to a custom zsh configuration with a plugin manager
source $ZSH/oh-my-zsh.sh

bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^j' vi-down-line-or-history

bindkey '^[[Z' reverse-menu-complete
