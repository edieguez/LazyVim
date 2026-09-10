-- Base editor UI: Normal, floats, popup menu, diagnostics, diff, spell.
return function(c)
  return {
    Normal = { fg = c.fg, bg = c.bg },
    NormalNC = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_float },
    FloatBorder = { fg = c.border, bg = c.bg_float },
    FloatTitle = { fg = c.fg, bg = c.bg_float, bold = true },
    WinSeparator = { fg = c.border, bg = c.bg },

    CursorLine = { bg = c.bg_cursorline },
    CursorLineNr = { fg = c.yellow, bold = true },
    LineNr = { fg = c.nontext },
    SignColumn = { bg = c.bg },
    ColorColumn = { bg = "#0f0f0f" },

    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    Search = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.orange },
    CurSearch = { fg = c.bg, bg = c.orange },
    MatchParen = { fg = c.yellow, bold = true, underline = true },

    Pmenu = { fg = c.fg, bg = c.bg_float },
    PmenuSel = { fg = c.bg, bg = c.blue },
    PmenuSbar = { bg = c.bg_alt },
    PmenuThumb = { bg = c.bg_sel },
    PmenuKind = { fg = c.cyan, bg = c.bg_float },
    PmenuExtra = { fg = c.comment, bg = c.bg_float },

    StatusLine = { fg = c.fg_dim, bg = c.statusline },
    StatusLineNC = { fg = c.comment, bg = c.statusline },
    TabLine = { fg = c.comment, bg = c.bg_alt },
    TabLineFill = { bg = c.bg },
    TabLineSel = { fg = c.fg, bg = c.bg_cursorline, bold = true },
    WinBar = { fg = c.fg_dim, bg = c.bg },
    WinBarNC = { fg = c.comment, bg = c.bg },

    Folded = { fg = c.comment, bg = c.bg_alt },
    NonText = { fg = c.nontext },
    Whitespace = { fg = c.nontext },
    SpecialKey = { fg = c.nontext },
    Directory = { fg = c.blue },
    Title = { fg = c.fg, bold = true },
    ModeMsg = { fg = c.fg_dim },
    MoreMsg = { fg = c.green },
    ErrorMsg = { fg = c.red, bold = true },
    WarningMsg = { fg = c.yellow },
    Question = { fg = c.blue },
    QuickFixLine = { bg = c.bg_cursorline },
    Conceal = { fg = c.nontext },

    Bold = { bold = true },
    Italic = { italic = true },

    DiffAdd = { bg = c.diff_add_bg },
    DiffChange = { bg = c.diff_change_bg },
    DiffDelete = { fg = c.red, bg = c.diff_delete_bg },
    DiffText = { bg = c.diff_text_bg },

    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.blue },
    DiagnosticHint = { fg = c.cyan },
    DiagnosticOk = { fg = c.green },

    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.cyan },
    DiagnosticUnderlineOk = { undercurl = true, sp = c.green },

    DiagnosticVirtualTextError = { fg = c.red },
    DiagnosticVirtualTextWarn = { fg = c.yellow },
    DiagnosticVirtualTextInfo = { fg = c.blue },
    DiagnosticVirtualTextHint = { fg = c.cyan },
    DiagnosticVirtualTextOk = { fg = c.green },

    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.blue },
    SpellRare = { undercurl = true, sp = c.purple },
    SpellLocal = { undercurl = true, sp = c.cyan },
  }
end
