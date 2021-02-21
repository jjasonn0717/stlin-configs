set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'itchyny/lightline.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'hdima/python-syntax'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader = " "

nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 25

nnoremap <silent> <leader>tb :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_width = 25
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 0

"" bufExplorer plugin
let g:bufExplorerSortBy = 'name'
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerShowNoName = 1

"" vim-flake8 setting
let g:flake8_show_in_gutter=1  " show
"let g:flake8_show_in_file=1    " show
let g:flake8_error_marker='EE'     " set error marker to 'EE'
let g:flake8_warning_marker='WW'   " set warning marker to 'WW'
let g:flake8_pyflake_marker='>>'     " disable PyFlakes warnings
let g:flake8_complexity_marker='>>'  " disable McCabe complexity warnings
let g:flake8_naming_marker='>>'      " disable naming warnings

" "" LightLine Setting
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'mode_map': { 'c': 'NORMAL' },
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
"       \ },
"       \ 'component_function': {
"       \   'modified': 'LightLineModified',
"       \   'readonly': 'LightLineReadonly',
"       \   'fugitive': 'LightLineFugitive',
"       \   'filename': 'LightLineFilename',
"       \   'fileformat': 'LightLineFileformat',
"       \   'filetype': 'LightLineFiletype',
"       \   'fileencoding': 'LightLineFileencoding',
"       \   'mode': 'LightLineMode',
"       \ },
"       \ 'separator': { 'left': '⮀', 'right': '⮂' },
"       \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
"       \ }

" function! LightLineModified()
"     return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
" endfunction
"
" function! LightLineReadonly()
"     return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? '⭤' : ''
" endfunction
"
" function! LightLineFilename()
"     return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
"          \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
"          \  &ft == 'unite' ? unite#get_status_string() :
"          \  &ft == 'vimshell' ? vimshell#get_status_string() :
"          \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
"          \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
" endfunction
"
" function! LightLineFugitive()
"     if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
"          let branch = fugitive#head()
"          return branch !=# '' ? '⭠ '.branch : ''
"     endif
"     return ''
" endfunction
"
" function! LightLineFileformat()
"     return winwidth(0) > 70 ? &fileformat : ''
" endfunction
"
" function! LightLineFiletype()
"     return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
" endfunction
"
" function! LightLineFileencoding()
"     return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
" endfunction
"
" function! LightLineMode()
"     return winwidth(0) > 60 ? lightline#mode() : ''
" endfunction
" let g:Powerline_symbols = 'fancy'
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1

"" YouCompleteMe Setting
let g:ycm_python_binary_path = 'python'
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_confirm_extra_config = 1
let g:ycm_global_ycm_extra_config = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1

"" Python Syntax Setting
let python_highlight_all = 1

syntax enable
set ruler
set cursorline
set cmdheight=1
set linespace=0
"set ambiwidth=double
set laststatus=2
set showmode
"set noshowmode
set nu
set ignorecase
set smartcase
set hlsearch
set showmatch
set expandtab
set shiftwidth=4
set tabstop=4
set ai
"set mouse=a
set mouse=r
set ttymouse=xterm2
set wildmenu

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme kolor

"" remember cursor's last position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
