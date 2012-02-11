" Andy's Vim config

set number 		" show line numbers
syntax on  		" syntax highlighing
set nowrap 		" don't wrap lines
set ruler 		" show the cursor position all the time
set nocompatible 	" use vim defaults, not vi defaults
set tabstop=5		" number of spaces to a tab character
set shiftwidth=5	" number of spaces to (auto)indent
set cindent		" automatically indent inner blocks of code in C
set ignorecase 	" Ignore case when searching
set showmatch		" Show matching braces when text indicator is over them
set noerrorbells	" No sound on errors
set novisualbell	" No sound via the visual bell
set history=500	" Remember tons of commands (default is 20)
set showmode		" Show the mode you are currently in
filetype on         " Enable filetype detection
filetype indent on  " Enable filetype-specific indenting
filetype plugin on  " Enable filetype-specific lugins


colorscheme desert

" Make it easy to edit this file 
"	 Mnemonic for the key sequence is 'e'dit 'v'imrc
nmap <silent> ,ev :e $MYVIMRC<cr>

" Source this file as well 
 "	Mnemonic for the key sequence is 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>


