return {
	"mfussenegger/nvim-dap",
	version = "^0.10.0",
	config = function()
		local configs_dir = "plugins.debug.configs"
		local dap = require("dap")
		local mason_path = vim.fn.stdpath("data") .. "/mason"

		require(configs_dir .. ".node").setup(dap, mason_path)
		require(configs_dir .. ".java").setup(dap, mason_path)
	end,
}
