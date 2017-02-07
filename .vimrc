"" Auto install vim plugged and plugins
"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif
"
"" Plugins using vim-plug
"" Install with :PlugInstall
"call plug#begin('~/.vim/plugged')
"Plug 'Valloric/YouCompleteMe' " Code autocompletion
"Plug 'junegunn/goyo.vim'      " For distraction free mode
"Plug 'flazz/vim-colorschemes' " All color schemes repo
"call plug#end()

" My Settings
colorscheme elflord " Set colorscheme
syntax enable       " Set syntax highlighting

" Remove trailing whitespace on save
autocmd BufWritePre *.py :%s/\s\+$//e

" Set copy/paste to system clipboard
set clipboard=unnamedplus

" highlight text in lines that are over 80 characters
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

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
