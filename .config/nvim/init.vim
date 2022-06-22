" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " For intellisense
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}    " Go Tools
Plug 'rust-lang/rust.vim'                           " Rust Tools
Plug 'neovimhaskell/haskell-vim'                    " Haskell Tools
Plug 'lervag/vimtex'                                " LaTeX Tools
Plug 'vim-airline/vim-airline'                      " Status Bar
Plug 'Raimondi/delimitMate'                         " Close Brackets
Plug 'rhysd/vim-clang-format'                       " format C code
Plug 'NLKNguyen/papercolor-theme'                   " colorscheme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Basic Settings
set mouse=v                 " allow mouse usage
set tabstop=4               " set tab size to 4
set expandtab               " always use spaces in place of tabs
set shiftwidth=4
set autoindent              " automatically indent
set number                  " show line numbers
set wildmode=longest,list   " When more than one match, list all matches and complete till longest common match
filetype plugin indent on   " Detect filetype, allow plugins, and load indent file
syntax on                   " Use syntax highlighting
set t_Co=256                " Enable 256 colours
set background=dark         " Dark mode
colorscheme PaperColor

" Plugin Settings
let g:rustfmt_autosave = 1  " format rust on save
autocmd FileType c ClangFormatAutoEnable " format C on save
autocmd FileType cpp ClangFormatAutoEnable " format on C++ save
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_classic_highlighting = 1

" For coc.nvim
set hidden
set cmdheight=2
set updatetime=300
set signcolumn=yes
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
