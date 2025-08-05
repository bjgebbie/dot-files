return {
    "neovim/nvim-lspconfig",
    version = "^2.0.0",
    keys = {
        { "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>",   desc = "Display LSP Code Actions" },
        { "<leader>ce", ":lua vim.diagnostic.open_float()<CR>", desc = "Display LSP Code Errors" },
    },
}
