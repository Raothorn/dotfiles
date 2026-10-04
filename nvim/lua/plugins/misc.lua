return {
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        opts = {},
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },

    {
        "terrortylor/nvim-comment",
        keys = {
            { "<leader>;;", "<cmd>CommentToggle<cr>", desc = "Toggle comment", mode = "n" },
            { "<leader>;;", ":'<,'>CommentToggle<cr>", desc = "Toggle comment", mode = "v" },
        },
        config = function()
            require('nvim_comment').setup()
        end,
        opts = {},
    },

    -- {
    --     "yuki-yano/hop.nvim",
    --     keys = {
    --         { "<leader>jj", "<cmd>HopChar1<cr>", desc = "Hop to character" },
    --     },
    --     opts = {},
    -- },

    {
        "windwp/nvim-ts-autotag",
        opts = {
            opts = {
                enable_close = true,
                enable_rename = true,
                enable_close_on_slash = true,
            },
        },
    },
}
