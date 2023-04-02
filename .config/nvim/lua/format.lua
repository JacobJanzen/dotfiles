-- Clang Format
vim.cmd([[
    let g:clang_format#code_style = 'file'
    autocmd FileType c ClangFormatAutoEnable
    autocmd FileType cuda ClangFormatAutoEnable
    autocmd FileType cpp ClangFormatAutoEnable
    autocmd FileType cs ClangFormatAutoEnable
    autocmd FileType java ClangFormatAutoEnable
    autocmd FileType javascript ClangFormatAutoEnable
    autocmd FileType json ClangFormatAutoEnable
]])

-- Format Rust
vim.g.rustfmt_autosave = 1

-- Format Markdown Tables
vim.g.table_mode_corner = '|'
