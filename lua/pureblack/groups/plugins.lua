-- Highlight groups for plugins that don't derive fully from base groups.
-- Snacks.*, BlinkCmp*, GrugFar*, RenderMarkdown* are intentionally omitted:
-- they link onto Special/NonText/Comment/Diagnostic*/Pmenu*/Title/Diff* by default.
return function(c)
  return {
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.yellow },
    GitSignsDelete = { fg = c.red },
    GitSignsAddNr = { fg = c.green },
    GitSignsChangeNr = { fg = c.yellow },
    GitSignsDeleteNr = { fg = c.red },
    GitSignsAddLn = { bg = c.diff_add_bg },
    GitSignsChangeLn = { bg = c.diff_change_bg },
    GitSignsDeleteLn = { bg = c.diff_delete_bg },

    TroubleNormal = { fg = c.fg, bg = c.bg },
    TroubleText = { fg = c.fg },
    TroubleCount = { fg = c.bg, bg = c.purple },
    TroubleIndent = { fg = c.nontext },
    TroubleFilename = { fg = c.blue },
    TroublePos = { fg = c.comment },
    TroubleSource = { fg = c.comment },
    TroubleCode = { fg = c.comment },

    WhichKey = { fg = c.magenta },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyValue = { fg = c.comment },
    WhichKeyBorder = { fg = c.border, bg = c.bg_float },
    WhichKeyTitle = { fg = c.fg, bold = true },

    NoiceCmdlineIcon = { fg = c.blue },
    NoiceCmdlinePopupBorder = { fg = c.border },
    NoiceConfirmBorder = { fg = c.border },
    NoiceVirtualText = { fg = c.comment },
    NoiceMini = { fg = c.fg_dim },
    NoiceLspProgressTitle = { fg = c.fg_dim },
    NoiceLspProgressClient = { fg = c.blue },
    NoiceLspProgressSpinner = { fg = c.cyan },

    FlashLabel = { fg = c.bg, bg = c.magenta, bold = true },
    FlashMatch = { fg = c.cyan, bold = true },
    FlashCurrent = { fg = c.orange, bold = true },
    FlashBackdrop = { fg = c.nontext },

    BufferLineFill = { bg = c.bg },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg_cursorline, bold = true },
    BufferLineBufferVisible = { fg = c.fg_dim, bg = c.bg },
    BufferLineIndicatorSelected = { fg = c.blue, bg = c.bg_cursorline },
    BufferLineModified = { fg = c.yellow, bg = c.bg },
    BufferLineModifiedSelected = { fg = c.yellow, bg = c.bg_cursorline },
    BufferLineSeparator = { fg = c.border, bg = c.bg },

    HarpoonBorder = { fg = c.border, bg = c.bg_float },
    HarpoonTitle = { fg = c.fg, bold = true },
  }
end
