require("config.pikachu")
require("config.lazy")
require("config.autocmd")

P = function(...)
    print(vim.inspect(...))
    return ...
end

vim.lsp.config['kotlinls'] = {
    cmd = { '/opt/kotlin-lsp/kotlin-lsp.sh', '--stdio' },
    filetypes = { 'kotlin' },
    single_file_support = true,
    root_markers = { "build.gradle", "build.gradle.kts" },
    settings = {}
}
-- still shit
--vim.lsp.enable('kotlinls')
