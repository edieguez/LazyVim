local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "pureblack"

  local palette = require("pureblack.palette")
  local c = palette.colors

  for i, hex in ipairs(palette.terminal) do
    vim.g["terminal_color_" .. (i - 1)] = hex
  end

  local group_modules = {
    "pureblack.groups.editor",
    "pureblack.groups.syntax",
    "pureblack.groups.markdown",
    "pureblack.groups.plugins",
  }

  for _, mod in ipairs(group_modules) do
    local groups = require(mod)(c)
    for name, spec in pairs(groups) do
      vim.api.nvim_set_hl(0, name, spec)
    end
  end
end

return M
