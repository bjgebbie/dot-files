local function file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end

local function getCheckstyleSource(null_ls)
	local checkstyle_rel_path = vim.fn.getcwd() .. "/checkstyle.xml"
	local checkstyle_exists = file_exists(checkstyle_rel_path)

	local checkstyle_source = nil
	if checkstyle_exists then
		checkstyle_source = null_ls.builtins.diagnostics.checkstyle.with({
			extra_args = {
				"-c",
				checkstyle_rel_path,
			},
		})
	end
	return checkstyle_source
end

return {
	{
		"nvimtools/none-ls-extras.nvim",
		commit = "924fe88a9983c7d90dbb31fc4e3129a583ea0a90",
		event = "BufRead",
	},
	{
		"nvimtools/none-ls.nvim",
		commit = "46cf7e728459fb0532194f50e8a60d73775f5387",
		event = "BufRead",
		keys = {
			{ "<leader>gf", vim.lsp.buf.format, desc = "Format File" },
		},

		config = function()
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
			local null_ls = require("null-ls")

			local setup = {
				-- you can reuse a shared lspconfig on_attach callback here
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ async = false })
							end,
						})
					end
				end,
				sources = {
					null_ls.builtins.formatting.stylua,
					-- null_ls.builtins.formatting.clang_format,
					null_ls.builtins.formatting.prettier,
					require("none-ls.diagnostics.eslint"),
				},
			}

			local checkstyle_source = getCheckstyleSource(null_ls)

			if checkstyle_source then
				setup.sources.insert(checkstyle_source)
			end
			null_ls.setup(setup)
		end,
	},
}
