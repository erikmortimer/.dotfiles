return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("neovim/nvim-lspconfig")

    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    use("ThePrimeagen/git-worktree.nvim")
    use("ThePrimeagen/harpoon")

    -- Colorscheme
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

end)
