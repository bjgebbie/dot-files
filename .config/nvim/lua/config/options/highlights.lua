return {
    setup = function()
        vim.api.nvim_set_hl(0, "@lsp.type.modifier", { italic = true, fg = "#c678dd" })
        vim.api.nvim_set_hl(0, "@lsp.type.class", { bold = true, fg = "#e5c07b" })
    end,
}
