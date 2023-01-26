-- show line numbers
vim.opt.number = true

-- colours
vim.opt.background = 'dark'
vim.cmd([[
    syntax on
    colorscheme slate
]])
vim.g.lightline = { colorscheme = 'solarized' }

-- syntax highlighting for haskell
require('haskell')
