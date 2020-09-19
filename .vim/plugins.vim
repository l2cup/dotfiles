filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged')

"Airline
Plug 'vim-airline/vim-airline'

"Theme plugins
Plug 'vim-airline/vim-airline-themes'

Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'

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
"Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Snippets
Plug 'honza/vim-snippets'

"JavaScript
Plug 'pangloss/vim-javascript'

"Typescript
Plug 'HerringtonDarkholme/yats.vim'

"Vue
Plug 'leafoftree/vim-vue-plugin'

"FileManager
Plug 'tpope/vim-vinegar'

"Clang format
Plug 'rhysd/vim-clang-format'

"Arm v7 syntax support
Plug 'ARM9/arm-syntax-vim'

"C improved glfw, opengl syntax
Plug 'bfrg/vim-glfw-syntax'
Plug 'beyondmarc/opengl.vim'

"Git plugin
Plug 'tpope/vim-fugitive'

"Local .vimrc for different project rules
"Plug 'embear/vim-localvimrc'

"Always in root directory
Plug 'airblade/vim-rooter'

" Surround 
Plug 'tpope/vim-surround'

"More text targets
Plug 'wellle/targets.vim'

"Plugin for tag lookup
Plug 'liuchengxu/vista.vim'

"Plugin for jsonc
Plug 'neoclide/jsonc.vim'

"Plug for toggling lopen
Plug 'milkypostman/vim-togglelist'

"Editorconfig
Plug 'editorconfig/editorconfig-vim'

"Camelcase motions
Plug 'bkad/camelcasemotion'

"Action menu 
if has('nvim')
  Plug 'kizza/actionmenu.nvim'
endif

"Register view
Plug 'junegunn/vim-peekaboo'

call plug#end()
