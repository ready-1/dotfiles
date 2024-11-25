-- Basic settings
vim.opt.number = true                 -- Show line numbers
vim.opt.relativenumber = true         -- Relative line numbers
vim.opt.autoindent = true             -- Enable auto-indentation
vim.opt.tabstop = 4                   -- Tab width
vim.opt.shiftwidth = 4                -- Indentation width
vim.opt.smarttab = true               -- Smart tab behavior
vim.opt.softtabstop = 4               -- Soft tab stops
vim.opt.mouse = "a"                   -- Enable mouse support
vim.opt.expandtab = true              -- Use spaces instead of tabs
vim.opt.cursorline = true             -- Highlight the current line
vim.opt.ignorecase = true             -- Case-insensitive search
vim.opt.smartcase = true              -- Case-sensitive if uppercase is used
vim.opt.wrap = true                   -- Wrap long lines

-- Plugins
-- Use a plugin manager like vim-plug
vim.cmd [[
call plug#begin()


Plug 'projekt0n/github-nvim-theme'    " GitHub theme
Plug 'tpope/vim-surround'              " Surround commands (ysw)
Plug 'preservim/nerdtree'              " File explorer
Plug 'tpope/vim-commentary'            " Commenting (gcc, gc)
Plug 'vim-airline/vim-airline'         " Status bar
Plug 'vim-airline/vim-airline-themes'  " Themes for airline
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'                " Fzf integration for Vim
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter

call plug#end()
]]

-- Apply GitHub theme
require('github-theme').setup({
    options = {
        -- Styles for various code elements
        styles = {
            comments = "italic",        -- Style for comments
            functions = "italic",       -- Style for functions
            keywords = "italic,bold",   -- Style for keywords
        },
        -- Darken specific sidebars
        darken = {
            sidebars = {
                enable = true,          -- Enable sidebar darkening
                list = { "qf", "vista_kind", "terminal", "packer" }, -- Sidebar types
            },
        },
    }
})

-- Use the desired GitHub theme style
vim.cmd("colorscheme github_dark")

-- Treesitter Configuration
require('nvim-treesitter.configs').setup({
    ensure_installed = { "python", "javascript", "lua" },
    highlight = {
        enable = true,                -- Enable syntax highlighting
    },
})

-- NerdTree settings
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
