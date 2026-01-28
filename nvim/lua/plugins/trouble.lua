return {
    {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            {
                "<leader>el",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>ep",
                "<cmd>Trouble diagnostics next<cr>",
                desc = "Previous diagnostic",
            },
            {
                "<leader>en",
                "<cmd>Trouble diagnostics prev<cr>",
                desc = "Next diagnostic",
            },
        }
    }
}
