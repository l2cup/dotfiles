eval "`fnm env`"
autoload -Uz is-at-least

# Theme
source $HOME/.config/zsh/.theme.zsh
source $HOME/.config/zsh/.icons.zsh

# Autocorret async usage enable
typeset -g ZSH_AUTOSUGGEST_USE_ASYNC=1
typeset -g ZSH_DISABLE_COMPFIX=true
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
 colored-man-pages
)
# Aliases

#TODO Move the oh-my-zsh leftovers to a custom zsh configuration with a plugin manager
source $HOME/.config/zsh/.theme.zsh
source $ZSH/oh-my-zsh.sh

source $HOME/.config/zsh/.alias.zsh
source $HOME/.config/zsh/zsh-autoenv/autoenv.zsh

bindkey -M menuselect '^h' vi-backward-char
bindkey -M menuselect '^k' vi-up-line-or-history
bindkey -M menuselect '^l' vi-forward-char
bindkey -M menuselect '^j' vi-down-line-or-history

bindkey '^[[Z' reverse-menu-complete

if [ -n "${NVIM_LISTEN_ADDRESS+x}" ]; then
  export COLORTERM="truecolor"
fi

setopt long_list_jobs

env_default 'PAGER' 'less'
env_default 'LESS' '-R'

#if [[ -r "/usr/local/opt/mcfly/mcfly.zsh" ]]; then
  #source "/usr/local/opt/mcfly/mcfly.zsh"
#fi

#eval "$(mcfly init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
