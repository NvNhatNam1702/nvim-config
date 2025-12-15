-- ====== Diagnostic Display ======
vim.diagnostic.config {
  virtual_text = true, -- show inline errors
  signs = true,        -- show signs in the gutter
  underline = true,    -- underline errors
  update_in_insert = false,
}

-- ====== Global Autocmd for LSP Keymaps ======
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local bufnr = ev.buf
    local opts = { buffer = bufnr, silent = true }

    -- Useful LSP keymaps
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>ra", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  end,
})

-- ====== Capabilities (e.g. for nvim-cmp completion) ======
local capabilities = vim.lsp.protocol.make_client_capabilities()
-- If using nvim-cmp, uncomment this:
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- ====== Python (pyright) ======
vim.lsp.config("basedpyright", {
  capabilities = capabilities,
  filetypes = { "python" },
settings = {
        basedpyright = {
            analysis = {
                typeCheckingMode = "basic", 
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                reportUnknownVariableType = false,
                reportUnknownMemberType = false,
                reportUnknownArgumentType = false,
                reportMissingTypeStubs = false,
            },
        },
    },
  })
vim.lsp.enable("basedpyright")

-- ====== Lua (lua_ls) ======
vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  filetypes = { "lua" },
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})
vim.lsp.enable("lua_ls")

-- ====== JavaScript / TypeScript (optional) ======
-- vim.lsp.config("tsserver", {
--   capabilities = capabilities,
-- })
-- vim.lsp.enable("tsserver")

-- ====== C++ (clangd) ======
vim.lsp.config("clangd", {
  capabilities = capabilities,
  filetypes = { "c", "cpp", "objc", "objcpp" }, -- C/C++/Objective-C
  cmd = { "clangd", "--background-index", "--clang-tidy" }, -- optional extra flags
})
vim.lsp.enable("clangd")

