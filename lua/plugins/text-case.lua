return {
  "johmsalas/text-case.nvim",
  event = "VeryLazy",
  config = function()
    require("textcase").setup({})
  end,
  keys = {
    "ga",
    {
      "gat",
      function()
        require("textcase").current_word("to_title_case")
      end,
      mode = "n",
      desc = "Convert to Title Case",
    },
    {
      "gat",
      function()
        require("textcase").visual("to_title_case")
      end,
      mode = "x",
      desc = "Convert to Title Case",
    },
  },
  cmd = {
    "Subs",
    "TextCaseOpenTelescope",
    "TextCaseOpenTelescopeQuickChange",
    "TextCaseOpenTelescopeLSPChange",
    "TextCaseStartReplacingCommand",
  },
}
