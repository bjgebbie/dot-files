return {
    "williamboman/mason-lspconfig.nvim",
    version = "^2.0.0",
    lazy = false,
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp", -- optional, for autocompletion
    },
    config = function()
        local lspconfig = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")

        mason_lspconfig.setup({
            ensure_installed = {
                "rust_analyzer",
                "terraformls",
                "dockerls",
                "bashls",
                "clangd",
                "eslint",
                "lua_ls",
                "yamlls",
                "jdtls",
                "ts_ls",
            },
            automatic_installation = true,
        })

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
    end,
}
