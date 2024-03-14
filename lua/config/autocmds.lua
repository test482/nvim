-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Save when forgot sudo vim
vim.api.nvim_create_user_command(
    'Sudosave',
    ":w !sudo tee %",
    { desc = 'Save file with root permissions' }
)

-- let :Q do :q!
vim.api.nvim_create_user_command(
    'Q',
    ":q!",
    { desc = 'Quit without save' }
)
