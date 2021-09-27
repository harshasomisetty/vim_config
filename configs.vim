if has_key(plugs, 'sonokai')
    colorscheme sonokai
endif

if has_key(plugs, 'fzf')
    nnoremap <silent> <C-t> :Files<CR>
    " nnoremap <C-p> :GFiles<CR>
endif

if has_key(plugs, 'nerdtree')
    nnoremap <C-P> :NERDTreeToggle<CR>
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

if has_key(plugs, 'vim-hardtime')
    
    " autocmd VimEnter, BufEnter, BufReadPost * silent! :HardTimeOn
    let g:hardtime_default_on = 1
    let g:hardtime_timeout = 4000
    let g:hardtime_showmsg = 1
endif

if has_key(plugs, 'coc.nvim')
    source ~/.config/nvim/cocsettings.vim
endif

if has_key(plugs, 'vim-slime')
    " always use tmux
    let g:slime_target = 'tmux'

    let g:slime_paste_file = "$HOME/.config/nvim/.slime_paste"

    " fix paste issues in ipython
    let g:slime_python_ipython = 1

    " always send text to the top-right pane in the current tmux tab without asking
    let g:slime_default_config = {
                \ 'socket_name': get(split($TMUX, ','), 0),
                \ 'target_pane': '{top-right}' }
    let g:slime_dont_ask_default = 1
endif

if has_key(plugs, 'vim-ipython-shell')
    source ~/.conf/nvim/ipythonconf.vim
endif

if has_key(plugs, 'vim-ipython')

endif
