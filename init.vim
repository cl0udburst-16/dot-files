set nocompatible
set showmatch
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set cc=80
set cursorline
set mouse=a
set ignorecase
set termguicolors

call plug#begin("~/.vim/plugged")
 Plug 'ryanoasis/vim-devicons'
 Plug 'preservim/nerdtree'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'nanotech/jellybeans.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'nyoom-engineering/oxocarbon.nvim'
 Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

let g:airline_theme = 'base16_atelier_seaside'

colorscheme oxocarbon
" colorscheme abstract


" Custom keybinds
map <C-f> :NERDTreeToggle<CR>
map <C-d> :CocDiagnostics<CR>

" Escape terminal mode
tmap <C-e> <C-\><C-n>

"Change open windows
nmap <C-left> <C-w>h
nmap <C-right> <C-w>l
nmap <C-up> <C-w>k
nmap <C-down> <C-w>j

"Resize the current window
nmap <C-S-left> <C-S-w><
nmap <C-S-right> <C-S-w>>
nmap <C-S-up> <C-S-w>+
nmap <C-S-down> <C-S-w>-

" Open a new empty window
nmap <F2> <C-w>n

" Rotate the current window
nmap <F5> <C-w>r

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
