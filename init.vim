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

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'pangloss/vim-javascript'
    Plug 'tomlion/vim-solidity'
    Plug 'leafgarland/typescript-vim'
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


    " Plug 'morgsmccauley/vim-react-native-snippets'
    " Plug 'SirVer/ultisnips'

call plug#end()

set undodir=~/.config/nvim/undodir
source ~/.config/nvim/configs.vim
source ~/.config/nvim/gen.vim
source ~/.config/nvim/nav.vim

