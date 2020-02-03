"Termgui colors and coloring for it
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:rainbow_conf = {  'ctermfgs':['red', 'green', 'blue'],'guifgs':[ '#A3BE8C',  '#EBCB8B', '#81A1C1', '#B48EAD', '#88C0D0', '#E5E9F0'], 'separately': { 'html': 0, 'javascript':0, 'htmldjango' : 0, 'typescript':0}}



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

    "#88C0D0
    autocmd ColorScheme nord highlight typescriptClassName ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptFuncName ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptInterfaceName ctermfg=6 guifg=#88C0D0
    autocmd ColorScheme nord highlight typescriptFuncCall ctermfg=6 guifg=#88C0D0


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

    "Python
    autocmd ColorScheme nord highlight pythonSelf ctermfg=015 guifg=#EBCB8B
    autocmd ColorScheme nord highlight pythonClassParameters ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight pythonFunctionParameters ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight pythonFunctionVars ctermfg=015 guifg=#B48EAD
    autocmd ColorScheme nord highlight pythonClass ctermfg=6 guifg=#88C0D0

    augroup END

"Actual theme for vim
colorscheme nord

"Cursor line no underline on line number
hi CursorLineNr term=bold cterm=bold ctermfg=012 gui=bold


"Airline theme source
source ~/.vim/theme.airline.vim




