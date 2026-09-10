-- Core syntax groups, treesitter @captures, and LSP semantic token links.
return function(c)
  local groups = {
    -- Core syntax
    Comment = { fg = c.comment, italic = true },

    Constant = { fg = c.orange },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.orange },
    Boolean = { fg = c.orange },
    Float = { fg = c.orange },

    Identifier = { fg = c.fg },
    Function = { fg = c.blue },

    Statement = { fg = c.magenta, bold = true },
    Conditional = { fg = c.magenta, bold = true },
    Repeat = { fg = c.magenta, bold = true },
    Label = { fg = c.magenta },
    Operator = { fg = c.fg_dim },
    Keyword = { fg = c.magenta, bold = true },
    Exception = { fg = c.magenta, bold = true },

    PreProc = { fg = c.purple },
    Include = { fg = c.purple },
    Define = { fg = c.purple },
    Macro = { fg = c.purple },
    PreCondit = { fg = c.purple },

    Type = { fg = c.cyan },
    StorageClass = { fg = c.cyan },
    Structure = { fg = c.cyan },
    Typedef = { fg = c.cyan },

    Special = { fg = c.yellow },
    SpecialChar = { fg = c.yellow },
    Tag = { fg = c.blue },
    Delimiter = { fg = c.fg_dim },
    SpecialComment = { fg = c.comment, italic = true },
    Debug = { fg = c.red },

    Underlined = { underline = true },
    Ignore = { fg = c.nontext },
    Error = { fg = c.red, bold = true },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },

    -- Treesitter captures
    ["@variable"] = { fg = c.fg },
    ["@variable.builtin"] = { fg = c.orange },
    ["@variable.parameter"] = { fg = c.param },
    ["@variable.member"] = { fg = c.fg_dim },

    ["@constant"] = { fg = c.orange },
    ["@constant.builtin"] = { fg = c.orange },
    ["@constant.macro"] = { fg = c.purple },

    ["@module"] = { fg = c.purple },
    ["@label"] = { fg = c.magenta },

    ["@string"] = { fg = c.green },
    ["@string.escape"] = { fg = c.yellow },
    ["@string.special"] = { fg = c.yellow },
    ["@character"] = { fg = c.green },
    ["@character.special"] = { fg = c.yellow },

    ["@number"] = { fg = c.orange },
    ["@boolean"] = { fg = c.orange },
    ["@float"] = { fg = c.orange },

    ["@function"] = { fg = c.blue },
    ["@function.builtin"] = { fg = c.blue },
    ["@function.call"] = { fg = c.blue },
    ["@function.macro"] = { fg = c.purple },
    ["@function.method"] = { fg = c.blue },
    ["@function.method.call"] = { fg = c.blue },
    ["@constructor"] = { fg = c.cyan },

    ["@keyword"] = { fg = c.magenta, bold = true },
    ["@keyword.function"] = { fg = c.magenta, bold = true },
    ["@keyword.operator"] = { fg = c.magenta },
    ["@keyword.return"] = { fg = c.magenta, bold = true },
    ["@keyword.conditional"] = { fg = c.magenta, bold = true },
    ["@keyword.repeat"] = { fg = c.magenta, bold = true },
    ["@keyword.import"] = { fg = c.purple, bold = true },
    ["@keyword.exception"] = { fg = c.magenta, bold = true },

    ["@operator"] = { fg = c.fg_dim },
    ["@punctuation.delimiter"] = { fg = c.fg_dim },
    ["@punctuation.bracket"] = { fg = c.fg_dim },
    ["@punctuation.special"] = { fg = c.yellow },

    ["@type"] = { fg = c.cyan },
    ["@type.builtin"] = { fg = c.cyan },
    ["@attribute"] = { fg = c.purple },
    ["@property"] = { fg = c.fg_dim },

    ["@tag"] = { fg = c.magenta },
    ["@tag.attribute"] = { fg = c.orange },
    ["@tag.delimiter"] = { fg = c.fg_dim },

    ["@comment"] = { fg = c.comment, italic = true },
    ["@comment.documentation"] = { fg = c.comment, italic = true },

    -- LSP semantic tokens: link onto the treesitter captures above.
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@variable.member" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.mod.readonly"] = { link = "@constant" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@constant.builtin" },
  }

  return groups
end
