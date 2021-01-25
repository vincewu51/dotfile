"""""""""""""""""""""""""""""""""""""
set nocompatible
filetype plugin on    
syntax on
set nowrap
set encoding=utf8
set showmatch 
" OSX stupid backspace fix
set backspace=indent,eol,start
"set absoulte vertical line
"set tw=80
set fo+=t
set colorcolumn=80
highlight ColorColumn guibg=red
set termguicolors

"""""""""""""""""""""""""""""""""""""
"Vundle
"""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

"argwrap
Plugin 'foosoft/vim-argwrap'

"csv
Plugin 'chrisbra/csv.vim'

"NerdTree
Plugin 'scrooloose/nerdtree'

"Calendar
"Plugin 'itchyny/calendar.vim'
Plugin 'mattn/calendar-vim'

"Markdown syntax
Plugin 'plasticboy/vim-markdown'

"Markdown
"Plugin 'suan/vim-instant-markdown'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

"vimwiki
Plugin 'vimwiki/vimwiki'

"quotes parens brackets 
Plugin 'raimondi/delimitmate' 

"take notes
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

"colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/csapprox' 
Plugin 'morhetz/gruvbox'

"autocomplete"
Plugin 'davidhalter/jedi-vim'

"latex
Plugin 'lervag/vimtex'

"autopep8
Plugin 'hhatto/autopep8'

"seol256
Plugin 'junegunn/seoul256.vim'

call vundle#end()

filetype plugin indent on

"supertab
Plugin 'ervandew/supertab'

"suround
Plugin 'tpope/vim-surround'

"minimap
Plugin 'severin-lemaignan/vim-minimap'

"statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"xkbswitch
"Plugin 'lyokha/vim-xkbswitch'

"""""""""""""""""""""""""""""""""""""
"vplug
"""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'nightsense/carbonized'
Plug 'nightsense/vimspectr'
"docstring
Plug 'heavenshell/vim-pydocstring'

" ayu color scheme
Plug 'ayu-theme/ayu-vim'

"中文输入
"Plugin 'rlue/vim-barbaric'

" A bunch of useful language related snippets ( ultisnips is the engine)
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

call plug#end()

"""""""""""""""""""""""""""""""""""""
" Configuration Section
"""""""""""""""""""""""""""""""""""""

" Colorschme
colorscheme seoul256-light
set background=light
syntax enable 
set t_Co=256

let g:grubbox_termcolors = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_contrast_dark = "soft"
let g:grubnox_number_column = "orange"

"set guicolors
highlight MatchParen ctermbg = blue
"guibg = lightblue
" Show linenumbers
set ruler
set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber     
:augroup END

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable Elite mode, No ARRRROWWS!!!!
let g:elite_mode=1

" Enable highlighting of the current line
set cursorline

" Theme and Styling 

"autocomplete
"let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_select_first = 0
autocmd FileType python setlocal completeopt-=preview

"Minimap
let g:minimap_highlight = "Visual"

"block commenting
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

" vimwiki with markdown support
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{'path': '/Users/yifeng.wu/Uber/buffalohorns/wikipedia', 'syntax': 'markdown', 'ext': '.md', 'auto_diary_index': 1}]


"  instant markdown
"let g:instant_markdown_autostart = 0
"map <leader>md :InstantMarkdownPreview<CR>
"
"Markdown previe
nmap <leader>md <Plug>MarkdownPreview        " for normal mode"
nmap <leader>dm <Plug>StopMarkdownPreview        " for normal mode"

"tab mapping
"
nnoremap th  :tabfirst<CR>
"nnoremap tk  :tabnext<CR>
"nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
"nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>

"Window split and move mapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Calendar
" nmap <leader>c <Plug>(calendar)
" nnoremap <leader>cp : Calendar -view=year -split=vertical -width =27 <cr>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
map <C-n>o :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
let NERDTreeNaturalSor=1

" Copy to clipboard
vnoremap <C-c> "*y<CR>

" Airline theme
let g:airline_theme='light'

" Pydocsting
let g:pydocstring_enable_mapping = 0

" nerdtree
let g:NERDTreeWinSize=40

" auto resize
autocmd VimResized * wincmd =

" UltraSnippet
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<leader>p"

" barbaric
let g:barbaric_ime = 'macos'

"timestamp
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
