inoremap jk <Esc>
inoremap kj <Esc>

set number relativenumber
set autoread
autocmd VimEnter,BufNewFile,BufReadPost * silent! set mouse=
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'

    Plug 'sainnhe/sonokai'

    " Plug 'vim-syntastic/syntastic'
    " Plug 'sheerun/vim-polyglot'
    " Plug 'dense-analysis/ale'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'takac/vim-hardtime'

    Plug 'jpalardy/vim-slime', { 'for': 'python' }
    " Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
    Plug 'tmhedberg/SimpylFold'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'justinmk/vim-sneak'
call plug#end()

set undodir=~/.config/nvim/undodir
source ~/.config/nvim/configs.vim
source ~/.config/nvim/nav.vim
source ~/.config/nvim/gen.vim

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

