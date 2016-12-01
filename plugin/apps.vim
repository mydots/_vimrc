" Nerdtree
" 'scrooloose/nerdtree'
map <C-n> :NERDTreeTabsToggle<CR>
map <C-M-v> :NERDTreeToggle<CR>
"Start NerdTree automatically if no files are meant to be edited
" autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if only page left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Number
" 'myusuf3/numbers.vim'
nnoremap <leader>n :NumbersToggle<CR>

" Nerdcommenter
" 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

" RSpec.vim mappings
" 'thoughtbot/vim-rspec'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

" Gundo
" 'sjl/gundo.vim'
nnoremap <leader>u :GundoToggle<cr>

" CtrlP
" 'kien/ctrlp.vim'
nnoremap <silent> t :CtrlP<cr>