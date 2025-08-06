return {
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },
        config = function(_)
            vim.lsp.enable('lua_ls')
            vim.lsp.enable('rust_analyzer')
            vim.lsp.enable('clangd')
            -- vim.lsp.enable('asm_lsp')
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
