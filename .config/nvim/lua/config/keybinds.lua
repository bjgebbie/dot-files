-- Terminal Control
vim.api.nvim_set_keymap("n", "<C-t>", ":lua toggle_terminal()<CR>i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:lua toggle_terminal()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-w>", "<C-\\><C-n>:winc<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Better Paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Clear Notifications
vim.keymap.set("n", "<Esc>", function()
    require("notify").dismiss({ silent = true, pending = true })
end, { desc = "Clear notifications", noremap = true, silent = true })

vim.keymap.set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", {
    noremap = true,
    silent = true,
    desc = "Rename on cursor",
})
