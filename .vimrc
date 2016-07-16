" Plugins using vim-plug
" Install with :PlugInstall
" TODO: replace vim-plug with Vundle 
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe' "Code autocompletion
Plug 'junegunn/goyo.vim'      "For distraction free mode
call plug#end()

"" Vundle Plugins (Install with :PluginInstall)
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugged') " path to store packages

Plugin 'VundleVim/Vundle.vim'   " let Vundle manage Vundle, required
Plugin 'flazz/vim-colorschemes' " All color schemes repo 

call vundle#end()            " required
filetype plugin indent on    " required

" My Settings
colorscheme elflord " Set colorscheme 
syntax enable       " Set syntax highlighting

" Remove trailing whitespace on save for python
autocmd BufWritePre *.py :%s/\s\+$//e 

" Highlight characters past 80 characters in one line limit 
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" UI Config
set relativenumber  " Set relative line numbering
set number          " Set absolute line numbering on current line
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlights matching [{()}]

" Tabbing
set tabstop=4 		" # visual spaces per TAB
set softtabstop=4 	" # spaces a tab counts for (i.e backspace=4sp)
set expandtab		" converts tabs into spaces when typing

" Searching
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
