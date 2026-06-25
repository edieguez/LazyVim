-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Add jk as alternative to Esc
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape insert mode" })

vim.keymap.set({ "n", "x" }, "y", function()
  return (vim.v.register == '"' and '"+' or '"' .. vim.v.register) .. "y"
end, { expr = true, desc = "Yank to system clipboard" })
