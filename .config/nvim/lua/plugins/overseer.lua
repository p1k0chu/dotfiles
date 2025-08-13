return {
    'stevearc/overseer.nvim',
    config = function()
        require("overseer").setup {}

        -- command to rerun last task
        vim.api.nvim_create_user_command("OverseerRestartLast", function()
            local overseer = require("overseer")
            local tasks = overseer.list_tasks({ recent_first = true })
            if vim.tbl_isempty(tasks) then
                vim.notify("No tasks found", vim.log.levels.WARN)
            else
                overseer.run_action(tasks[1], "restart")
            end
        end, {})

        vim.keymap.set("n", "<leader>rc", ":OverseerRunCmd<CR>", { desc = "[R]un [C]ommand" })
        vim.keymap.set("n", "<leader>rt", ":OverseerToggle<CR>", { desc = "[R]unner [T]oggle" })
        vim.keymap.set("n", "<leader>rr", ":OverseerRun<CR>", { desc = "Overseer [R]un" })
        vim.keymap.set("n", "<leader>rl", ":OverseerRestartLast<CR>", { desc = "Overseer [R]estart [L]ast"})
    end
}
