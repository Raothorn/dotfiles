-- remappings
local map = vim.api.nvim_set_keymap
local mapc = vim.keymap.set
vim.g.mapleader = ' '

local wk = require('which-key')
-- Insert mode
map('i', 'fd', '<Esc>', { noremap = true, silent = false })

-- Selection commands
wk.add({
    {"<leader>s", group="Selection"},
    {"<leader>sc", "<cmd>noh<cr>", desc="Clear selection"}
})

-- File commands
wk.add({
    {"<leader>f", group="File"},
    {"<leader>fR", "<cmd>luafile %<cr>", desc="Reload lua file"},
    {"<leader>fs", "<cmd>w<cr>", desc="Save file"},
    {"<leader>fS", "<cmd>wa<cr>", desc="Save all files"}
})

-- Window commands
wk.add({
    {'<leader>w', group="Window"},
    {'<leader>w/', '<cmd>vsp<cr>', desc="Vertical split"},
    {'<leader>w-', '<cmd>sp<cr>', desc="Horizontal split"},
    {'<leader>wh', '<C-w>h', desc="Window left"},
    {'<leader>wl', '<C-w>l', desc="Window right"},
    {'<leader>wj', '<C-w>j', desc="Window down"},
    {'<leader>wk', '<C-w>k', desc="Window up"},
    {'<leader>wd', '<C-w>q', desc="Close window"},
})

-- Comment commands
wk.add({
    {"<leader>;", group="Comments"},
    {"<leader>;;", "<cmd>CommentToggle<cr>", mode="n", }
})

-- Lsp commnds
wk.add({
    {'<leader>l', group="Lsp"},
    {'<leader>lf', vim.lsp.buf.format, desc="Format buffer" },
    {'<leader>la', vim.lsp.buf.code_action, desc="Code Action"}
})

-- Editor commands
--map('n', '<A-t>', ':ToggleTerm<cr>', { noremap = true, silent = false })

map('n', '<leader>;;', ':CommentToggle<cr>', { noremap = true, silent = false })
map('v', '<leader>;;', ":'<,'>CommentToggle<cr>", { noremap = true, silent = false })

--map('n', '<leader>el', ':Trouble diagnostics toggle focus=true<cr>', { noremap = true, silent = false })


-- Jumping commands
mapc("n", "<leader>en", vim.diagnostic.goto_next)
mapc("n", "<leader>ep", vim.diagnostic.goto_prev)
map('n', '<leader>jj', ':HopChar1<cr>', { noremap = true, silent = false })

-- Snippet commands
--local ls = require("luasnip")

-- vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
-- vim.keymap.set({"i", "s"}, "<C-H>", function() ls.jump(-1) end, {silent = true})

-- vim.keymap.set({"i", "s"}, "<C-,>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(1)
-- 	end
-- end, {silent = true})
--
wk.add({
    {'<leader>q', group="Quit"},
    {'<leader>qq', '<cmd>silent! xa<cr><cmd>qa!<cr>', desc="Quit"}
})
