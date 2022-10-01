" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " For intellisense
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}    " Go Tools
Plug 'rust-lang/rust.vim'                           " Rust Tools
Plug 'neovimhaskell/haskell-vim'                    " Haskell Tools
Plug 'lervag/vimtex'                                " LaTeX Tools
Plug 'Raimondi/delimitMate'                         " Close Brackets
Plug 'rhysd/vim-clang-format'                       " format C code
Plug 'NLKNguyen/papercolor-theme'                   " colorscheme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'itchyny/lightline.vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
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
let g:catppuccin_flavour = "macchiato"
let g:lightline = {'colorscheme': 'catppuccin'}
lua << EOF
require("catppuccin").setup({
            \ integrations = {
        \ coc_nvim = true,
      \ }
  \ })
EOF
colorscheme catppuccin

" Plugin Settings
let g:rustfmt_autosave = 1                  " format rust on save
autocmd FileType c ClangFormatAutoEnable    " format C on save
autocmd FileType cpp ClangFormatAutoEnable  " format on C++ save
let g:haskell_enable_quantification = 1     " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1        " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1        " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1   " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1          " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1    " to enable highlighting of `static`
let g:haskell_backpack = 1                  " to enable highlighting of backpack keywords
let g:haskell_classic_highlighting = 1
let g:table_mode_corner='|'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" For coc.nvim
" <cr> confirms completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" Format code on <cr>
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" <Tab> and <S-Tab> navigate completion list
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
