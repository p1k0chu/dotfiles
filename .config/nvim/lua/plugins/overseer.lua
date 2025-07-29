return {
    'stevearc/overseer.nvim',
    config = function()
        require("overseer").setup {}

        vim.keymap.set("n", "<leader>rc", ":OverseerRunCmd<CR>", { desc = "[R]un [C]ommand" })
        vim.keymap.set("n", "<leader>rt", ":OverseerToggle<CR>", { desc = "[R]unner [T]oggle" })
        vim.keymap.set("n", "<leader>rr", ":OverseerRun<CR>", {desc = "Overseer [R]un"})
    end
}
