" Andy's Vim config

set number 		" show line numbers
set ruler 		" show the cursor position all the time
set nocompatible 	" use vim defaults, not vi defaults
set shiftwidth=4	" number of spaces to (auto)indent
set cindent		" automatically indent inner blocks of code in C
set ignorecase 		" Ignore case when searching
set autoindent		" Start new lines on the same indent as previous
set smartindent		" Automatically insert a new level for C-like files
set showmatch		" Show matching braces when text indicator is over them
set noerrorbells	" No sound on errors
set novisualbell	" No sound via the visual bell
set history=500		" Remember tons of commands (default is 20)
set showmode		" Show the mode you are currently in
set mouse=a		" Detect mouse input
set exrc            	" enable per-directory .vimrc files
set secure          	" disable unsafe commands in local .vimrc files
set wrap		" View long lines as wrapped
syntax on  		" syntax highlighing
filetype on         	" Enable filetype detection
filetype indent on  	" Enable filetype-specific indenting
filetype plugin on  	" Enable filetype-specific plugins

colorscheme desert

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
"match OverLength /\%81v.\+/

" Map f7 to next tab
map <F7> :tabn<CR>	

" Are we on the projector-friendly settings?
if $LC_PROJECTOR == "Yes"
    set t_Co=256
    colorscheme github
    set nowrap
    set shiftwidth=2
    set tabstop=2
endif

