eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval $(thefuck --alias)

# Theme
source /Users/uros/.config/zsh/.theme.zsh

# Autocorret async usage enable
typeset -g ZSH_AUTOSUGGEST_USE_ASYNC=1

typeset -g ZSH_DISABLE_COMPFIX=true
# Faster key timeouts 
typeset -g KEYTIMEOUT=1
# Ask for correction enable
typeset -g ENABLE_CORRECTION="true"
# Completion dots when waiting for choice
typeset -g COMPLETION_WAITING_DOTS="true"

plugins=(
  extract
  git
  gitignore
  iterm2
  man
  z
  zsh_reload
  sudo
  fzf
  pip
  vscode
  xcode
  tmux
  brew
  osx
  python
  ripgrep
  zsh-syntax-highlighting
  zsh-autosuggestions
)
# Aliases
source /Users/uros/.config/zsh/.alias.zsh

source $ZSH/oh-my-zsh.sh
