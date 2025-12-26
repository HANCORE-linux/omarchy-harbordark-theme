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
                base04 = "#F9F5F4", -- Dark foreground
                base05 = "#ffffff", -- Default foreground
                base06 = "#ffffff", -- Light foreground
                base07 = "#F9F5F4", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#F44336", -- Variables, errors, red
                base09 = "#fe9088", -- Integers, constants, orange
                base0A = "#dd726a", -- Classes, types, yellow
                base0B = "#e75a50", -- Strings, green
                base0C = "#db9e9a", -- Support, regex, cyan
                base0D = "#df7e76", -- Functions, keywords, blue
                base0E = "#e18a84", -- Keywords, storage, magenta
                base0F = "#f1b6b2", -- Deprecated, brown/yellow
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
