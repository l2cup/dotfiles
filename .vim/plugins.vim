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

"Django syntax highlight
Plug 'tweekmonster/django-plus.vim'

"Css color
Plug 'ap/vim-css-color'

"Ctrl-P for GoDecl
Plug 'ctrlpvim/ctrlp.vim'

"Snippets
Plug 'honza/vim-snippets'

"JavaScript
Plug 'pangloss/vim-javascript'

"Typescript
Plug 'HerringtonDarkholme/yats.vim'

"FileManager
Plug 'tpope/vim-vinegar'

"Clang format
Plug 'rhysd/vim-clang-format'

"C improved glfw, opengl syntax
Plug 'bfrg/vim-glfw-syntax'
Plug 'beyondmarc/opengl.vim'

"Git plugin
Plug 'tpope/vim-fugitive'

"Local .vimrc for different project rules
Plug 'embear/vim-localvimrc'

"Plugin for tag lookup
Plug 'liuchengxu/vista.vim'

"Plugin for jsonc
Plug 'neoclide/jsonc.vim'

call plug#end()
