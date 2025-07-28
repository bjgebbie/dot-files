return {
    "neovim/nvim-lspconfig",
    version = "^1.0.0",
    dependencies = {
        'nvim-java/nvim-java'
    },
    keys = {
        { "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>",   desc = "Display LSP Code Actions" },
        { "<leader>ce", ":lua vim.diagnostic.open_float()<CR>", desc = "Display LSP Code Errors" },
    },
}
