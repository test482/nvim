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

-- automatically adds shebang line to new files, and `chmod u+x`.
-- https://github.com/LinuxSDA/HashBang
vim.cmd("autocmd BufNewFile *.* lua Hashbang(1, 1, 0)")

function Hashbang(portable, permission, RemExt)
    local shells = {
        ['awk'] = "awk",
        ['sh'] = "bash",
        ['hs'] = "runhaskell",
        ['jl'] = "julia",
        ['lua'] = "lua",
        ['mak'] = "make",
        ['js'] = "node",
        ['pl'] = "perl",
        ['py'] = "python3",
        ['rb'] = "ruby",
    }

    local extension = vim.fn.expand("%:e")

    if shells[extension] ~= nil then
        local fileshell = shells[extension]

        local line
        if portable == 1 then
            line = "#! /usr/bin/env " .. fileshell
        else
            line = "#! " .. vim.fn.system("which " .. fileshell)
        end

        vim.api.nvim_buf_set_lines(0, 0, 0, false, { line })
        vim.api.nvim_buf_set_lines(0, 1, 1, false, { "" })

        if permission == 1 then
            vim.cmd("autocmd BufWritePost * autocmd VimLeave * !chmod u+x %")
        end

        if RemExt == 1 then
            vim.cmd("autocmd BufWritePost * autocmd VimLeave * !mv % %:p:r")
        end
    end
end
