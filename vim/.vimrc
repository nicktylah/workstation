" ------------------------------------------------------------------------------
" Chris2.0 Vim Setup
" These settings are organized according to the layout visible when running
" the :options command.
" ------------------------------------------------------------------------------

filetype plugin indent on  " turn on filetype detection, plugins, and indent
syntax enable              " turn on syntax highlighting
let mapleader = "\<Space>" " map leader key to space

" ------------------------------------------------------------------------------
" Vim package manager
" ------------------------------------------------------------------------------

" Set up vim-plug for vim plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'raimondi/delimitmate'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'ntpeters/vim-better-whitespace'
Plug 'altercation/vim-colors-solarized'
Plug 'rust-lang/rust.vim'

call plug#end()

" ------------------------------------------------------------------------------
" plugin variables and settings
" ------------------------------------------------------------------------------

" CtrlP
nnoremap <leader>. :CtrlPTag<cr>
let g:ctrlp_working_path_mode = 'w' " start search from the cwd
let g:ctrlp_root_markers = ['package.json', 'marathon.json', '.ci.sh']
let g:ctrlp_show_hidden = 1         " show hidden dot files
let g:ctrlp_follow_symlinks = 1     " show symlink files
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn))|(node_modules|build|vendor)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" delimitMate
" <S-Tab> will jump over a single closing delimiter or quote, <C-G>g will jump
" over contiguous delimiters and/or quotes.
let g:delimitMate_expand_cr = 2 " expands carriage returns and auto tabs

" vim-javascript
let g:javascript_plugin_flow = 1 " enable syntax highlighting for flow

" vim-jsx
let g:jsx_ext_required = 0 " Allow jsx syntax support in js files

" vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)

au FileType go nmap <Leader>d <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>i <Plug>(go-implements)
au FileType go nmap <Leader>f <Plug>(go-info)
au FileType go nmap <Leader>c <Plug>(go-callers)
au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"

" ------------------------------------------------------------------------------
" custom leader mappings and settings
" ------------------------------------------------------------------------------

nnoremap <leader>sv :source ~/.vimrc<cr> " shortcut to source .vimrc

nnoremap <C-l> :nohlsearch<CR><C-l> " rm highlighting after searching
autocmd InsertEnter * :setlocal nohlsearch " no highlighting in Insert mode
autocmd InsertLeave * :setlocal hlsearch " enable highlight on Insert leave

" easy shortcut to go to buffer
nnoremap gb :ls<cr>:b<space>

" Block cursor on NORMAL mode, thin cursor on INSERT mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" ------------------------------------------------------------------------------
" moving around, searching and patterns
" ------------------------------------------------------------------------------

set nostartofline " keep cursor in same column for long-range motion cmds
set incsearch     " search begins when you type first character
set ignorecase    " ignore case when using a search pattern
set smartcase     " override 'ignorecase' when pattern has uppercase characters

" ------------------------------------------------------------------------------
" displaying text
" ------------------------------------------------------------------------------

set scrolloff=3   " number of screen lines to show around cursor
set number        " show the line number for each line

" ------------------------------------------------------------------------------
" syntax, highlighting and spelling
" ------------------------------------------------------------------------------

set background=dark " background color brightness
set hlsearch        " highlight all matches for last used search pattern
set cursorline      " highlight the screen line of the cursor
set colorcolumn=80  " display a line in column 80 to show cutoff
colorscheme solarized
let g:solarized_termcolors=256
set background=dark

" ------------------------------------------------------------------------------
" multiple windows
" ------------------------------------------------------------------------------

set laststatus=2 " show a status line even if only one vim window

" ------------------------------------------------------------------------------
" multiple windows
" ------------------------------------------------------------------------------

set noshowmode " don't display current mode in status line with airline

" ------------------------------------------------------------------------------
" editing text
" ------------------------------------------------------------------------------

set backspace=2       " make backspace work like most other apps
set showmatch         " highlight matching [{()}]
set clipboard=unnamed " allows use of the system clipboard

" ------------------------------------------------------------------------------
" tabs and indenting
" ------------------------------------------------------------------------------

set tabstop=2     " number of visual spaces per TAB
set shiftwidth=2  " autoindent indents 2 spaces
set softtabstop=2 " number of spaces in tab when editing
set expandtab     " tabs are spaces

" ------------------------------------------------------------------------------
" reading and writing files
" ------------------------------------------------------------------------------

set nobackup " don't keep a backup after overwriting a file

" ------------------------------------------------------------------------------
" mapping
" ------------------------------------------------------------------------------

set timeoutlen=1000 ttimeoutlen=0 " eliminate delays when changing modes

" ------------------------------------------------------------------------------
" the swap file
" ------------------------------------------------------------------------------

set noswapfile " don't create any swap files when editing a buffer

" ------------------------------------------------------------------------------
" command line editing
" ------------------------------------------------------------------------------

set wildmenu " visual autocomplete for command menu
set wildignore+=*.swp

" ------------------------------------------------------------------------------
" multi-byte characters
" ------------------------------------------------------------------------------

set encoding=utf-8 " character encoding used in Vim

