local M = {}

M.colors = {
  bg = "#000000",
  bg_alt = "#0a0a0a",
  bg_float = "#0d0d0d",
  bg_cursorline = "#141414",
  bg_current_line = "#1e1e1e",
  bg_visual = "#2e2e2e",
  bg_sel = "#3a3a3a",
  border = "#454545",
  statusline = "#101010",

  fg = "#d9d9d9",
  fg_dim = "#b8b8b8",
  comment = "#a8a8a8",
  nontext = "#707070",

  red = "#f05a5a",
  green = "#5ce65c",
  yellow = "#e8d44f",
  blue = "#6f9df8",
  magenta = "#e879e8",
  cyan = "#5ce0e0",
  orange = "#f0a05c",
  purple = "#b48ef0",
  param = "#d9a878",

  diff_add_bg = "#0d1f0d",
  diff_change_bg = "#1a1a0d",
  diff_delete_bg = "#1f0d0d",
  diff_text_bg = "#0d1526",

  none = "NONE",
}

-- Byte-exact match to ghostty/.config/ghostty/themes/Pure Black Vivid so
-- :terminal buffers render identically to a real Ghostty pane.
M.terminal = {
  "#1c1c1c", "#ed1919", "#13ec13", "#ecda13",
  "#3c78f1", "#ed19ed", "#13ecec", "#b8b8b8",
  "#808080", "#f53d3d", "#3df53d", "#f5e63d",
  "#558bf6", "#f53df5", "#3df5f5", "#ffffff",
}

return M
