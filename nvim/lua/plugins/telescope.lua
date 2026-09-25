return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function(_, opts)
            local telescope=require('telescope')
            telescope.setup {
                defaults = {
                    mappings = {
                        i = {
                            -- map actions.which_key to <C-h> (default: <C-/>)
                            -- actions.which_key shows the mappings for your picker,
                            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                            ["<C-j>"] = 'move_selection_next',
                            ["<C-k>"] = 'move_selection_previous',
                        }
                    },
                    file_ignore_patterns = {
                        "Root/",
                    }
                },
            }
            require('which-key').add({
                {"<leader>ff", require('telescope.builtin').find_files, desc="Find files"},
                { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Live grep" },
                { "<leader>fB", function() require("telescope.builtin").buffers() end, desc = "Buffers" },
                { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "Recent files" },
                { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Help tags" },
            })
        end
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function() 
            local telescope=require('telescope')
            require('which-key').add({
               {"<leader>fb", "<cmd>Telescope file_browser<CR>", desc="File browser"}
            })
        end
    }
}

