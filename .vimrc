" ATRX .vimrc
" Basic Configuration
set number
syntax on
set tabstop=4
set autoindent

" set cursorline Shit fucking option. Don't ever do this lmao

set noshiftround

" Display different types of white spaces.
" Taken from https://github.com/pr0fdr4c/dots/blob/master/CosyWinterNight/vimrc
set list
set listchars=tab:.\ ,trail:•,extends:#,nbsp:.

" set noexpandtab
autocmd FileType * setlocal noexpandtab

