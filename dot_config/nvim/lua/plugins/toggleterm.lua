return {
    {
        'akinsho/toggleterm.nvim', version = "*",
        lazy = false,
        keys = {
            {"<M-t>", "<cmd>ToggleTerm size=10 direciton=horizontal<CR>"}
        },
        config = function(_, opts)
            require('toggleterm').setup()

            local wk = require('which-key')
            wk.add({
                {"<leader>t", group="Terminal"},
                {"<leader>ts", "<cmd>ToggleTermSendCurrentLine 1<CR>", desc="Send Line"},
                {"<leader>ts", "<cmd>ToggleTermSendVisualLines 1<CR>", desc="Send Visual Selection", mode={"v"}},
            })
        end
    }
}
