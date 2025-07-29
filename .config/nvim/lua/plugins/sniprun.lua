return {
    "michaelb/sniprun",
    branch = "master",
    build = "sh install.sh", -- fetches a github release for some fucking reason

    config = function()
        require("sniprun").setup({
            -- your options
        })
    end,
}
