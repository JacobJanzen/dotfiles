-- tab behaviour
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.directory = '/Users/jjanzen/.local/share/nvim/swap//'

-- matching behaviour
vim.opt.wildmode = 'longest,list'

-- filetype behaviour
vim.cmd('filetype plugin indent on')

-- tmux navigation
vim.cmd([[
    let g:tmux_navigator_no_mappings = 1
    let filetype_m='objc'
    nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
    nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
    nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
    nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
    nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>
]])
