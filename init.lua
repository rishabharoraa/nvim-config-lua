require('plugins')
require('settings')

require('nvim-treesitter.configs').setup({
    ensure_installed = "cpp",
    highlight = {
        enable = true,
    }
})
