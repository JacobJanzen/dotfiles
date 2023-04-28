return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Appearance
    use 'itchyny/lightline.vim' -- powerline
    use 'altercation/vim-colors-solarized' -- solarized colour scheme

    -- Dev Tools
    use 'Raimondi/delimitMate' -- Manage delimiters
    use 'tpope/vim-fugitive' -- Git commands
    use 'bronson/vim-trailing-whitespace' -- Highlight trailing whitespace
    use 'rhysd/git-messenger.vim' -- show git commit messages
    use 'dhruvasagar/vim-table-mode' -- handle tables
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- fuzzy search
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    -- tmux
    use 'christoomey/vim-tmux-navigator'

    -- Language Specific Extensions
    -- Go
    use {
        'fatih/vim-go',
        run = ':GoUpdateBinaries',
    }
    -- Rust
    use 'rust-lang/rust.vim'
    -- Haskell
    use 'neovimhaskell/haskell-vim'
    -- LaTeX
    use 'lervag/vimtex'
    -- C/C++
    use 'rhysd/vim-clang-format'
end)
