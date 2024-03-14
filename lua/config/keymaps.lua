-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- code runner
keymap.set('n', '<leader>r', ':RunCode<CR>', opts)
keymap.set('n', '<leader>rf', ':RunFile<CR>', opts)
keymap.set('n', '<leader>rft', ':RunFile tab<CR>', opts)
keymap.set('n', '<leader>rp', ':RunProject<CR>', opts)
keymap.set('n', '<leader>rc', ':RunClose<CR>', opts)
keymap.set('n', '<leader>crf', ':CRFiletype<CR>', opts)
keymap.set('n', '<leader>crp', ':CRProjects<CR>', opts)
