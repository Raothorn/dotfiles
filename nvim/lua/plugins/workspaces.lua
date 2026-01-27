return {
    {
        'natecraddock/workspaces.nvim',
        lazy = false,
        keys = {
            {"<leader>pp", "<cmd>Telescope workspaces<cr>", desc = "Find Workspaces"}
        },
        config = function ()
            require('workspaces').setup()
        end,
    }
}
