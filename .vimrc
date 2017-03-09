" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins
Plugin 'vim-airline/vim-airline' " status bar
Plugin 'vim-airline/vim-airline-themes' " airline themes
Plugin 'scrooloose/nerdcommenter' " comment lines easily
Plugin 'scrooloose/nerdtree' " fs explorer
Plugin 'Xuyuanp/nerdtree-git-plugin' " git status flags for nerd tree
Plugin 'mileszs/ack.vim' " for searching
Plugin 'tpope/vim-fugitive' " git plugin
Plugin 'airblade/vim-gitgutter' " git diff in gutter (by line numbers)
Plugin 'tpope/vim-surround' " surround characters
Plugin 'jiangmiao/auto-pairs' " autoclose brackets and quotes
Plugin 'ervandew/supertab' " autocomplete with tab
Plugin 'chriskempson/base16-vim' " themes
Plugin 'gcmt/taboo.vim' " rename tabs
Plugin 'sheerun/vim-polyglot' " better language specific syntax and indentation
Plugin 'ciaranm/detectindent' " auto detect indentation 
Plugin 'flazz/vim-colorschemes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" end Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Override default leader
let mapleader="\<Space>"

set backspace=indent,eol,start " backspace over anything

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colours
syntax enable " enable syntax processing

" Onedark

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme gruvbox

" base16

"if filereadable(expand("~/.vimrc_background"))
  "let base16colorspace=256
  "source ~/.vimrc_background
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs and spacing
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces when press <TAB> and number of spaces deleted when backspacing
set expandtab " tabs are spaces
set shiftwidth=2 " columns inserted for reindent operations (<< and >>)
set autoindent " copy indentation from pervious line when starting a new line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI config
set number " show line numbers
set showcmd " show last command entered in bottom left
set cursorline " hightlight current line
set relativenumber " relative line numbers
set mouse=a " mouse controls

filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to - faster macros
set showmatch " highlight matching [{()}]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
set incsearch " search as characters are entered
set hlsearch " hightlight matches
set ignorecase " case insensitive

" to turn off search highlighting
nnoremap <leader>y :nohlsearch<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
" TODO: figure out folding...
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default - only the very nested blocks of code are folded when opening a buffer
set foldnestmax=10 " 10 nexted fold max
set foldmethod=indent " fold based on indent level

" , opens/closes folds
nnoremap , za

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement
" move vertically by visual line - don't skip the 'fake' part of a wrapped line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" split movement
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader shortcuts

" quickly save
nnoremap <leader>w :w<CR>

" toggle gundo
" TODO: install gundo
nnoremap <leader>u :GundoToggle<CR> 

" save session
"nnoremap <leader>s :mksession<CR> " I don't have much use for this...

" quickly ack
nnoremap <leader>a :Ack 

" TODO: install ag.vim
" TODO: install ctrlp.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
let g:airline_powerline_fonts=1 " enable powerline symbols and glyphs
let g:airline_theme='base16'
set laststatus=2 " otherwise vim-airline doesn't appear until new split


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
nnoremap <leader>\ :NERDTreeToggle<CR>

"autocmd vimenter * NERDTree " automatically open nerdtree on startup
autocmd VimEnter * wincmd p " focus the file rather than nerdtree
" close vim if just a nerdtree left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden=1 " show hidden by default

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter
noremap <leader>/ :call NERDComment(0,"toggle")<CR>
let g:NERDSpaceDelims = 1 " add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCommentEmptyLines = 1 " allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " enable trimming of trailing whitespace when uncommenting


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Miscellaneous
set clipboard=unnamed " to yank to system clipboard
set timeoutlen=1000 ttimeoutlen=0 " mode changes (pressing 'esc') update status immediately
set shellpipe=> " so that ack.vim results don't show up in terminal after exiting vim

" nice autocomplete in vim command line stuff
set wildmenu
set wildmode=list:longest,full

inoremap jj <Esc>
