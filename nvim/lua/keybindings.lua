-- ~/.config/nvim/lua/config/keybindings.lua

-- Leader should be set before plugins load if possible.
vim.g.mapleader = " "

local keymap = vim.keymap.set
local wk = require("which-key")

-- ============================================================================
-- Basic overrides
-- ============================================================================

-- Disable accidental macro recording with q.
-- If you still want macro recording, consider mapping it somewhere explicit.
keymap("n", "q", "<Nop>", { desc = "Disabled macro recording" })

-- Fast escape from insert mode.
keymap("i", "fd", "<Esc>", { desc = "Exit insert mode" })

-- Copy visual selection to Windows clipboard from WSL.
keymap("v", "YY", ":<C-u>silent! '<,'>w !clip.exe<CR>", {
    silent = true,
    desc = "Copy selection to Windows clipboard",
})

-- ============================================================================
-- Search / selection
-- ============================================================================

wk.add({
    { "<leader>s", group = "Search / Selection" },
    { "<leader>sc", "<cmd>nohlsearch<cr>", desc = "Clear search highlight" },
})

-- ============================================================================
-- Files
-- ============================================================================

wk.add({
    { "<leader>f", group = "File" },
    { "<leader>fR", "<cmd>luafile %<cr>", desc = "Reload current Lua file" },
    { "<leader>fs", "<cmd>w<cr>", desc = "Save file" },
    { "<leader>fS", "<cmd>wa<cr>", desc = "Save all files" },
})

-- ============================================================================
-- Windows
-- ============================================================================

wk.add({
    { "<leader>w", group = "Window" },
    { "<leader>w/", "<cmd>vsplit<cr>", desc = "Vertical split" },
    { "<leader>w-", "<cmd>split<cr>", desc = "Horizontal split" },

    { "<leader>wh", "<C-w>h", desc = "Window left" },
    { "<leader>wj", "<C-w>j", desc = "Window down" },
    { "<leader>wk", "<C-w>k", desc = "Window up" },
    { "<leader>wl", "<C-w>l", desc = "Window right" },

    { "<leader>wd", "<C-w>q", desc = "Close window" },
    { "<leader>w=", "<C-w>=", desc = "Balance windows" },
    { "<leader>wo", "<C-w>o", desc = "Only window" },
})

-- ============================================================================
-- Comments
-- Requires your CommentToggle command/plugin to be loaded.
-- ============================================================================

wk.add({
    { "<leader>;", group = "Comments" },
    { "<leader>;;", "<cmd>CommentToggle<cr>", desc = "Toggle comment", mode = "n" },
    { "<leader>;;", ":'<,'>CommentToggle<cr>", desc = "Toggle comment", mode = "v" },
})

-- ============================================================================
-- LSP
-- ============================================================================

wk.add({
    { "<leader>l", group = "LSP" },

    {
        "<leader>lf",
        function()
            vim.lsp.buf.format({ async = true })
        end,
        desc = "Format buffer",
    },

    { "<leader>la", vim.lsp.buf.code_action, desc = "Code action", mode = { "n", "v" } },
    { "<leader>lr", vim.lsp.buf.rename, desc = "Rename symbol" },
    { "<leader>ll", vim.lsp.codelens.run, desc = "Run code lens" },

    { "<leader>lh", vim.lsp.buf.hover, desc = "Hover" },
    { "<leader>ld", vim.lsp.buf.definition, desc = "Go to definition" },
    { "<leader>lD", vim.lsp.buf.declaration, desc = "Go to declaration" },
    { "<leader>li", vim.lsp.buf.implementation, desc = "Go to implementation" },
    { "<leader>lt", vim.lsp.buf.type_definition, desc = "Go to type definition" },
    { "<leader>lR", vim.lsp.buf.references, desc = "References" },
})

-- ============================================================================
-- Jumping
-- ============================================================================

wk.add({
    { "<leader>j", group = "Jump" },
    { "<leader>jj", "<cmd>HopChar1<cr>", desc = "Hop to character" },
})

-- ============================================================================
-- Quit
-- ============================================================================

wk.add({
    { "<leader>q", group = "Quit" },
    { "<leader>qq", "<cmd>silent! xa<cr><cmd>qa!<cr>", desc = "Save all and quit" },
})
