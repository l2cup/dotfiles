"Buffer keymappings

noremap <Tab> :bnext<CR>
noremap <S-Tab> :bprevious<CR>
noremap <Leader><Tab> :bdelete!<CR>
noremap <Leader><S-Tab> :bunload<CR>

nmap <silent><C-l> :call Switch_window_right()<CR>
nmap <silent><C-h> :call Switch_window_left()<CR>
nmap <C-j> <C-w>j<C-w>_
nmap <C-k> <C-k>k<C-w>_


function Switch_window_right()
    :exe "normal \<C-w>l\<C-w>"
    if winwidth(0) < 83
        :exe "normal \:vertical resize 83\<CR>"
    endif
endfunction

function Switch_window_left()
    :exe "normal \<C-w>h\<C-w>_"
    if winwidth(0) < 83
        :exe "normal \:vertical resize 83\<CR>"
    endif
endfunction


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

"Python specific keymaps
autocmd Filetype python nmap <leader>r :!python3 %<CR>
autocmd Filetype python nmap <leader>e :!python3 

"Vista keymap
nmap <Leader>v :Vista!!<CR>
nmap <Leader>f :Lex<CR>

"Toggle lopen keymap
nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>

"<S-k> documentation scroll. Works in normal mode.
"TODO Allow no mouse scrolling in insert mode documentation.
function FindCursorPopUp()                                                                                                                                                                                            
    let radius = get(a:000, 0, 2)
    let srow = screenrow()
    let scol = screencol()
    " it's necessary to test entire rect, as some popup might be quite small
    for r in range(srow - radius, srow + radius)
        for c in range(scol - radius, scol + radius)
            let winid = popup_locate(r, c)
            if winid != 0
                return winid
            endif
        endfor
    endfor

    return 0
endfunction

function ScrollPopUp(down)
    let winid = FindCursorPopUp()
    if winid == 0
        return 0
    endif

    let pp = popup_getpos(winid)
    call popup_setoptions( winid,
                \ {'firstline' : pp.firstline + ( a:down ? 1 : -1 ) } )

    return 1
endfunction

nnoremap <expr> <c-d> ScrollPopUp(1) ? '<esc>' : '<c-d>'
nnoremap <expr> <c-u> ScrollPopUp(0) ? '<esc>' : '<c-u>'

"Fugitive Keymapings
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gd :Gdiff<CR>
