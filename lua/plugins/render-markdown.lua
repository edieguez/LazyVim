-- Keep HTML comments visible instead of concealing them (default hides them
-- everywhere except the cursor's own line, which reads as "text disappears").
return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      html = {
        comment = { conceal = false },
      },
    },
  },
}
