return {
  {
    "CRAG666/code_runner.nvim",
    config = true,
    opts = {
      filetype_path = vim.fn.expand('~/.config/nvim/code_runner.json'),
    },
    keys = {
      { "<leader>r",   ":RunCode<CR>",     silent = false,          desc = "Run Code" },

      { "<leader>rf",  ":RunFile<CR>",     silent = false,          desc = "[F]ile" },
      { "<leader>rp",  ":RunProject<CR>",  silent = false,          desc = "[P]roject" },
      { "<leader>rt",  ":RunFile tab<CR>", silent = false,          desc = "[T]ab mode" },
      { "<leader>rw",  ":RunClose<CR>",    silent = false,          desc = "Close runner" },

      { "<leader>rx",  "",                 desc = "Edit Json files" },
      { "<leader>rxf", ":CRFiletype<CR>",  silent = true,           desc = "code runner filetype json" },
      { "<leader>rxp", ":CRProjects<CR>",  silent = true,           desc = "code runner projects json" },
    },
  }
}
