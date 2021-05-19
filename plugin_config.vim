if has_key(plugs, 'nerdtree')
    nnoremap <leader>n :NERDTreeFocus<CR>
    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>
endif

if has_key(plugs, 'sonokai')
    colorscheme sonokai
endif

if has_key(plugs, 'fzf')
    nnoremap <silent> <C-f> :Files<CR>
endif

if has_key(plugs, 'syntastic')
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
endif

if has_key(plugs, 'coc.nvim')

