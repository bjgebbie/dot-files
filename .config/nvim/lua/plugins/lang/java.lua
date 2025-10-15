return {
	{
		"mfussenegger/nvim-dap",
		optional = true,
		config = function()
			require("dap").configurations.java = {
				{
					type = "java",
					request = "attach",
					name = "Debug (Attach) - Remote",
					hostName = "127.0.0.1",
					port = 5005,
				},
			}
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
		commit = "380ac148f989e1291aac002dc959ecc68c5243d0",
		ft = "java",
		dependencies = {
			"mfussenegger/nvim-dap",
			"williamboman/mason.nvim",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = function()
			local home = os.getenv("HOME")
			local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
			local workspace_dir = home .. "/.local/share/eclipse/" .. project_name
			local java_bin_path = home .. "/.sdkman/candidates/java/21.0.8-amzn/bin/java"

			local mason_path = vim.fn.stdpath("data") .. "/mason"
			local packages_path = mason_path .. "/packages"
			local java_debug_adapter_path = packages_path .. "/java-debug-adapter"
			local jdtls_path = packages_path .. "/jdtls"
			local jdtls_config_path = jdtls_path .. "/config_linux" -- Change per OS
			local jdtls_launcher = jdtls_path .. "/plugins/org.eclipse.equinox.launcher_1.7.0.v20250519-0528.jar"

			local config = {
				name = "jdtls",
				cmd = {
					java_bin_path,
					"-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044",
					"-Declipse.application=org.eclipse.jdt.ls.core.id1",
					"-Dosgi.bundles.defaultStartLevel=4",
					"-Declipse.product=org.eclipse.jdt.ls.core.product",
					"-Dlog.level=ALL",
					"-Xmx1G",
					"--add-modules=ALL-SYSTEM",
					"--add-opens",
					"java.base/java.util=ALL-UNNAMED",
					"--add-opens",
					"java.base/java.lang=ALL-UNNAMED",
					"-jar",
					jdtls_launcher,
					"-configuration",
					jdtls_config_path,
					"-data",
					workspace_dir,
				},
				root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),
				settings = {
					java = {
						configuration = {
							runtimes = {
								{
									name = "Java 21",
									path = java_bin_path,
									default = true,
								},
								{
									name = "Java 17",
									path = java_bin_path,
								},
							},
						},
					},
				},
				init_options = {
					bundles = {
						java_debug_adapter_path .. "/extension/server/com.microsoft.java.debug.plugin-0.53.2.jar",
					},
				},
			}
			local jdtls = require("jdtls")
			-- jdtls.test_class()
			-- jdtls.test_nearest_method()
			jdtls.start_or_attach(config)
		end,
	},
}
