return {
    "sphamba/smear-cursor.nvim",
    config = function()
        require("smear_cursor").setup({
            cursor_color = "#47ABFC",
            never_draw_over_target = true,
            gamma = 1
        })
    end
}
