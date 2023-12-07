-- show line numbers
vim.opt.number = true

-- colours
vim.opt.background = 'dark'
vim.cmd([[
    syntax on
]])
-- vim.g.lightline = { colorscheme = 'space-vim-light' }

-- syntax highlighting for haskell
require('haskell')
