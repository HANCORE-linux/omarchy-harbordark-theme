return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#1B1B1B",
        dark_bg    = "#1B1B1B",
        darker_bg  = "#141414",
        lighter_bg = "#323232",

        fg         = "#efebdc",
        dark_fg    = "#C0AF7F",
        light_fg   = "#f4f2e8",
        bright_fg  = "#f4f2e8",
        muted      = "#817f68",

        red        = "#F44336",
        orange     = "#e67e22",
        yellow     = "#E1CE98",
        green      = "#a99b7a",
        cyan       = "#77868a",
        blue       = "#9ba2a6",
        purple     = "#9683a1",
        brown      = "#e58980",

        bright_red    = "#F44336",
        bright_yellow = "#E1CE98",
        bright_green  = "#a99b7a",
        bright_cyan   = "#77868a",
        bright_blue   = "#9ba2a6",
        bright_purple = "#9683a1",

        accent               = "#e75a50",
        cursor               = "#C0AF7F",
        foreground           = "#efebdc",
        background           = "#1B1B1B",
        selection            = "#323232",
        selection_foreground = "#efebdc",
        selection_background = "#1B1B1B",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = "#323232" }
        hl.CursorLineNr = { fg = c.orange, bold = true }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = "#323232" }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
