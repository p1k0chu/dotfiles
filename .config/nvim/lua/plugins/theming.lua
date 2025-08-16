return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lualine_theme = require 'lualine.themes.gruvbox'

        -- same c.bg for every mode
        lualine_theme.normal.c.bg = "#32302f"
        lualine_theme.insert.c.bg = "#32302f"
        lualine_theme.visual.c.bg = "#32302f"
        lualine_theme.replace.c.bg = "#32302f"
        lualine_theme.command.c.bg = "#32302f"
        lualine_theme.inactive.c.bg = "#32302f"

        require('lualine').setup {
            options = {
                theme = "gruvbox",
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = {
                    "branch",
                    -- "diff",
                    "diagnostics",
                },
                lualine_c = { "filename" },
                lualine_x = { "filetype" },
                lualine_y = {
                    "searchcount",
                    "progress",
                },
                lualine_z = { "location" },
            }
        }
    end
}
