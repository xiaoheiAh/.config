" Vundle Section Start
syntax enable
syntax on

set background=dark
color dracula

" colorscheme solarized
set nocompatible
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=1000	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
set encoding=utf-8
set laststatus=2
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
set ruler	" Show row and column ruler information
set showcmd
" set cursorline

set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set guifont=monaco:h12


let g:Powerline_symbols = 'unicode'
let NERDTreeShowHidden=1
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:go_highlight_fields = 1

" markdown 配置
let g:vim_markdown_folding_disabled = 1  "不折叠显示，默认是折叠显示，看个人习惯
let g:vim_markdown_override_foldtext = 0  
let g:vim_markdown_folding_level = 6    "可折叠的级数，对应md的标题级别
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_emphasis_multiline = 0
set conceallevel=2
let g:vim_markdown_frontmatter=1


" detect file type
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" ADD YOUR PLUGIN
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdcommenter'           " code commenter
Plugin 'kien/ctrlp.vim'                     " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'dracula/vim'			    " dracula theme
Plugin 'altercation/vim-colors-solarized'   " solarized theme
Plugin 'fatih/vim-go'			    " vim-go
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()
"Vundle Section End

"map F2 to open NERDTree
map <F2> :NERDTreeToggle<CR>
map <leader>f :CtrlPMRU<CR>
