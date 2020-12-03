function detect-clipboard() {
emulate -L zsh

if [[ "${OSTYPE}" == darwin* ]] && (( ${+commands[pbcopy]} )) && (( ${+commands[pbpaste]} )); then
    function clipcopy() { pbcopy < "${1:-/dev/stdin}"; }
    function clippaste() { pbpaste; }
elif [ -n "${TMUX:-}" ] && (( ${+commands[tmux]} )); then
    function clipcopy() { tmux load-buffer "${1:--}"; }
    function clippaste() { tmux save-buffer -; }
function clipcopy() { _retry_clipboard_detection_or_fail clipcopy "$@"; }
function clippaste() { _retry_clipboard_detection_or_fail clippaste "$@"; }
return 1
fi
}

# Detect at startup. A non-zero exit here indicates that the dummy clipboards were set,
# which is not really an error. If the user calls them, they will attempt to redetect
# (for example, perhaps the user has now installed xclip) and then either print an error
# or proceed successfully.
detect-clipboard || true
