if has_key(plugs, 'sonokai')
    colorscheme sonokai
endif

if has_key(plugs, 'fzf')
    nnoremap <silent> <C-t> :Files<CR>
    " nnoremap <C-p> :GFiles<CR>
endif

if has_key(plugs, 'syntastic')
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    set signcolumn=auto

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_wq = 0
    " Always show the signcolumn, otherwise it would shift the text each time
    " diagnostics appear/become resolved.
    " if has("nvim-0.5.0") || has("patch-8.1.1564")
    "   " Recently vim can merge signcolumn and number column into one
    "   set signcolumn=number
    " else
    "   set signcolumn=yes
    " endif

endif

