return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1F1F1F", -- Default background
                base01 = "#929292", -- Lighter background (status bars)
                base02 = "#1F1F1F", -- Selection background
                base03 = "#929292", -- Comments, invisibles
                base04 = "#e6efff", -- Dark foreground
                base05 = "#e6efff", -- Default foreground
                base06 = "#e6efff", -- Light foreground
                base07 = "#e6efff", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#F44336", -- Variables, errors, red
                base09 = "#f44336", -- Integers, constants, orange
                base0A = "#a99b7a", -- Classes, types, yellow
                base0B = "#e75a50", -- Strings, green
                base0C = "#99a4af", -- Support, regex, cyan
                base0D = "#8484a0", -- Functions, keywords, blue
                base0E = "#a7a6c6", -- Keywords, storage, magenta
                base0F = "#a99b7a", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
