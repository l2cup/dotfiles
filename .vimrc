
set nocompatible
syntax on
set encoding=UTF-8
set backspace=indent,eol,start
set cursorline
set noshowmode
set background=dark
set rnu
set hid
set autoread
set ignorecase
set hlsearch
set smartcase
set gcr=a:blinkon0
set incsearch
"set signcolumn=number
set ttyfast
set undodir=~/.vim/undo-dir
set undofile
set nuw=3
set scrolloff=7
set showmatch
set diffopt+=context:2,iwhite
set wildmenu
set wildmode=full
set guicursor=
set mouse=a
set clipboard=unnamedplus

if has('nvim')
    set wildoptions+=pum
endif


"set shellcmdflag=-ic

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
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Javascript custom indendation where tab = 2 spaces for the Airbnb style guide
"autocmd FileType javascript,vue,html,typescript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

"C custom indentation to comply to linux kernel rules and clang auto format
autocmd FileType c,cpp,objc setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8 textwidth=80 cindent cinoptions=:0,l1,t0,g0,(0 colorcolumn=81
autocmd FileType c,cpp,objc ClangFormatAutoEnable
autocmd Filetype c,cpp,objc nmap <Leader>o :ClangFormat<CR>

"Yaml cusotm indentation
autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:> foldmethod=indent nofoldenable

"Used only by c so not in themes
highlight ColorColumn ctermbg=Black ctermfg=DarkRed

"Custom ctrlp ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|__pycache__\|dist\|public'
let g:ctrlp_use_caching = 0
let g:ctrlp_cmd='CtrlP :pwd'

let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--info=inline']}), <bang>0)


"Python highlight configuration.
let python_self_cls_highlight = 1

"netrw configuration
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3


"Clang auto detect style file for kernel style file
let g:clang_format#detect_style_file = 1

"Local vimrc settings
let g:localvimrc_reverse=1
let g:localvimrc_persistent=1

"Tagbar settings
let g:vista#renderer#enable_icon = 1
let g:vista_cursor_delay = 50
let g:vista_echo_cursor_strategy = 'floating_win'
let g:vista_close_on_jump = 1
let g:vista_default_executive ='ctags'
let g:vista_executive_for = {
            \ 'javascript': 'coc',
            \ 'typescript' : 'coc',
            \ 'vue': 'coc',
            \ 'python': 'coc',
            \ 'go': 'coc',
            \ }

let g:vim_vue_plugin_use_typescript = 1

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

"Let vim ignore gcc warnings but not errors
set errorformat^=%-G%f:%l:\ warning:%m
