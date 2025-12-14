require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

--select all the file
map("n", "<C-a>", "ggVG", { desc = "Select all" })
map("i", "<C-a>", "<Esc>ggVG", { desc = "Select all" })


-- Move Selected Text Up/Down (Visual Mode)
-- Allows dragging blocks of code with J/K and auto-indenting
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Join Lines (Keep Cursor)
-- J usually moves cursor to end of line; this keeps it in place
-- map("n", "J", "mzJ`z", { desc = "Join lines (keep cursor)" })
--
-- -- Center Cursor on Scroll
-- -- Keeps your cursor in the middle of the screen when scrolling half-pages
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down (centered)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up (centered)" })
--
-- -- Center Cursor on Search
-- -- Keeps cursor in middle when jumping to next/prev search result
-- map("n", "n", "nzzzv", { desc = "Next search result (centered)" })
-- map("n", "N", "Nzzzv", { desc = "Prev search result (centered)" })
--
-- -- "The Greatest Remap Ever" (Paste without Copying)
-- -- Pastes over text without overwriting your clipboard with the deleted text
-- map("x", "<leader>p", [["_dP]], { desc = "Paste without losing clipboard" })
--
-- -- System Clipboard Yanking
-- -- Allows you to copy from Neovim to other apps (Browser, Slack, etc)
-- map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
-- map("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })
--
-- -- Delete to Void
-- -- Deletes text without saving it to any clipboard
-- map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to void (no copy)" })
--
-- -- Search and Replace Word Under Cursor
-- -- Starts a global search/replace for the word currently under your cursor
-- map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor" })
--
-- -- Make File Executable
-- map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make file executable" })
--
-- -- Quickfix Navigation
-- map("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next Quickfix Item" })
-- map("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Prev Quickfix Item" })
