return {
    {
        "williamboman/mason.nvim",
        version = "^2.0.0",
        lazy = false,
        config = function()
            require("mason").setup({})
        end,
    },
    {
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

            local standard_setup = {
                on_attach = on_attach,
                capabilities,
                vim.diagnostic.config({
                    virtual_text = true,
                    underline = true,
                    signs = true,
                    update_in_insert = true,
                }),
            }

            lspconfig.terraformls.setup({ standard_setup })
            lspconfig.dockerls.setup({ standard_setup })
            lspconfig.lua_ls.setup({ standard_setup })
            lspconfig.clangd.setup({ standard_setup })
            lspconfig.eslint.setup({ standard_setup })
            lspconfig.bashls.setup({ standard_setup })
            lspconfig.yamlls.setup({ standard_setup })
            lspconfig.jdtls.setup({ standard_setup })
            lspconfig.ts_ls.setup({ standard_setup })
        end,
    },
    {
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
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        lazy = false,
        config = function()
            require("mason-nvim-dap").setup({
                ensured_installed = {
                    "js-debug-adapter",
                },
            })
        end,
    },
}
