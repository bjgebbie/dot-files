local win_id = nil
local buf_id = nil
local ui = vim.api.nvim_list_uis()[1]
local width = ui.width - 4
local height = ui.height - 2
local window_config = {
	relative = "editor",
	width = width,
	height = height,
	row = 1,
	col = 1,
	style = "minimal",
	border = "rounded",
}

vim.api.nvim_create_autocmd("ExitPre", {
	pattern = "*",
	callback = function()
		for _, buf in ipairs(vim.api.nvim_list_bufs()) do
			if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
				vim.api.nvim_buf_delete(buf, { force = true })
			end
		end
	end,
})

vim.api.nvim_create_autocmd("WinLeave", {
	callback = function()
		local curr_win = vim.api.nvim_get_current_win()
		if buf_id and win_id and win_id == curr_win then
			vim.api.nvim_win_close(win_id, true)
		end
	end,
})

local function create_terminal()
	buf_id = vim.api.nvim_create_buf(false, true)
	win_id = vim.api.nvim_open_win(buf_id, true, window_config)
	vim.fn.termopen(vim.o.shell)
end

function _G.toggle_terminal()
	local curr_win = vim.api.nvim_get_current_win()
	local term_disabled = not win_id and not buf_id

	if term_disabled then
		create_terminal()
		return
	end

	if curr_win ~= win_id then
		win_id = vim.api.nvim_open_win(buf_id, true, window_config)
		return
	end

	vim.api.nvim_win_close(win_id, true)
end

vim.keymap.set("n", "<C>t", toggle_terminal, { desc = "Floating Terminal w/ Margin" })
