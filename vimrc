syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
filetype plugin indent on

set guifont=ProggyCleanTT\ 12

" THEME COLOR
" colorscheme gruvbox
" colorscheme distinguished
colorscheme rigel

set termguicolors
set wildmenu " Display command line's tab complete options

" SINTASTIC CONFIG
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Line numbers "
set number
set relativenumber

set expandtab " Turn tab into spaces
set showmatch " Show matching brackets
set hlsearch " Highlight search

" Enable highlight current line "

set cursorline 
:highlight Cursorline cterm=bold

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Vertical align cursor "
set scrolloff=999 

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_theme='oceanicnext'

"END SYNTASTIC CONFIG "

" CTRL-P SETTINGS "
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
" END CTRL-P SETTINGS "

" REMAPS
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" END REMAPS

call vundle#begin()
 Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plugin 'PhilRunninger/nerdtree-buffer-ops'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 Plugin 'ycm-core/YouCompleteMe'
 Plugin 'Shougo/neocomplete.vim'
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'tpope/vim-rails'
 Plugin 'vim-ruby/vim-ruby'
 Plugin 'kien/ctrlp.vim'
 Plugin 'preservim/nerdtree'
 Plugin 'airblade/vim-gitgutter'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 " Plugin 'vim-syntastic/syntastic'
 Plugin 'ryanoasis/vim-devicons'
 Plugin 'preservim/tagbar'
 "Themes
 
 " Plugin 'flazz/vim-colorschemes'
 Plugin 'dracula/vim', { 'name': 'dracula' }
 Plugin 'mhartington/oceanic-next'
 Plugin 'jpo/vim-railscasts-theme'
call vundle#end()
