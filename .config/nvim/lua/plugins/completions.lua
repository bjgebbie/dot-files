return {
	{
		"hrsh7th/cmp-nvim-lsp",
		event = "BufRead",
        commit = "99290b3ec1322070bcfb9e846450a46f6efa50f0"
	},
	{
		"L3MON4D3/LuaSnip",
        version = "^2.0.0",
		event = "BufRead",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
        commit = "b5311ab3ed9c846b585c0c15b7559be131ec4be9",
		event = "BufRead",
		config = function()
			local cmp = require("cmp")

			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
                experimental = {
                    ghost_text = true
                },
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
                    ["<Tab>"] = cmp.mapping.select_next_item({select = true}),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
