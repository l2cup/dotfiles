"Auto selection of snippets
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
	  \ pumvisible() ? "\<C-n>" :
	  \ <SID>check_back_space() ? "\<Tab>" :
	  \ coc#refresh()

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

let s:code_actions = []

func! ActionMenuCodeActions() abort
  if coc#util#has_float()
    call coc#util#float_hide()
  endif

  let s:code_actions = CocAction('codeActions')
  let l:menu_items = map(copy(s:code_actions), { index, item -> item['title'] })
  call actionmenu#open(l:menu_items, 'ActionMenuCodeActionsCallback')
endfunc

func! ActionMenuCodeActionsCallback(index, item) abort
  if a:index >= 0
    let l:selected_code_action = s:code_actions[a:index]
    let l:response = CocAction('doCodeAction', l:selected_code_action)
  endif
endfunc

nnoremap <silent> <Leader>1 :call ActionMenuCodeActions()<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')
