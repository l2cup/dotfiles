# This plugin loads pyenv into the current shell and provides prompt info via
# the 'pyenv_prompt_info' function. Also loads pyenv-virtualenv if available.

# Load pyenv only if command not already available
eval "$(pyenv init - --no-rehash zsh)"
if (( $+commands[pyenv-virtualenv-init] )); then
    eval "$(pyenv virtualenv-init - zsh)"
fi

unset pyenvdirs dir
