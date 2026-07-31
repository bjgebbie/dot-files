return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
        opts.preset = "modern"
        opts.delay = 0

        local wk = require("which-key")

        wk.add({
            {
                "<leader>s",
                group = "Sidekick",
            },
            {
                "<leader>l",
                group = "LSP",
            },
            {
                "<leader>g",
                group = "Git",
            },
            {
                "<leader>f",
                group = "Telescope",
            },
        })

        return opts
    end,
}
