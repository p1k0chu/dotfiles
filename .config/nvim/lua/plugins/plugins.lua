return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        config = function()
            require("tokyonight").setup {
                style = "moon",
                --[[ on_colors = function (colors)
                    colors.bg = "#000000"
                end ]]
            }
            vim.cmd[[colorscheme tokyonight]]
        end
    },
    {
        "folke/noice.nvim",
        dependencies = {
            "MunifTanjim/nui.nvim",
            -- optional:
            "rcarriga/nvim-notify",
        },
        opts = {
            lsp = {
                -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                },
            },
            -- you can enable a preset for easier configuration
            presets = {
                bottom_search = true,         -- use a classic bottom cmdline for search
                command_palette = true,       -- position the cmdline and popupmenu together
                long_message_to_split = true, -- long messages will be sent to a split
                inc_rename = false,           -- enables an input dialog for inc-rename.nvim
                lsp_doc_border = false,       -- add a border to hover docs and signature help
            },
        },
    },
    {
        "folke/ts-comments.nvim",
        opts = {},
    },
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",

            -- for TodoTelescope
            "nvim-telescope/telescope.nvim"
        },
        opts = {},
        cmd = {
            "TodoTelescope",
            "TodoQuickFix",
            "TodoTrouble"
        },
        keys = {
            { "<leader>tt", "<cmd>TodoTelescope<cr>", desc = "Telescope todo-comments" },
        }
    },
    {
        "folke/persistence.nvim"
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                theme = "codedark",
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
    },
    {
        "mistricky/codesnap.nvim",
        build = "make",
        cmd = {
            "CodeSnap",
            "CodeSnapSave",
            "CodeSnapHighlight",
            "CodeSnapSaveHighlight",
            "CodeSnapASCII",
        },
        opts = {
            bg_x_padding = 80,
            bg_y_padding = 50,
            bg_theme = "summer",
            has_breadcrumbs = true,
            watermark = "",
            has_line_number = true,
        }
    },
    {
        "williamboman/mason.nvim",
        dependencies = { "williamboman/mason-lspconfig.nvim" },
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    { "nvim-treesitter/nvim-treesitter" },
    {
        "brianhuster/live-preview.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        opts = {
            picker = "telescope"
        },
        cmd = {
            "LivePreview"
        }
    },
    {
        'wakatime/vim-wakatime',
        lazy = false
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "stevearc/oil.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        opts = {
            default_file_explorer = true,
            delete_to_trash = true
        }
    }
}
