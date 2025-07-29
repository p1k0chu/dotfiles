return {
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },

        -- example using `opts` for defining servers
        opts = {
            servers = {
                lua_ls = {},
                rust_analyzer = {},
                clangd = {},
                pyright = {},
                cmake = {},
                asm_lsp = {},
                fish_lsp = {},


                volar = {
                    init_options = {
                        typescript = {
                            tsdk = "/home/pikachu/.npm-packages/lib/node_modules/typescript/lib"
                        }
                    }
                },
                ts_ls = {
                    init_options = {
                        plugins = {
                            {
                                name = "@vue/typescript-plugin",
                                location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
                                languages = { "javascript", "typescript", "vue" },
                            },
                        },
                    },
                    filetypes = {
                        "javascript",
                        "typescript",
                        "vue",
                    },
                },

                -- https://github.com/hrsh7th/vscode-langservers-extracted
                cssls = {},
                html = {},
                jsonls = {},
                csharp_ls = {},
            }
        },
        config = function(_, opts)
            local lspconfig = require('lspconfig')
            for server, config in pairs(opts.servers) do
                -- passing config.capabilities to blink.cmp merges with the capabilities in your
                -- `opts[server].capabilities, if you've defined it
                config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                lspconfig[server].setup(config)
            end

            vim.lsp.enable('hls')
        end
    },
    {
        "mfussenegger/nvim-lint",
        config = function()
            require("lint").linters_by_ft = {
                -- kotlin = { "ktlint" }
            }
        end
    },
}
