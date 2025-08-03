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

            -- mason_lspconfig.setup_handlers({
            --     function(server_name)
            --         lspconfig[server_name].setup({
            --             capabilities = require("cmp_nvim_lsp").default_capabilities(),
            --         })
            --     end,
            -- })
            -- 	local mason_lspconfig = require("mason-lspconfig")
            -- 	mason_lspconfig.setup({
            -- 		automatic_installation = true,
            -- 	})
            -- 	mason_lspconfig.setup_handlers({
            -- 		function()
            -- 			local lspconfig = require("lspconfig")
            -- 			local capabilities = require("cmp_nvim_lsp").default_capabilities()
            --
            -- 			local standard_setup = {
            -- 				on_attach = on_attach,
            -- 				capabilities,
            -- 				vim.diagnostic.config({
            -- 					virtual_text = true,
            -- 					underline = true,
            -- 				}),
            -- 			}
            --
            -- 			lspconfig.terraformls.setup({ standard_setup })
            -- 			lspconfig.dockerls.setup({ standard_setup })
            -- 			lspconfig.lua_ls.setup({ standard_setup })
            -- 			lspconfig.clangd.setup({ standard_setup })
            -- 			lspconfig.eslint.setup({ standard_setup })
            -- 			lspconfig.bashls.setup({ standard_setup })
            -- 			lspconfig.yamlls.setup({ standard_setup })
            -- 			lspconfig.jdtls.setup({
            -- 				standard_setup,
            -- 				settings = {
            -- 					java = {
            -- 						configuration = {
            -- 							runtimes = {
            -- 								{
            -- 									name = "JavaSE-24",
            -- 									path = "/home/btr5kqq/.sdkman/candidates/java/24.0.1-amzn",
            -- 									default = true,
            -- 								},
            -- 								{
            -- 									name = "JavaSE-21",
            -- 									path = "/home/btr5kqq/.sdkman/candidates/java/21.0.7-amzn",
            -- 								},
            -- 								{
            -- 									name = "JavaSE-17",
            -- 									path = "/home/btr5kqq/.sdkman/candidates/java/17.0.15-amzn",
            -- 								},
            -- 							},
            -- 						},
            -- 					},
            -- 				},
            -- 			})
            -- 			lspconfig.ts_ls.setup({ standard_setup })
            -- 		end,
            -- })
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
}
