function ColorTheScreen(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        "folke/tokyonight.nvim",
	config = function()
	    require("tokyonight").setup({
                style = "storm",
		transparent = "true",
		terminal_colors = true,
		styles = {
		    -- Style to be applied to different syntax groups
		    comments = { italic = false },
		    keywords = { italic = false },
		    -- Background styles. Can be dark, transparent, or normal
		    sidebars = "dark",
		    floats = "dark",
		},
	    })
	    ColorTheScreen()
	end
    },
}

