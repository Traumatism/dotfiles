call plug#begin("~/.config/nvim/plugins")

    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'catppuccin/nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'

call plug#end()

lua << EOF
    local cmp = require('cmp')

    cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = 'buffer' }
        }
    })

    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

    require('lspconfig')['rust_analyzer'].setup {
        capabilities = capabilities
    }
EOF

let mapleader=' '

set encoding=utf-8
scriptencoding utf-8

set wildignorecase

set tabstop=4 shiftwidth=4 softtabstop=4 expandtab autoindent

nnoremap Q <NOP>

nnoremap <C-S> :w<CR><C-S>
nnoremap <silent> <Leader>n :Lexplore<CR>
nnoremap <silent> <Leader><Space> :Telescope<CR>

let g:catppuccin_flavour="mocha"

colorscheme catppuccin

let g:neovide_transparency=0.5

highlight Normal guibg=none
highlight NonText guibg=none

set guifont="JetBrainsMono Nerd Font"
