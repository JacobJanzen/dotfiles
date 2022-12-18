-- show line numbers
vim.opt.number = true

-- colours
vim.opt.background = 'dark'
vim.cmd([[
    syntax on
    colorscheme solarized
]])
vim.g.lightline = { colorscheme = 'solarized' }

-- syntax highlighting for haskell
require('haskell')
