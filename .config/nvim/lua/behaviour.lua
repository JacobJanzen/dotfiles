-- tab behaviour
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.directory = '~/.local/share/nvim/swap//'

-- matching behaviour
vim.opt.wildmode = 'longest,list'

-- filetype behaviour
vim.cmd('filetype plugin indent on')
