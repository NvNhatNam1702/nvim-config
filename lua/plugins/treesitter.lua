return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,

	config = function()
		local ts = require("nvim-treesitter")

		-- Install parsers
		ts.install({
			"lua",
			"python",
			"javascript",
			"typescript",
			"html",
			"css",
			"json",
			"bash",
			"markdown",
			"yaml",
			"toml",
			"sql",
			"go",
		})

		-- Enable highlighting (NEW WAY after 0.12 version)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"bash",
				"markdown",
				"yaml",
				"toml",
				"sql",
				"go",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})

		-- Optional: folding
		-- vim.opt.foldmethod = "expr"
		-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
	end,
}
