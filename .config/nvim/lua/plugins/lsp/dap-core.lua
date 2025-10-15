return {
	{
		"mfussenegger/nvim-dap",
		version = "^0.10.0",
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		optional = true,
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		config = function()
			require("mason-nvim-dap").setup({
				ensure_installed = {
					"js",
					"javadbg",
				},
			})
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		version = "^4.0.0",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
			dapui.setup({
				layouts = {
					{
						elements = {
							"scopes",
							-- "stacks",
							"watches",
						},
						size = 40,
						position = "left",
					},
					{
						elements = {
							"repl", -- keep only this if you want just the REPL
							"console",
						},
						size = 10,
						position = "bottom",
					},
				},
			})
		end,
	},
}
