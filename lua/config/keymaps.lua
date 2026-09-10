-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add jk as alternative to Esc
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape insert mode" })

-- Save all buffers and quit
-- vim.keymap.set("n", "<leader>qW", "<cmd>wqall<cr>", { desc = "Save all and quit" })

-- Save all buffers (without quitting)
-- vim.keymap.set("n", "<leader>qw", "<cmd>wall<cr>", { desc = "Save all buffers" })

-- Save all modified buffers
-- vim.keymap.set("n", "<leader>wA", "<cmd>wa<cr>", { desc = "Save All Buffers" })

-- Quit all, discarding unsaved changes (force)
-- vim.keymap.set("n", "<leader>qZ", "<cmd>qall!<cr>", { desc = "Quit all (force, no save)" })

vim.keymap.set({ "n", "x" }, "y", function()
  return (vim.v.register == '"' and '"+' or '"' .. vim.v.register) .. "y"
end, { expr = true, desc = "Yank to system clipboard" })
