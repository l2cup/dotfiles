"Basic settings
set nocompatible
syntax on
set encoding=UTF-8
set number relativenumber
set backspace=indent,eol,start
set cursorline
set noshowmode


"Faster escape sequence
augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
augroup END
set ttimeoutlen=0

"Faster updatetime
set updatetime=100

"Leader key remap
let mapleader=","


"Plugins source for vim, uses VimPlug
source ~/.vim/plugins.vim

"Theme configuration source
source ~/.vim/theme.vim

"Keymaps configuration source
source ~/.vim/keymap.vim

"CoC vim confiration source
source ~/.vim/coc.vim

"Govim configuration source
source ~/.vim/go.vim

"Rainbow brackets toggle
let g:rainbow_active = 1

"Indentation, tab = 4 spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Javascript custom indendation where tab = 2 spaces for the Airbnb style guide
autocmd FileType javascript,vue,html setlocal shiftwidth=2 tabstop=2
"C custom indentation to comply to linux kernel rules and clang auto format
autocmd FileType c,cpp,objc setlocal expandtab tabstop=8 shiftwidth=8 softtabstop=8 textwidth=80 cindent cinoptions=:0,l1,t0,g0,(0 colorcolumn=81
autocmd FileType c,cpp,objc ClangFormatAutoEnable

"Used only by c so not in themes
highlight ColorColumn ctermbg=Black ctermfg=DarkRed

"Custom ctrlp ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"Python highlight configuration.
let python_self_cls_highlight = 1

"netrw configuration
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4

"Clang auto detect style file for kernel style file
let g:clang_format#detect_style_file = 1
