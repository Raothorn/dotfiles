return {
    {
        "epwalsh/obsidian.nvim",
        lazy = false,
        version = "*", -- recommended, use latest release instead of latest commit
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require('obsidian').setup({
                workspaces = {
                    {
                        name = "default",
                        path = "/mnt/c/Users/Dell/OneDrive/Documents/obsidian/Default",
                    },
                },
                daily_notes = {
                    folder = "daily"
                },
                completion = {
                    nvim_cmp = true,
                    min_chars = 2
                },
                templates = {
                    folder = "templates"
                },
                -- Optional, customize how note IDs are generated given an optional title.
                ---@param title string|?
                ---@return string
                note_id_func = function(title)
                    -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
                    -- In this case a note with the title 'My new note' will be given an ID that looks
                    -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
                    local suffix = ""
                    if title ~= nil then
                        -- If title is given, transform it into valid file name.
                        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
                    else
                        -- If title is nil, just add 4 random uppercase letters to the suffix.
                        for _ = 1, 4 do
                            suffix = suffix .. string.char(math.random(65, 90))
                        end
                    end
                    return tostring(os.time()) .. "-" .. suffix
                end,
            })
            require('which-key').add({
                { "<leader>o",  group = "Obsidian" },
                { "<leader>ol", "<cmd>ObsidianLink<cr>",            mode = { "n", "v" }, desc = "Link" },
                { "<leader>on", "<cmd>ObsidianNewFromTemplate<cr>", mode = { "n", "v" }, desc = "New from Template" },
                { "<leader>of", "<cmd>ObsidianQuickSwitch<cr>",     desc = "Quick switch" }
            })
        end,
    }
}
