-- Format C/C++
vim.cmd([[
    let g:clang_format#code_style = 'llvm'
    autocmd FileType c ClangFormatAutoEnable
    autocmd FileType cuda ClangFormatAutoEnable
    autocmd FileType cpp ClangFormatAutoEnable
]])

-- Format Rust
vim.g.rustfmt_autosave = 1

-- Format Markdown Tables
vim.g.table_mode_corner = '|'
