filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged')

"Airline
Plug 'vim-airline/vim-airline'

"Theme plugins
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'

"Rainbow Brackets
Plug 'luochen1990/rainbow'

"Icons for airline
Plug 'ryanoasis/vim-devicons'

"Autocompletion tools
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Autopairs plugin
Plug 'jiangmiao/auto-pairs'

"Golang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 

"Better python highlighting
Plug 'kh3phr3n/python-syntax'

"Css color
Plug 'ap/vim-css-color'

"Ctrl-P for GoDecl
Plug 'ctrlpvim/ctrlp.vim'

"Snippets
Plug 'honza/vim-snippets'

"JavaScript
Plug 'pangloss/vim-javascript'

"FileManager
Plug 'tpope/vim-vinegar'

"Clang format
Plug 'rhysd/vim-clang-format'

"C improved glfw, opengl syntax
Plug 'bfrg/vim-glfw-syntax'
Plug 'beyondmarc/opengl.vim'


call plug#end()
