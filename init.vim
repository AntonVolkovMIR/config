" core
set encoding=UTF-8
set number
set cursorline
set mouse=a
set showmatch	" show a matching pair of brackets
set clipboard=unnamedplus
set autoread
set complete-=i
" tabs
set autoindent " indent when moving to next line while coding
set expandtab	" expand tabs into spaces
set tabstop=2
set softtabstop=2   " set tabs to have 2 spaces
set shiftwidth=2    " when using the >> or << commands
" custom keybinds
map ; :
vmap < <gv
vmap > >gv
nmap ;h :vsplit<CR> 
nmap ;v :split<CR>
nmap ;t :tabnew<CR>
" extra
set noswapfile
set noeb vb t_vb=  " disable beep
set updatetime=100
set noshowmode
let g:python_recommended_style = 0
filetype plugin indent on
" extra
set noswapfile
set noeb vb t_vb=  " disable beep
set updatetime=100
set noshowmode
let g:python_recommended_style = 0
filetype plugin indent on
" plugins
call plug#begin('~/.config/plugged')
Plug 'ojroques/vim-oscyank'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()
" plugins keybinds
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
au TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif
" plugins look
colorscheme gruvbox
let g:lightline = { 'colorscheme': 'wombat' } 

