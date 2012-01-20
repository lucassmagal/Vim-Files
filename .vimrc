" TODO
" melhorar taglist, criar atalho e arranjar jeito de fazer autoupdate
" melhorar gerenciamento de tabs, tiles e buffers
" melhorar gerenciamento de sessões (ver uso de leader)
" melhorar gerenciamento de tabulação (backspace deve voltar 2 tabs)
" melhorar copy/paste externo. Uso de leader
" Colocar tuto para LustyExplorer e todos os meus plugins
" COLOCAR O VIM FILE TOTALMENTE INTUITIVO
" http://nvie.com/posts/how-i-boosted-my-vim/
"+yy
"+p
" http://feralchicken.wordpress.com/2011/01/03/vim-sessions-and-map-leader/
" http://agiliq.com/blog/2010/11/seven-reasons-why-you-should-switch-to-vim-for-dja/
" http://www.slackorama.com/projects/vim/vimrc.html
" explicar comandos de folding e :r!
set nocompatible
set hidden
let mapleader=","
set wildmode=list:longest
set nowrap
set tabstop=2
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=2
set shiftround
set showmatch
set ignorecase
set smartcase
set expandtab
set hlsearch
set incsearch
set history=100
set undolevels=100
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
filetype plugin indent on
autocmd filetype python set expandtab
syntax on
if &t_Co >= 256 || has("gui_running")
  colorscheme mustang
endif
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.
set pastetoggle=<F2>
nnoremap ; :
cmap w!! w !sudo tee % >/dev/null
set guioptions-=T
set linespace=3
set autochdir

" Busca com CTRL+F
noremap <C-F> /
vnoremap <C-F> <C-Q>/
inoremap <C-F> <C-O>/

" Abre arquivos com CTRL+O
noremap <C-O> :tabnew
vnoremap <C-O> <C-Q>:tabnew
inoremap <C-O> <C-O>:tabnew

vnoremap <BS> d

" CTRL-S salva
noremap <C-S>  :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" CTRL-Z desfaz
noremap <C-Z> u
vnoremap <C-Z> <C-C>u
inoremap <C-Z> <C-O>u

" CTRL-Y refaz
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" CTRL-A seleciona tudo
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

call pathogen#infect()
