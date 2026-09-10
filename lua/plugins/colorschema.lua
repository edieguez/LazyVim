return {
  -- kanagawa (picker): kanagawa-wave | -dragon | -lotus
  { "rebelot/kanagawa.nvim", lazy = false, priority = 1000 },

  -- rose-pine (picker): rose-pine-main | -moon | -dawn
  { "rose-pine/neovim", name = "rose-pine", lazy = false, priority = 1000 },

  -- github (picker): github_dark | _dark_dimmed | _dark_high_contrast |
  --                  _dark_default | github_light | _light_high_contrast
  { "projekt0n/github-nvim-theme", name = "github-theme", lazy = false, priority = 1000 },

  -- nightfox (picker): nightfox | duskfox | nordfox | terafox |
  --                      carbonfox ← the high-contrast dark one | dayfox | dawnfox
  { "EdenEast/nightfox.nvim", lazy = false, priority = 1000 },

  -- gruvbox (opts): contrast + vim.o.background choose the variant
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = { contrast = "hard" }, -- "hard" | "soft" | ""
  },

  -- onedark (opts): style = dark | darker | cool | deep | warm | warmer
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    opts = { style = "darker" },
  },

  -- PaperColor (global): light/dark via vim.o.background (vimscript, no setup)
  { "NLKNguyen/papercolor-theme", lazy = false, priority = 1000 },

  -- everforest: vim.o.background (dark/light) + everforest_background tone
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.everforest_background = "hard" -- "hard" | "medium" | "soft"
      vim.g.everforest_better_performance = 1
    end,
  },

  -- gruvbox-material: refined gruvbox, excellent Tree-sitter/semantic
  --   highlighting. Note: designed softer than vanilla gruvbox, so use the
  --   "hard" background for max contrast.
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.gruvbox_material_background = "hard"     -- "hard" | "medium" | "soft"
      vim.g.gruvbox_material_foreground = "material" -- "material" | "mix" | "original"
      vim.g.gruvbox_material_better_performance = 1
    end,
  },

  -- sonokai_style sets the palette
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.sonokai_style = "andromeda" -- default|atlantis|andromeda|shusia|maia|espresso
      vim.g.sonokai_better_performance = 1
    end,
  },

  -- cyberdream (opts): explicitly high-contrast, futuristic & vibrant —
  --   the closest match to your stated priority. variant = default|light|auto
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "default",
      italic_comments = true,
    },
  },

  -- oxocarbon: minimalist high-contrast, IBM Carbon-inspired.
  --   No setup; light/dark via vim.o.background.
  { "nyoom-engineering/oxocarbon.nvim", lazy = false, priority = 1000 },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "pureblack" },
  },
}
