" Atalho para :w
map <leader>w :w<CR>

" Copy/paste externo
map <leader>yy "+yy
map <leader>pp "+p

" plugin Taglist
noremap <F4> :TlistToggle<CR>
inoremap <F4> <C-O>:TlistToggle<CR>

" plugin NERDTree
noremap <F5> :NERDTreeToggle<CR>
inoremap <F5> <C-O>:NERDTreeToggle<CR>

" Gerenciamento de tabs
map <C-T>t :tabnew<CR>
map <C-T>w :tabclose<CR>
map <S-Right> :tabnext<CR>
map <S-Left> :tabprev<CR>

" Gerenciamento de buffers
noremap <F6> :buffers<CR>
inoremap <F6> <C-O>:buffers<CR>
map <leader>bf :buffer
map <A-Left> :bnext <CR>
map <A-Right> :bprevious <CR>

" Gerenciamento de sessões no Vim
map <C-S>s :SaveSession
map <C-S>o :OpenSession
map <C-S>c :CloseSession
map <C-S>d :DeleteSession

" C-W s, abre novo split
" C-W v, abre novo vsplit
" C-W q, fecha split
" C-W arrow, move entre splits
