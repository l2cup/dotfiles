"Termgui colors and coloring for it
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:rainbow_conf = {  'ctermfgs':['red', 'green', 'blue'],'guifgs':[ '#A3BE8C',  '#EBCB8B', '#81A1C1', '#B48EAD', '#88C0D0', '#E5E9F0'], 'separately': { 'html': 0}}

"Actual theme for vim
colorscheme nord 

"Cursor line no underline on line number
hi CursorLineNr term=bold cterm=bold ctermfg=012 gui=bold

"Airline theme source
source ~/.vim/theme.airline.vim




