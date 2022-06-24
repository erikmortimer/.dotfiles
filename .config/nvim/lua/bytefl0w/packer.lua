return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("neovim/nvim-lspconfig")
    
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- TODO: add and learn to use "nvim-telescope/telescope.nvim" and 
    -- "ThePrimeagen/harpoon"

    -- Colorscheme
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

end)
