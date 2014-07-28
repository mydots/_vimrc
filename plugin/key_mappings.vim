" Mappings
" n: normal only
" v: visual and select
" o: operator-pending
" x: visual only
" s: select only
" i: insert
" c: command-line
" l: insert, command-line, regexp-search (and others. Collectivel called "Lang-Arg" pseudo-mode)
"

"My preferred leader key
let mapleader=","

" Remap ; to : in normal mode
nnoremap ; :
xnoremap ; :

" Use VisualBlock instead of Block mode and vice-versa
nnoremap v <C-V>
nnoremap <C-V> v
vnoremap v <C-V> 
vnoremap <C-V> v

" Shortcut to rapidly toggle `set list`
" In normal mode, just type \l
nmap <leader>l :set list!<CR>


" Tabs and navigation
nnoremap <silent> <C-l> :tabnext<CR>
nnoremap <silent> <C-h> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" Window splitting
" window
nmap <leader>swh :topleft  vnew<CR>
nmap <leader>swl :botright vnew<CR>
nmap <leader>swk :topleft  new<CR>
nmap <leader>swj :botright new<CR>
" buffer
nmap <leader>sh  :leftabove  vnew<CR>
nmap <leader>sl  :rightbelow vnew<CR>
nmap <leader>sk  :leftabove  new<CR>
nmap <leader>sj  :rightbelow new<CR>

nmap <leader>-      :split<CR>
nmap <leader><bar>  :vsplit<CR>
" End Window splitting

"Folding remapping
nnoremap <space> za
vnoremap <space> za

" PLUGINS
" Nerd Tree
map <C-n> :NERDTreeTabsToggle<CR>
map <C-M-v> :NERDTreeToggle<CR>

" Gundo
nnoremap <leader>u :GundoToggle<cr>

"Start NerdTree automatically if no files are meant to be edited
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if only page left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif