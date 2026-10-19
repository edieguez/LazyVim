return {
  {
    -- dir = "~/Projects/hiraishin",
    "edieguez/hiraishin",
    name = "hiraishin.nvim",
    event = "VeryLazy",
    opts = {
      scope = "project",              -- "project" | "global" | "branch"
  root = {
    markers = { ".git", ".hiraishin" },
    fn = nil,                     -- function(bufnr, path) -> root path
  },
  storage = {
    dir = vim.fn.stdpath("data") .. "/hiraishin",
    debounce_ms = 500,
  },
  anchor = {
    search_radius = 50,           -- lines searched around the old position
    full_scan = true,             -- then the whole file (exact matches)
    max_lines = 20000,            -- no full scan above this size
    fuzzy_threshold = 0.8,        -- similarity for slightly edited lines
  },
  signs = {
    enabled = true,
    priority = 15,
    style = "nerd",               -- "nerd" | "ascii" | "emoji"
    icon = false,                 -- a string overrides the style's icon
    stale_icon = false,
    global_icon = false,          -- sign of a global kunai inside a project
    show_slot = true,             -- the seal number replaces the icon
    numhl = false,
  },
  line_highlight = false,
  virt_text = {
    enabled = true,
    show = "cursorline",          -- "cursorline" | "always"
    only_named = true,            -- unnamed kunai only show the note icon
    position = "eol",             -- "eol" | "right_align"
    prefix = "← ",
    note_icon = "✎",
  },
  name = { suggest_from_treesitter = true },
  note_hover = true,
  global_kunai = true,            -- draw global kunai in project buffers
  jump = {
    reuse_window = true,
    center = true,                -- zz
    open_folds = true,            -- zv
    flash = true,                 -- highlight the line you land on
    flash_ms = 350,
  },
  picker = {
    backend = "auto",             -- "snacks" | "telescope" | "fzf-lua" | "mini" | "select"
    sort = "recent",              -- after sealed kunai: "recent" | "manual" | "path" | "created"
    show_notes = true,
    icons = true,
    keys = {
      vsplit = "<C-v>", split = "<C-s>", tab = "<C-t>", delete = "<C-d>",
      rename = "<C-e>", note = "<C-o>", quickfix = "<C-q>", list = "<C-l>",
    },
  },
  manager = { width = 0.8, height = 0.6, border = "rounded", confirm_delete = false },
  undo_history = 20,
  messages = "echo",              -- "echo" | "notify" | "silent"
  confirm_remove_named = false,   -- removals can be undone instead
  keymaps = true,
    },
  },
}
