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

" Search up for a tags file (note the semicolon)
set tags=tags;

" Make comments italic
hi Comment cterm=italic


" Inspired by:
" http://unix.stackexchange.com/a/75438
" http://stackoverflow.com/a/7501902
function! <SID>CleanupWhitespace()
    let save_cursor = getpos(".")

    " Strip trailing whitespace on lines
    %s/\s\+$//e

    " Remove empty lines at end of file
    v/\_s*\S/d

    call setpos(".", save_cursor)
endfun

" Automatically strip whitespace when saving source files
autocmd BufWritePre * if &ft =~ 'sh\|perl\|python\|c\|cpp\|markdown' | :call <SID>CleanupWhitespace() | endif
