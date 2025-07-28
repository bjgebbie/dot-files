return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    plugins = {
        registers = true,
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    opts = {
        preset = 'helix'
    }
}
