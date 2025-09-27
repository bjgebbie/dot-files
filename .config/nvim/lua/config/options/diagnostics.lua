return {
	setup = function()
		vim.cmd([[
            highlight DiagnosticUnderlineError guisp=Red gui=undercurl
            highlight DiagnosticUnderlineWarn guisp=Yellow gui=undercurl
            highlight DiagnosticUnderlineHint guisp=Blue gui=undercurl
            highlight DiagnosticUnderlineInfo guisp=Cyan gui=undercurl
        ]])
		vim.diagnostic.config({
			virtual_text = true,
			underline = true,
			signs = true,
			update_in_insert = false,
			float = { border = "rounded", bg = "NONE" },
		})
	end,
}
