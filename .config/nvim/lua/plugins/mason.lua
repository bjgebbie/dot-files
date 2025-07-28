return 
	{
		"williamboman/mason.nvim",
		version = "^1.0.0",
		lazy = true,
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		version = "^1.0.0",
		lazy = true,
		config = function()
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
				automatic_installation = true,
			})
			mason_lspconfig.setup_handlers({
				function()
					local lspconfig = require("lspconfig")
					local capabilities = require("cmp_nvim_lsp").default_capabilities()

					local standard_setup = {
						on_attach = on_attach,
						capabilities,
						vim.diagnostic.config({
							virtual_text = true,
							underline = true,
						}),
					}

					lspconfig.terraformls.setup({ standard_setup })
					lspconfig.dockerls.setup({ standard_setup })
					lspconfig.lua_ls.setup({ standard_setup })
					lspconfig.clangd.setup({ standard_setup })
					lspconfig.eslint.setup({ standard_setup })
					lspconfig.bashls.setup({ standard_setup })
					lspconfig.yamlls.setup({ standard_setup })
					-- lspconfig.jdtls.setup({
					-- 	standard_setup,
					-- 	settings = {
					-- 		java = {
					-- 			configuration = {
					-- 				runtimes = {
					-- 					{
					-- 						name = "JavaSE-24",
					-- 						path = "/home/btr5kqq/.sdkman/candidates/java/24.0.1-amzn",
					-- 						default = true,
					-- 					},
					-- 					{
					-- 						name = "JavaSE-21",
					-- 						path = "/home/btr5kqq/.sdkman/candidates/java/21.0.7-amzn",
					-- 					},
					-- 					{
					-- 						name = "JavaSE-17",
					-- 						path = "/home/btr5kqq/.sdkman/candidates/java/17.0.15-amzn",
					-- 					},
					-- 				},
					-- 			},
					-- 		},
					-- 	},
					-- })
					lspconfig.ts_ls.setup({ standard_setup })
				end,
			})
		end,
	},
	{
		-- Items that are found in :Mason Linters or formatters
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
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
