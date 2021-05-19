inoremap jk <Esc>
inoremap kj <Esc>

set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'sainnhe/sonokai'
    Plug 'wikitopian/hardmode'

    Plug 'vim-syntastic/syntastic'
    Plug 'sheerun/vim-polyglot'
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'Vimjas/vim-python-pep8-indent'

    " Plug '



    " Plug 'Valloric/YouCompleteMe'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()



set undodir=~/.config/nvim/undodir
source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugin_config.vim
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

let g:hardtime_default_on = 1
