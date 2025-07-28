return {
    "lukas-reineke/indent-blankline.nvim",
    version = "^3.0.0",
    config = function()
        local highlight = {
            "default",
        }
        ---@diagnostic disable-next-line: lowercase-global
        scope = { enabled = false }
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "default", { fg = "#7C7C7C" })
        end)

        require("ibl").setup({ indent = { highlight = highlight } })
    end,

    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
}
