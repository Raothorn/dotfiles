return {
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      lazy=false,
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      keys = {
        {
          "<leader>?",
          function()
            require("which-key").show({ global = false })
          end,
          desc = "Buffer Local Keymaps (which-key)",
        },
        {
            "<leader>m",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Plugin Specific",
            mode = {"n"}
        },
      },
    }
}
