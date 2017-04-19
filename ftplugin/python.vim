" Set folding settings
set foldnestmax=2
set foldlevel=1
set foldmethod=indent
"This prevents a \n being added by vim at the end of the file
setlocal noeol

" Only do this part when compiled with support for autocommands
if has("autocmd")
    augroup PythonCustom
        " Set omnifunc for python
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        autocmd BufWritePre :Isort
    augroup END
endif

map <F2> "zyw:exe "!python -c 'help(".@z.")'""<CR>

" I'M NOT USING PYTHON MODE ANYMORE SO COMMENTING OUT THESE OPTIONS
" " Indentation options
" let g:pyindent_open_paren = '&sw'
" let g:pyindent_nested_paren = '&sw'
" let g:pyindent_continue = '&sw'
" " Only use these 2 linters
" let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pep257']
" let g:pymode_lint_ignore = "E501"
" let g:pymode_rope_completion = 0
" let g:pymode_rope_complete_on_dot = 0
" let g:pymode_rope_autoimport = 0
" " Organize imports sorts imports, too. It does that according to PEP8. Unused
" " imports will be dropped.
" " Keymap 'g:pymode_rope_organize_imports_bind'
" let g:pymode_rope_organize_imports_bind = '<C-c>ro'
" " Insert import for current word under cursor 'g:pymode_rope_autoimport_bind'
" " Should be enabled 'g:pymode_rope_autoimport'
" let g:pymode_rope_autoimport_bind = '<C-c>ra'
