" colorscheme mustang
colorscheme solarized
set background=light

set guifont=Ubuntu\ Mono\ 12
set guioptions=aem "adding otherelse
set guioptions-=m " hide menubar

" ============= Vim UI ============={
    set popt+=syntax:y " Syntax when printing
    set showcmd " show the command being typed
    set showmode " show command mode

set lines=35 columns=155 "Size

    set linespace=0 " space it out a little more (easier to read)
    set wildmenu " turn on wild menu
    set wildmode=list:longest " turn on wild menu in special format (long format)
    set wildignore=*.pyc,*.pyo,*.dll,*.o,*.obj,*.bak,*.exe,*.swo,*.swp,*.jpg,*.gif,*.png " ignore some formats
    set ruler " Always show current positions along the bottom
    set cmdheight=1 " the command bar is 1 high
    set number " turn on line numbers
    set numberwidth=4 " If we have over 9999 lines, ohh, boo-hoo
    set lazyredraw " do not redraw while running macros (much faster) (LazyRedraw)
    set hidden " you can change buffer without saving
    set backspace=2 " make backspace work normal
    set whichwrap+=<,>,[,],h,l " backspace and cursor keys wrap to
    set report=0 " tell us when anything is changed via :...
    set noerrorbells " don't make noise
    set ttyfast
    set list listchars=tab:\ \ ,trail:· " mark trailing white space
