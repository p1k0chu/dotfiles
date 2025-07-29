return {
    "mhartington/formatter.nvim",
    config = function()
        require("formatter").setup {
            filetype = {
                --lua = require("formatter.filetypes.lua").stylua
                css = require("formatter.filetypes.css").prettier,
                html = require("formatter.filetypes.html").prettier,
                yaml = require("formatter.filetypes.yaml").prettier,
                markdown = require("formatter.filetypes.markdown").prettier,
                python = require("formatter.filetypes.python").autopep8,
                cmake = require("formatter.filetypes.cmake").cmakelang,
            }
        }
    end
}
