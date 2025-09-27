-- Margin line numbers
vim.cmd("set number relativenumber")

-- Horizontal overflow behavior
vim.cmd("set nowrap")

vim.cmd("set colorcolumn=85")

require("config.options.diagnostics").setup()
require("config.options.highlights").setup()
require("config.options.telescope").setup()
require("config.options.borders").setup()
require("config.options.tabs").setup()
require("config.options.term")
