return {
  {
    "bjarneo/aether.nvim",
    branch = "v2",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = false,
      colors = {
        bg = "#1B1B1B",
        bg_dark = "#1B1B1B",
        bg_highlight = "#323232",
        fg = "#efebdc",
        fg_dark = "#6d6d6d",
        comment = "#817f68",

        red = "#F44336",
        orange = "#a99b7a",
        yellow = "#E1CE98",
        green = "#e58980",
        cyan = "#b57614",
        blue = "#967a7a",
        purple = "#77838a",
        magenta = "#9683a1",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.bg_highlight }
        hl.Visual = { bg = "#e75a50", fg = "#1B1B1B", bold = true }
        hl.LazySelection = { bg = "#e75a50", fg = "#1B1B1B", bold = true }
        
        hl.LspReferenceText  = { bg = c.bg_highlight, underline = true }
        hl.LspReferenceRead  = { bg = c.bg_highlight, underline = true }
        hl.LspReferenceWrite = { bg = c.bg_highlight, underline = true, bold = true }

        hl["@boolean"] = { fg = c.orange, bold = true }
        hl["@constant"] = { fg = c.orange }
        hl["@constant.builtin"] = { fg = c.orange }
        hl["@keyword.function"] = { fg = c.purple, bold = true }
        hl["@function"] = { fg = c.blue }
        hl["@module"] = { fg = c.purple }
        hl["@property"] = { fg = c.cyan }
        hl["@type.builtin"] = { fg = c.yellow }
        hl["@string"] = { fg = c.green }
        hl["@keyword"] = { fg = c.purple }
        hl["@variable"] = { fg = c.fg }

        hl.WinSeparator = { fg = "#323232" }
        hl.VertSplit = { fg = "#323232" }

        hl["@lsp.type.parameter"] = { fg = c.fg, italic = true }
        hl["@lsp.type.variable"] = { fg = c.fg }
        hl["@lsp.type.boolean"] = { fg = c.orange, bold = true }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      require("aether.hotreload").setup()
      vim.cmd.colorscheme("aether")
    end,
  },
}