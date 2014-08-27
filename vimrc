set textwidth=120  " lines longer than 120 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set nocompatible  " dont know what this does
filetype off      " Dont know what this does either
set number        " Show line numbers 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
let moria_style='dark'
color moria


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

augroup vimrc_autocmds
        autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=red guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
augroup END

"Install airline
Plugin 'bling/vim-airline'
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Powerline setup
set laststatus=2
"set guifont=Liberation_Mono_for_Powerline:h10
let g:airline_powerline_fonts = 1
" let g:Powerline_symbols = 'fancy'
let g:airline_theme='luna'
let g:airline_left_sep='>'

" the separator used on the right side  
let g:airline_right_sep='<'
