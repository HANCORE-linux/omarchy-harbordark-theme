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
				base03 = "#A8A8A8", -- Comments, invisibles
				base04 = "#ffffff", -- Dark foreground
				base05 = "#ffffff", -- Default foreground
				base06 = "#ffffff", -- Light foreground
				base07 = "#ffffff", -- Light background

				-- Accent colors (base08-base0F)
				base08 = "#F44336", -- Variables, errors, red
				base09 = "#f44336", -- Integers, constants, orange
				base0A = "#B78955", -- Classes, types, yellow
				base0B = "#be9d9d", -- Strings, green
				base0C = "#e6d690", -- Support, regex, cyan
				base0D = "#e75a50", -- Functions, keywords, blue
				base0E = "#d5c9ac", -- Keywords, storage, magenta
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
