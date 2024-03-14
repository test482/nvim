-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false -- Relative line numbers
opt.scrolloff = 6          -- Lines of context
opt.tabstop = 4            -- Number of spaces tabs count for

opt.wrap = true
opt.linebreak = true
opt.formatoptions:append('m')
