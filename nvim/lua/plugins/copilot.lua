return {
    {
        "github/copilot.vim",
        cmd = "Copilot",
        event = "InsertEnter",

        config = function()
            local wk = require("which-key")

            local copilot_enabled = true

            local function toggle_copilot()
                if copilot_enabled then
                    vim.cmd("Copilot disable")
                    copilot_enabled = false
                    vim.notify("Copilot disabled")
                else
                    vim.cmd("Copilot enable")
                    copilot_enabled = true
                    vim.notify("Copilot enabled")
                end
            end

            wk.add({
                { "<leader>c", group = "Copilot" },
                { "<leader>ct", toggle_copilot, desc = "Toggle Copilot" },
            })

            -- Accept full Copilot suggestion with Ctrl-j.
            vim.keymap.set("i", "<C-j>", 'copilot#Accept("\\<CR>")', {
                expr = true,
                replace_keycodes = false,
                silent = true,
                desc = "Accept Copilot suggestion",
            })

            -- Optional Copilot helpers.
            vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept-word)", {
                desc = "Accept Copilot word",
            })

            vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)", {
                desc = "Dismiss Copilot suggestion",
            })
        end,
    },
}
