return {
    'windwp/nvim-autopairs',
    tags = "v2.0.0",
    event = "InsertEnter",
    config = function ()
        require('nvim-autopairs').setup({})
    end
}
