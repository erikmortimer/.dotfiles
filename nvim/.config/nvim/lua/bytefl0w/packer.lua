vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag='0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    
    use('ThePrimeagen/git-worktree.nvim')
    use('ThePrimeagen/harpoon')

    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    -- lsp-zero

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

    -- Colorscheme
    use("folke/tokyonight.nvim")

end)
