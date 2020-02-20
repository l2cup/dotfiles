"Buffer keymappings

noremap <Tab> :bnext<CR>
noremap <S-Tab> :bprevious<CR>
noremap <Leader><Tab> :bdelete!<CR>
noremap <Leader><S-Tab> :bunload<CR>

nmap <silent><C-l> <C-w>l<C-w>_:vertical resize 87<CR>
nmap <silent><C-h> <C-w>h<C-w>_:vertical resize 87<CR>
nmap <C-j> <C-w>j<C-w>_
nmap <C-k> <C-k>k<C-w>_

"Coc keymaps
"Tab for shifting in autocompletion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Enter for autocompletion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"Self explanitory
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nn <silent> K :call CocActionAsync('doHover')<cr>



let g:coc_snippet_next = '<tab>'

"Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Javascript specific keymaps
"
autocmd Filetype javascript,vue,typescript nmap <leader>o :CocCommand eslint.executeAutofix<CR>

"Vista keymap
nmap <Leader>v :Vista!!<CR>

"Toggle lopen keymap
nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
