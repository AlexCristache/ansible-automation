require('rose-pine').setup({
    disable_background = false,
    styles = {
        italic = false
    }
})
require("tokyonight").setup({
    style = "night",
    transparent = false,
})

require('kanagawa').setup({
    --theme = "dragon",
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
    background = "none",
    transparent = false,
    --disable_background = true,
    --transparent_bg = true
})

--require("nordic").setup({
--    --disable_background = true,
--    --transparent_bg = false
--})

require('catppuccin').setup({
    transparent_background = false
})

require('poimandres').setup({

})

function Color(color)
    --color = color or "nordic"
    --color = color or "oxocarbon"
    color = color or "github_dark_default"
    --color = color or "catppuccin"
    --color = color or 'kanagawa-dragon'
    vim.opt.background = "dark"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Color()
