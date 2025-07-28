return {
	setup = function()
		-- Telescope colors
		vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#E68183" })
		vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#272a31" })
		vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#E68183" })
		vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#E68183" })
	end,
}
