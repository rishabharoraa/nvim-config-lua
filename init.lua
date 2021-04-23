require('plugins')
require('settings')

require('nvim-treesitter.configs').setup({
    ensure_installed = "all",

    highlight = {
        enable = true,
        custom_captures = { 
            ["function"] = "TSString",

            ["function.builtin"] = "TSString",

            ["function.macro"] = "TSString"
        }
    }
})
