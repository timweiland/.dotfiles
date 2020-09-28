set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" tmux <3
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'

" Better folding for Python
Plugin 'tmhedberg/SimpylFold'
" Better autoindent for Python
Plugin 'vim-scripts/indentpython.vim'

Bundle 'Valloric/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'jnurmine/Zenburn'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'pangloss/vim-javascript'

Plugin 'python-mode/python-mode'

Plugin 'cocopon/iceberg.vim'
Plugin 'gkeep/iceberg-dark'

call vundle#end()
filetype plugin indent on

let mapleader=" "

set splitbelow
set splitright

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" Navigation for splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
" Folding with the spacebar
nnoremap <leader><leader> za

set encoding=utf-8

set rnu

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"set termguicolors
set background=dark
set t_Co=256
let python_highlight_all=1
syntax on


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set laststatus=2

let g:airline_detect_paste=1 
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" Use the icebergDark theme for the Airline status bar
let g:airline_theme='icebergDark'
let g:airline_powerline_fonts = 1

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <leader>ne :NERDTreeTabsToggle<CR>

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_plugin_jsdoc = 1

" Fuzzy find
nnoremap <silent> <Leader>f :Files<CR>
" Fzf for sibling files only
nnoremap <silent> <Leader>. :Files <C-r>=expand("%:h")<CR>/<CR>

nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>g :GFiles?<CR>
nnoremap <Leader>rg :Rg<Space><CR>
nnoremap <Leader>RG :Rg!<Space><CR>

" Prompt for a command to run in tmux
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>

colorscheme iceberg
set term=screen-256color
