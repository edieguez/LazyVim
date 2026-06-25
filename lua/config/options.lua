-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.clipboard = "" -- Disable OS clipboard sync
vim.opt.spell = true -- Enable spellchecking
vim.opt.spelllang = { "en", "es" }
vim.g.autoformat = false -- Disable autoformat on save

-- Show white characters
vim.opt.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
  extends = "›",
  precedes = "‹",
}

-- Show vertical line at 120 chars
vim.opt.colorcolumn = "120"
