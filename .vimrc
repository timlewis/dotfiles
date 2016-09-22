:color desert "set color scheme
set number  " Show line numbers
set linebreak " Break lines at word (requires Wrap lines)
set showbreak=+++   " Wrap-broken line prefix
set textwidth=100 " Line wrap (number of cols)
set showmatch " Highlight matching brace
set visualbell  " Use visual bell (no beeping)
 
set hlsearch  " Highlight all search results
set smartcase " Enable smart-case search
set ignorecase  " Always case-insensitive
set incsearch " Searches for strings incrementally
  
set autoindent  " Auto-indent new lines
set expandtab " Use spaces instead of tabs
set shiftwidth=2  " Number of auto-indent spaces
set smartindent " Enable smart-indent
set smarttab  " Enable smart-tabs
set softtabstop=2 " Number of spaces per Tab
   
set ruler " Show row and column ruler information
    
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start  "sane Backspace behaviour
set wildmenu "enhanced tab completion

set hidden "allow hidden buffers, dont limit to 1 file per split

"mapping leader to space
let mapleader=" " 

"disable brams splash screen
set shortmess+=I

"automatic commands
augroup autocom
  autocmd!
  "executes our mksession command on quit
  autocmd VimLeave * mksession! ~/dotfiles/vimsession.ses

  "execute mksession on write
  autocmd BufWritePost,FileWritePost * mksession! ~/dotfiles/vimsession.ses
augroup END

"vim plugins installed by vim-plug
call plug#begin()

"Tim Popes rails plugin
Plug 'tpope/vim-rails'

"vim ruby plugin
Plug 'vim-ruby/vim-ruby'

"Vim bubbles implements text bubbling
Plug 'frace/vim-bubbles'

"use silver searcher ag.vim for fast searching
Plug 'rking/ag.vim'

"CtrlP Full path fuzzy file, buffer, mru, tag, ... finder
Plug 'ctrlpvim/ctrlp.vim'

"Install all the colorschemes
Plug 'flazz/vim-colorschemes'

"preview and select next colour scheme http://vim.wikia.com/wiki/Switch_color_schemes#Script
Plug 'felixhummel/setcolors.vim'

"Lusty juggler/explorer manage files and buffers in vim
Plug 'sjbach/lusty'

"Dracula Color Scheme
Plug 'dracula/vim'
call plug#end()
