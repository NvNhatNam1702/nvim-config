-- lua/plugins/rose-pine.lua
return {
  "rose-pine/neovim",
  name = "rose-pine",

  config = function()
    vim.cmd("colorscheme rose-pine")

    -- force black background
    vim.cmd("hi Normal guibg=#000000")
    vim.cmd("hi NormalNC guibg=#000000")
  end,
}
