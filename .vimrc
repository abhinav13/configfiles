set textwidth=130  " lines longer than 130 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set nocompatible  " dont know what this does
filetype off      " Dont know what this does either

syntax enable
"if has('gui_running')
"    set background=light
"else
set background=dark
"endif
set t_Co=256
colorscheme solarized
" This is from the stackoverflow page http://stackoverflow.com/questions/597687/changing-variable-names-in-vim
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Vundle related configs 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" Plugin 'Lokaltog/powerline'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" More powerline shit
" copied from here
" https://coderwall.com/p/yiot4q/setup-vim-powerline-and-iterm2-on-mac-os-x
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
" Powerline setup
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"


" The bundles you install will be listed here

filetype plugin indent on
set laststatus=2 " This is for vundle

augroup vimrc_autocmds
        autocmd!
        " highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=green guibg=Black
        autocmd FileType python match Excess /\%130v.*/
        autocmd FileType python set nowrap
augroup END



"Install Fugitive which is a Git Plugin
"This allows you to call git from within vim
Bundle 'tpope/vim-fugitive'

"Install NerdTree which is a filebrowser that pops up in split when you need it and features a tree like file browsers
Bundle 'scrooloose/nerdtree'
"NerdTree configs. Copied from here - http://stackoverflow.com/questions/10303557/map-f2-to-neerdtreetoggle
"F2 will open NERDTree panel and highlight current file. And when you're in the NERDTree panel, F2 will open file under cursor.
"So, I can use one button to jump between buffer and NERDTree. (And F3 for preview because it's next to F2)
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F2> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F2>"
let g:NERDTreeMapPreview="<F3>"

Bundle 'klen/python-mode'

 " Python-mode
 " DeActivate rope. Ignore the key bindings below. We are using jedi-vim
 " " Keys:
 " " K             Show python docs
 " " <Ctrl-Space>  Rope autocomplete
 " " <Ctrl-c>g     Rope goto definition
 " " <Ctrl-c>d     Rope show documentation
 " " <Ctrl-c>f     Rope find occurrences
 " " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
 " " [[            Jump on previous class or function (normal, visual, operator modes)
 " " ]]            Jump on next class or function (normal, visual, operator modes)
 " " [M            Jump on previous class or method (normal, visual, operator modes)
" " ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0 
 "
 " " Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
 "
 " "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
 " " Auto check on save
let g:pymode_lint_write = 1
 "
 " Support virtualenv
let g:pymode_virtualenv = 1
 
 " Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
 "
 " syntax highlighting
let g:pymode_syntax = 0
let g:pymode_syntax_all = 0
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
 "
 " autofold code
let g:pymode_folding =0 

" stop the stupid red line from showing up
" in the middle of the editor, stupid red line stupid stupid
let g:pymode_options_colorcolumn = 0
 " automatically change window's cwd to file's dir
set autochdir

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 


