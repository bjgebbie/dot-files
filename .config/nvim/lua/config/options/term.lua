local terminal_bufnr = nil
local terminal_winid = nil

function _G.toggle_terminal()
	if terminal_bufnr and vim.api.nvim_buf_is_valid(terminal_bufnr) then
		if terminal_winid and vim.api.nvim_win_is_valid(terminal_winid) then
			vim.api.nvim_win_close(terminal_winid, true)
			terminal_winid = nil
		else
			vim.cmd("botright split")
			terminal_winid = vim.api.nvim_get_current_win()
			vim.api.nvim_win_set_buf(terminal_winid, terminal_bufnr)
		end
	else
		vim.cmd("botright split | terminal")
		terminal_winid = vim.api.nvim_get_current_win()
		terminal_bufnr = vim.api.nvim_get_current_buf()
	end
end
