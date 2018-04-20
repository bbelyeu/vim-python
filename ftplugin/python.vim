" Set folding settings
" If I continue to have issues with folds, I could use foldexpr to fix
set foldlevel=1
set foldmethod=indent
"set foldmethod=syntax
set foldminlines=3
set foldnestmax=2

" Only do this part when compiled with support for autocommands
if has("autocmd")
    augroup PythonCustom
        " Set omnifunc for python
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        " Always Isort before writing
        autocmd BufWritePre :Isort
    augroup END
endif

map <F1> "zyw:exe "!python -c 'help(".@z.")'""<CR>
map <F2> :PymodeLint<CR>

" Only use these 2 linters
" let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pep257']
" let g:pymode_lint_ignore = "E501"
" Insert import for current word under cursor 'g:pymode_rope_autoimport_bind'
" Should be enabled 'g:pymode_rope_autoimport'
" let g:pymode_rope_autoimport_bind = '<C-c>ra'

" Disable Pymode folding b/c I get much better results I like from the settings above
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 100
