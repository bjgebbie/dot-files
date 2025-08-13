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

-- Language Server
vim.keymap.set("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", {
    noremap = true,
    silent = true,
    desc = "Rename on cursor",
})

vim.keymap.set("n", "<leader>lc", ":lua vim.lsp.buf.references()<CR>", {
    noremap = true,
    silent = true,
    desc = "Find references",
})

-- DAP
vim.keymap.set("n", "<leader>dd", ":DapNew<CR>", {
    noremap = true,
    silent = true,
    desc = "Start Debugging Session",
})
vim.keymap.set("n", "<leader>dq", ":DapTerminate<CR>", {
    noremap = true,
    silent = true,
    desc = "Stop Debugging Session",
})
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>", {
    noremap = true,
    silent = true,
    desc = "Toggle Breakpoint",
})
vim.keymap.set("n", "<leader>di", ":DapStepInto<CR>", {
    noremap = true,
    silent = true,
    desc = "Step In",
})
vim.keymap.set("n", "<leader>do", ":DapStepOver<CR>", {
    noremap = true,
    silent = true,
    desc = "Step Over",
})
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>", {
    noremap = true,
    silent = true,
    desc = "Continue",
})

-- Debug UI
vim.keymap.set("n", "<leader>dui", ":lua require('dapui').toggle()<CR>", {
    noremap = true,
    silent = true,
    desc = "Toggle Debug ui",
})

-- Window Control
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true })
