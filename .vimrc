" Para entender o que cada comando faz, minha recomendação
" é usar o help do Vim . Digitem ':h <comando>' para saber
" mais, por exemplo ':h nowrap'

let $VIMHOME = $HOME."/.vim"

colorscheme mustang

filetype on
filetype plugin indent on

syntax on " ativa syntax-highlighting
set colorcolumn=80
set nostartofline
set nocompatible " sem modo de compatibilidade VI
set hidden " permite mudar de buffer sem obrigar a salvá-lo
set nowrap " não realiza a quebra de linhas
set number " exibe numeros de linhas
set shiftround
set showmatch " mostra parenteses equivalentes (ou [, ou {)
set matchtime=7 " quanto tempo será 'piscado' na tela
set ignorecase " ignora maiuscula ou minuscula em busca
set smartcase " ignora o set anterior se a busca contem maiusculas
set hlsearch " highlight search
set incsearch " enquanto faz a busca mostra os resultados
set history=1000 " quantas linhas lembrar
set undolevels=1000 " quantos undo's podem ser feitos
set wildignore=*.swp,*.bak,*.pyc,*.class " arquivos que serão ignorados em caso de completamento de arquivos e diretorios
set title " titulo do terminal é titulo do arquivo
set nobackup " não cria arquivos de backup
set noswapfile " não usar um swapfile para o buffer
set wildmenu " command-line completion opera de forma melhorada
set wildmode=list:longest " configs para o completion... exibe em lista, se há mais de um, e seleciona o com a maior compatibilidade
set tabstop=4 " qtde de espaços inseridos com um tab
set softtabstop=4
set backspace=indent,eol,start " configura o comportamento do backspace
set shiftwidth=4 " qtde de espaços utilizados no autoindent
set autoindent " usa indentação da linha atual em nova linha
set expandtab " insere espaços ao invés de TABs
set smartindent " auto-indentação inteligente
set smarttab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2> " alterna entre Paste Mode
set linespace=3 " espaçamento entre linhas
set autochdir " muda o working directory a cada novo arquivo aberto
set completeopt=menu,longest,preview " improve the way autocomplete works

" Folding
set foldenable " Turn on folding
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff
set foldmethod=indent " Fold on the marker
set foldlevel=1000 " Don't autofold anything
:highlight Folded guibg=grey guifg=blue " Customize color folded
:highlight FoldColumn guibg=darkgrey guifg=white" Customize fold column

source $VIMHOME/autoload/shortcuts.vim
source $VIMHOME/autoload/syntastic.vim
source $VIMHOME/autoload/powerline.vim
source $VIMHOME/autoload/taglist.vim
source $VIMHOME/autoload/sessions.vim

call pathogen#infect()
