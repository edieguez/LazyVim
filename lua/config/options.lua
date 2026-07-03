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

-- Node-based tools (e.g. markdownlint-cli2) need node, which the shell
-- lazy-loads and may not be on nvim's PATH; fall back to the newest nvm install
if vim.fn.executable("node") == 0 then
  local node_bins = vim.fn.glob("~/.nvm/versions/node/*/bin", true, true)
  table.sort(node_bins)
  if #node_bins > 0 then
    vim.env.PATH = node_bins[#node_bins] .. ":" .. vim.env.PATH
  end
end
