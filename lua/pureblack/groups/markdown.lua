-- Prose/markdown: @markup.* captures used by treesitter markdown + render-markdown.nvim.
return function(c)
  return {
    ["@markup.heading.1"] = { fg = c.yellow, bold = true },
    ["@markup.heading.2"] = { fg = c.blue, bold = true },
    ["@markup.heading.3"] = { fg = c.green, bold = true },
    ["@markup.heading.4"] = { fg = c.cyan, bold = true },
    ["@markup.heading.5"] = { fg = c.magenta, bold = true },
    ["@markup.heading.6"] = { fg = c.purple, bold = true },

    ["@markup.strong"] = { fg = c.fg, bold = true },
    ["@markup.italic"] = { fg = c.fg, italic = true },
    ["@markup.strikethrough"] = { fg = c.comment, strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.raw"] = { fg = c.orange, bg = c.bg_cursorline },
    ["@markup.raw.block"] = { fg = c.orange, bg = c.bg_cursorline },

    ["@markup.link.label"] = { fg = c.blue, underline = true },
    ["@markup.link.url"] = { fg = c.comment, underline = true },

    ["@markup.quote"] = { fg = c.fg_dim, italic = true },
    ["@markup.list"] = { fg = c.magenta },
    ["@markup.list.checked"] = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.comment },
    ["@markup.math"] = { fg = c.cyan },
  }
end
