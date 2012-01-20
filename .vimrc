" TODO
" Colocar tuto para LustyExplorer e todos os meus plugins
" explicar comandos de folding e :r!

" Para entender o que cada comando faz, minha recomendação
" é usar o help do Vim . Digitem ':h <comando>' para saberem
" mais. Por exemplo, digitem ':h nowrap'

let mapleader=","

filetype plugin indent on

syntax on

nnoremap ; :
cmap w!! w !sudo tee % >/dev/null
    " Salvar arquivo sem sudo

set nocompatible
set hidden
set nowrap
set number
set shiftround
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set wildmenu
set wildmode=list:longest
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
set shiftwidth=4
set autoindent
set expandtab
set smartindent
set smarttab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>
set guioptions-=T
set linespace=3
set autochdir

autocmd filetype python set expandtab
autocmd filetype html,xml set listchars-=tab:>.

autocmd filetype ruby set tabstop=2
autocmd filetype ruby set softtabstop=2
autocmd filetype ruby set shiftwidth=2

if &t_Co >= 256 || has("gui_running")
  " Choose between 'mustang' or 'solarized' theme
  " Whichever you want, comment the other lines

  " colorscheme mustang

  colorscheme solarized
  set background=light
endif

" Configuração do plugin TagList
let Tlist_Auto_Update = 1
noremap <F4> :TlistToggle<CR>
inoremap <F4> <C-O>:TlistToggle<CR>

" Configuração do plugin NERDTree
noremap <F5> :NERDTreeToggle<CR>
inoremap <F5> <C-O>:NERDTreeToggle<CR>

" Copy/paste externo
map <leader>yy "+yy
map <leader>pp "+p

" Gerenciamento de tabs
map <leader>tt :tabnew<CR>
map <leader>tc :tabclose<CR>
map <leader>tn :tabnext<CR>

" Gerenciamento de buffers
noremap <F6> :buffers<CR>
inoremap <F6> <C-O>:buffers<CR>
map <leader>bf :buffer

" Gerenciamento de sessões no Vim
map <leader>ss :SaveSession
map <leader>so :OpenSession
map <leader>sc :CloseSession
map <leader>sd :DeleteSession

au BufNewFile,BufRead *.txt source ~/.vim/syntax/txt.vim

call pathogen#infect()
