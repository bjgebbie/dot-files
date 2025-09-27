return {
    -- Items that are found in :Mason Linters or formatters
    "jay-babu/mason-null-ls.nvim",
    lazy = false,
    dependencies = {
        "williamboman/mason.nvim",
        "nvimtools/none-ls.nvim",
    },
    config = function()
        require("mason-null-ls").setup({
            automatic_installation = true,
        })
    end,
}
