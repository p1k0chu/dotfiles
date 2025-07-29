return {
    "nvim-telescope/telescope.nvim",
    config = true,
    keys = {
        {"<leader>sf", "<cmd>Telescope find_files<cr>", desc = "[S]each [F]iles"},
        {"<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "[S]each by [G]rep"},
        {"<leader>sb", "<cmd>Telescope buffers<cr>", desc = "[S]each [B]uffers"},
        {"<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "[S]each [H]elp tags"},
        {"<leader>sc", "<cmd>Telescope commands<cr>", desc = "[S]each [C]ommands"},
        {"<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "[S]each [D]iagnostics"},
    },
    cmd = {
        "Telescope"
    }
}
