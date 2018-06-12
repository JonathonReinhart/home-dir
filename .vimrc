" https://github.com/JonathonReinhart/home-dir


" Pressing return clears the search highlighting.
" http://stackoverflow.com/a/662914
nnoremap <silent> <CR> :nohlsearch<CR>

" There is a Holy War amongst progammers regarding spaces vs. tabs.
" Obviously the right answer is spaces. Four of them.
set tabstop=4
set shiftwidth=4
set expandtab

" But let filetype override that (e.g. for Makefiles)
filetype plugin indent on

" Scons files are Scons files.
au BufNewFile,BufRead SCons* set filetype=scons

" Enable line numbers
set number

" Keep cursor centered vertically-ish on the screen
set scrolloff=7
