-- show line numbers
vim.opt.number = true

-- colours
vim.opt.background = 'light'
vim.cmd([[
    syntax on
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    set termguicolors
    colorscheme PaperColor
]])
vim.g.lightline = { colorscheme = 'PaperColor' }

-- syntax highlighting for haskell
require('haskell')
