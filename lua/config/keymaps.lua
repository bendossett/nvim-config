-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
local tsbuiltin = require("telescope.builtin")

map("n", ":b", function()
  tsbuiltin.buffers({ sort_mru = true, ignore_current_buffer = true })
end, {})
map("n", ":o", tsbuiltin.oldfiles, {})

map("n", "<C-b>", "<Cmd>Neotree<CR>")

map("n", "<C-h>", ":wincmd h<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-k>", ":wincmd k<CR>")
map("n", "<C-l>", ":wincmd l<CR>")
