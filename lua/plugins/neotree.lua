return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	keys = {
		{ "\\", ":Neotree reveal float<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,        -- show filtered items
				hide_dotfiles = false, -- show .git, .config, etc.
				hide_gitignored = false, -- optional: show gitignored files
				hide_hidden = false,   -- show hidden files on Windows
			},
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
