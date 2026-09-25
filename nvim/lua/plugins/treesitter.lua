return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",
                    "dockerfile",
                    "haskell",
                    "json",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "python",
                    "toml",
                    "vim",
                    "vimdoc",
                    "yaml",
                },
                auto_install = false,
                highlight = {
                    enable = true,
                },
            })
        end,
    }
}
