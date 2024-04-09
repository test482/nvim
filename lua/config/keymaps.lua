-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- code runner
keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { silent = true, desc = "code runner files json" })
keymap.set("n", "<leader>crp", ":CRProjects<CR>", { silent = true, desc = "code runner projects json" })
keymap.set("n", "<leader>r", ":RunCode<CR>", { silent = false, desc = "Run Code" })
keymap.set("n", "<leader>rf", ":RunFile<CR>", { silent = false, desc = "[F]ile" })
keymap.set("n", "<leader>rp", ":RunProject<CR>", { silent = false, desc = "[P]roject" })
keymap.set("n", "<leader>rt", ":RunFile tab<CR>", { silent = false, desc = "[T]ab mode" })
keymap.set("n", "<leader>rw", ":RunClose<CR>", { silent = false, desc = "Close runner" })
