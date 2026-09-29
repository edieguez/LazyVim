local autolist_filetypes = {
  "markdown",
  "text",
  "tex",
  "plaintex",
  "norg",
}

return {
  "gaoDean/autolist.nvim",
  ft = autolist_filetypes,
  config = function()
    require("autolist").setup()

    vim.api.nvim_create_autocmd("FileType", {
      pattern = autolist_filetypes,
      callback = function(args)
        local map = function(mode, lhs, rhs, opts)
          vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", { buffer = args.buf }, opts or {}))
        end

        map("i", "<tab>", "<cmd>AutolistTab<cr>")
        map("i", "<s-tab>", "<cmd>AutolistShiftTab<cr>")
        -- map("i", "<c-t>", "<c-t><cmd>AutolistRecalculate<cr>") -- an example of using <c-t> to indent
        map("i", "<CR>", "<CR><cmd>AutolistNewBullet<cr>")
        map("n", "o", "o<cmd>AutolistNewBullet<cr>")
        map("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
        map("n", "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>")
        map("n", "<leader>cr", "<cmd>AutolistRecalculate<cr>", { desc = "Autolist Recalculate" })

        -- cycle list types with dot-repeat
        map("n", "<leader>cn", require("autolist").cycle_next_dr, { expr = true })
        map("n", "<leader>cp", require("autolist").cycle_prev_dr, { expr = true })

        -- if you don't want dot-repeat
        -- map("n", "<leader>cn", "<cmd>AutolistCycleNext<cr>")
        -- map("n", "<leader>cp", "<cmd>AutolistCycleNext<cr>")

        -- functions to recalculate list on edit
        map("n", ">>", ">><cmd>AutolistRecalculate<cr>")
        map("n", "<<", "<<<cmd>AutolistRecalculate<cr>")
        map("n", "dd", "dd<cmd>AutolistRecalculate<cr>")
        map("v", "d", "d<cmd>AutolistRecalculate<cr>")
      end,
    })
  end,
}
