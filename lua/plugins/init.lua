return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Telescope ignore images
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      return {
        defaults = {
          file_ignore_patterns = {
            "%.png", "%.jpg", "%.jpeg", "%.webp",
            "%.bmp", "%.gif", "%.svg",
          },
        },
      }
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  --  "nvim-treesitter/nvim-treesitter",
  --  opts = {
  --    ensure_installed = {
  --      "vim", "lua", "vimdoc",
  --      "html", "css"
  --    },
  --  },
  -- },
}
