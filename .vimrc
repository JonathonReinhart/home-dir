" https://github.com/JonathonReinhart/home-dir


" Pressing return clears the search highlighting.
" http://stackoverflow.com/a/662914
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" There is a Holy War amoungst progammers regarding spaces vs. tabs.
" Obviously the right answer is spaces. Four of them.
set tabstop=4
set shiftwidth=4
set expandtab

" But let filetype override that (e.g. for Makefiles)
filetype plugin indent on

" Scons files are Scons files.
au BufNewFile,BufRead SCons* set filetype=scons



