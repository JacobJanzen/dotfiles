local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'itchyny/lightline.vim',
    'liuchengxu/space-vim-dark',
    'altercation/vim-colors-solarized',
    'Raimondi/delimitMate',
    'tpope/vim-fugitive',
    'bronson/vim-trailing-whitespace',
    'rhysd/git-messenger.vim',
    'dhruvasagar/vim-table-mode',
    'neovim/nvim-lspconfig',
    {
        'nvim-treesitter/nvim-treesitter',
        cmd = 'TSUpdate'
    },
    'junegunn/fzf',
    'junegunn/fzf.vim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
    'christoomey/vim-tmux-navigator',
    {
        'fatih/vim-go',
        cmd = 'GoUpdateBinaries',
    },
    'rust-lang/rust.vim',
    'neovimhaskell/haskell-vim',
    'lervag/vimtex',
    'rhysd/vim-clang-format',
    'chrisbra/csv.vim',
    'NLKNguyen/papercolor-theme',
})
