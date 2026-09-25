return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        keys = {
            {
                "<M-t>",
                "<cmd>ToggleTerm size=10 direction=horizontal<cr>",
                desc = "Toggle terminal",
            },
            {
                "<leader>tt",
                "<cmd>ToggleTerm size=10 direction=horizontal<cr>",
                desc = "Toggle terminal",
            },
            {
                "<leader>ts",
                "<cmd>ToggleTermSendCurrentLine 1<cr>",
                desc = "Send line to terminal",
            },
            {
                "<leader>ts",
                "<cmd>ToggleTermSendVisualLines 1<cr>",
                desc = "Send selection to terminal",
                mode = "v",
            },
        },
        opts = {},
    },
}
