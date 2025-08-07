local opt = vim.opt

-----------------------------------------------------------
-- General
-----------------------------------------------------------
-- opt.autochdir = true

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true
opt.laststatus = 3

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines

-----------------------------------------------------------
-- Terminal
-----------------------------------------------------------
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'fd', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<A-t>', function() 
      vim.cmd('ToggleTerm')
  end, opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


-----------------------------------------------------------
-- Copilot
-----------------------------------------------------------
vim.g.copilot_workspace_folders = { "~/Documents/source/repos/root/src/" }

-----------------------------------------------------------
-- Hacks
-----------------------------------------------------------
-- Disables the auto-continuation of comments on newlines
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-----------------------------------------------------------
-- Completion
-----------------------------------------------------------
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 1000000)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-----------------------------------------------------------
-- Markdown
-----------------------------------------------------------
opt.conceallevel = 2

