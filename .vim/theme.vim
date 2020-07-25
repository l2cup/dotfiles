"Termgui colors and coloring for it
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


augroup nord-theme-overrides
    autocmd!
    " Javascript
    autocmd ColorScheme nord highlight jsFuncArgs ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight jsArrowFuncArgs ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight jsTemplateBraces ctermfg=015 guifg=#EBCB8B
    autocmd ColorScheme nord highlight jsObjectKey ctermfg=015 guifg=#EBCB8B
    autocmd ColorScheme nord highlight jsObjectShorthandProp ctermfg=015 guifg=#EBCB8B 
    autocmd ColorScheme nord highlight jsObjectKeyString ctermfg=015 guifg=#EBCB8B
    autocmd ColorScheme nord highlight jsFunctionKey ctermfg=015 guifg=#EBCB8B
    autocmd ColorScheme nord highlight jsObjectFuncName ctermfg=015 guifg=#EBCB8B

    " Typescript
    " #81A1C1
    autocmd ColorScheme nord highlight typescriptVariable ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptOperator ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptTry ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptExceptions ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptIdentifier ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptAssign ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptUnaryOp ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptBinaryOp ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptTernary ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptImport ctermfg=4 guifg=#81A1C1
    autocmd ColorScheme nord highlight typescriptExport ctermfg=4 guifg=#81A1C1

    "#88C0D0
    autocmd ColorScheme nord highlight typescriptClassName ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptFuncName ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptInterfaceName ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptFuncCall ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptArrowFunc ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptTypeReference ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptType ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptPredefinedType ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptPrototype ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptDocParamType ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptDocNamedParamType ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptGlobal ctermfg=6 guifg=#88C0D0

    "#8FBCBB
    "Here only for reference.
    
    "#B48EAD
    autocmd ColorScheme nord highlight typescriptFuncArg ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight typescriptArrowFuncArg ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight typescriptCall ctermfg=015 guifg=#B48EAD


    "#EBCB8B
    autocmd ColorScheme nord highlight typescriptLabel ctermfg=015 guifg=#EBCB8B

    "#FFF
    autocmd ColorScheme nord highlight typescriptBraces ctermfg=white guifg=white
    autocmd ColorScheme nord highlight typescriptMember ctermfg=white guifg=white
    autocmd ColorScheme nord highlight typescriptFuncComma ctermfg=white guifg=white
    autocmd ColorScheme nord highlight typescriptEndColons ctermfg=white guifg=white

    "Python
    autocmd ColorScheme nord highlight pythonSelf ctermfg=015 guifg=#EBCB8B
    autocmd ColorScheme nord highlight pythonClassParameters ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight pythonFunctionParameters ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight pythonFunctionVars ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight pythonClass ctermfg=6 guifg=#88C0D0

augroup END


augroup gruvbox-theme-overrides
    autocmd!

    "#FB4934
    autocmd ColorScheme gruvbox highlight typescriptTry ctermfg=9 guifg=#FB4934
    autocmd ColorScheme gruvbox highlight typescriptExceptions ctermfg=9 guifg=#FB4934
    autocmd ColorScheme gruvbox highlight typescriptIdentifier ctermfg=9 guifg=#FB4934
    autocmd ColorScheme gruvbox highlight typescriptEnumKeyword ctermfg=9 guifg=#FB4934
    autocmd ColorScheme gruvbox highlight typescriptImport ctermfg=9 guifg=#FB4934
    autocmd ColorScheme gruvbox highlight typescriptExport ctermfg=9 guifg=#FB4934
    autocmd ColorScheme gruvbox highlight typescriptVariable ctermfg=9 guifg=#FB4934

    "#B8BB26
    autocmd ColorScheme gruvbox highlight typescriptFuncCall ctermfg=10 guifg=#B8BB26 gui=bold term=bold cterm=bold

    "#FABD2F
    autocmd ColorScheme gruvbox highlight typescriptType ctermfg=11 guifg=#FABD2F
    autocmd ColorScheme gruvbox highlight typescriptPredefinedType ctermfg=11 guifg=#FABD2F
    autocmd ColorScheme gruvbox highlight typescriptPrototype ctermfg=11 guifg=#FABD2F
    autocmd ColorScheme gruvbox highlight typescriptTypeReference ctermfg=11 guifg=#FABD2F
    autocmd ColorScheme gruvbox highlight typescriptGlobal ctermfg=11 guifg=#FABD2F

    "#EBDBB2
    autocmd ColorScheme gruvbox highlight typescriptConstructSignature ctermfg=0 guifg=#EBDBB2
    autocmd ColorScheme gruvbox highlight typescriptTypeParameter ctermfg=0 guifg=#EBDBB2
    autocmd ColorScheme gruvbox highlight typescriptOperator ctermfg=0 guifg=#EBDBB2
    autocmd ColorScheme gruvbox highlight typescriptFuncArg ctermfg=0 guifg=#EBDBB2
    autocmd ColorScheme gruvbox highlight typescriptArrowFuncArg ctermfg=0 guifg=#EBDBB2
    autocmd ColorScheme gruvbox highlight typescriptFuncComma ctermfg=0 guifg=#EBDBB2
    autocmd Filetype typescript highlight PreProc ctermfg=0 guifg=#EBDBB2
    autocmd ColorScheme gruvbox highlight typescriptLabel ctermfg=0 guifg=#EBDBB2


    autocmd ColorScheme gruvbox highlight CocErrorSign ctermbg=235 guibg=#1d2021 ctermfg=167 guifg=#fb4934
    autocmd ColorScheme gruvbox highlight CocInfoSign ctermbg=235 guibg=#1d2021 ctermfg=214 guifg=#fabd2f 
    autocmd ColorScheme gruvbox highlight CocWarningSign ctermbg=235 guibg=#1d2021 ctermfg=208 guifg=#fe8019
    

augroup END


" Gruvbox
let g:gruvbox_invert_selection=0
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_italic=1

" Nord
let g:nord_underline=1
let g:nord_bold=1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1


"Actual theme for vim
colorscheme nord

"Cursor line no underline on line number
hi CursorLineNr term=bold cterm=bold ctermfg=012 gui=bold


"Airline theme source
source ~/.vim/theme.airline.vim
