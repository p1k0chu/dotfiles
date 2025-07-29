return {
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },

        -- use a release tag to download pre-built binaries
        version = '1.*',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
            -- 'super-tab' for mappings similar to vscode (tab to accept)
            -- 'enter' for enter to accept
            -- 'none' for no mappings
            --
            -- All presets have the following mappings:
            -- C-space: Open menu or open docs if already open
            -- C-n/C-p or Up/Down: Select next/previous item
            -- C-e: Hide menu
            -- C-k: Toggle signature help (if signature.enabled = true)
            --
            -- See :h blink-cmp-config-keymap for defining your own keymap
            keymap = { preset = 'super-tab' },

            appearance = {
                -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = 'mono'
            },

            -- (Default) Only show the documentation popup when manually triggered
            completion = {
                ghost_text = {
                    enabled = true,
                    show_with_menu = false -- only show when menu is closed
                },

                menu = { auto_show = false }, -- only show menu on manual <C-space>

                list = {
                    selection = {
                        -- supertabbing
                        preselect = function(ctx) return not require('blink.cmp').snippet_active({ direction = 1 }) end,
                    }
                    
                }
            },

            -- disabled because documentation shows up automatically (IT DOES)
            -- signature = {
            --     enabled = true
            -- },

            -- Default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, due to `opts_extend`
            sources = {
                default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        -- make lazydev completions top priority (see `:h blink.cmp`)
                        score_offset = 100,
                    },
                },
            },

            fuzzy = { implementation = "rust" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
-- previous cmp config
--{
--    "hrsh7th/nvim-cmp",
--    dependencies = {
--        "neovim/nvim-lspconfig",
--        "hrsh7th/cmp-nvim-lsp",
--        "hrsh7th/cmp-buffer",
--        "hrsh7th/cmp-path",
--        "hrsh7th/cmp-cmdline",
--        "hrsh7th/cmp-vsnip",
--        "hrsh7th/vim-vsnip",
--        "petertriho/cmp-git",
--    },
--    config = function()
--        local cmp = require("cmp")
--
--        cmp.setup {
--            snippet = {
--                expand = function(args)
--                    vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
--                end,
--            },
--            mapping = cmp.mapping.preset.insert({
--                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--                ['<C-f>'] = cmp.mapping.scroll_docs(4),
--                ['<C-Space>'] = cmp.mapping.complete(),
--                ['<C-e>'] = cmp.mapping.abort(),
--                ['<CR>'] = cmp.mapping.confirm({ select = false }),
--            }),
--            sources = cmp.config.sources({
--                { name = 'nvim_lsp' },
--                { name = 'vsnip' }, -- For vsnip users.
--            }, {
--                { name = 'buffer' },
--                { name = 'path' },
--                { name = 'cmdline' }
--            })
--        }
--        cmp.setup.filetype('gitcommit', {
--            sources = cmp.config.sources({
--                { name = 'git' },
--            }, {
--                { name = 'buffer' },
--                { name = 'path' },
--                { name = 'cmdline' }
--            })
--        })
--
--        cmp.setup.cmdline(':', {
--            mapping = cmp.mapping.preset.cmdline(),
--            sources = cmp.config.sources({
--                { name = 'path' }
--            }, {
--                { name = 'cmdline' },
--            }),
--            matching = { disallow_symbol_nonprefix_matching = false }
--        })
--    end
