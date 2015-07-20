set textwidth=120  " lines longer than 120 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set nocompatible  " dont know what this does
"filetype off      " Dont know what this does either
set number        " Show line numbers 
autocmd CompleteDone * pclose "Close preview window once done
syntax on
" Vundle related configs 
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()


" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" The bundles you install will be listed here
Plugin 'tpope/vim-fugitive'

filetype plugin indent on

augroup vimrc_autocmds
        autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=yellow guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
augroup END

" Install airline
Plugin 'bling/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline_left_sep='>'

" the separator used on the right side  
let g:airline_right_sep='<'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()   
filetype plugin indent on    " required
 "
 "    " Brief help
 "    " :PluginList          - list configured plugins
 "    " :PluginInstall(!)    - install (update) plugins
 "    " :PluginSearch(!) foo - search (or refresh cache first) for foo
 "    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
 "    "
 "    " see :h vundle for more details or wiki for FAQ
 "    " Put your non-Plugin stuff after this line
 


