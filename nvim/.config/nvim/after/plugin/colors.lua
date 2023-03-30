vim.g.bytefl0w_colorscheme = "tokyonight"

function GettingThePaintReady()
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.gruvbox_invert_selection = '0'

    vim.g.tokyonight_transparent = true
    vim.opt.background = "dark"

end
GettingThePaintReady()
