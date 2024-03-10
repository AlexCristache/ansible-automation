require('rose-pine').setup({
    disable_background = true
})
--require("tokyonight").setup({
--    style = "night",
--    transparent = false,
--})
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

require("nordic").setup({
    --disable_background = true,
    transparent_bg = true
})

require('catppuccin').setup({
    transparent_background = true
})


function Color(color)
    --color = color or "nordic"
    --color = color or "rose-pine-moon"
    --color = color or "catppuccin"
    color = color or 'kanagawa-dragon'
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Color()
