let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_addtags_transform = "camelcase"

autocmd BufWritePre *.go :call CocAction("format")
au BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl
au BufRead,BufNewFile *.gotext set filetype=gotexttmpl

function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

autocmd Filetype go nmap <leader>r <Plug>(go-run)

autocmd Filetype go nmap <leader>o <Plug>(go-imports)

autocmd Filetype go nmap <leader><Space> <Plug>(go-def) 

autocmd Filetype go nmap <leader>a :GoAlternate<CR>

autocmd Filetype go nmap <leader>c :GoCoverageToggle<CR>

autocmd Filetype go nmap <C-g> :GoDecls<CR>

autocmd Filetype go nmap <leader>t :GoTest<CR>
