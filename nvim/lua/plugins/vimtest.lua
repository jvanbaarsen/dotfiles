return {
  "vim-test/vim-test",
  config = function()
    vim.g["test#strategy"] = "neovim"
    vim.g["test#neovim#term_position"] = "vertical"
  end,
  keys = {
    {
      "<leader>tt",
      ":TestFile<cr>",
      desc = "Run File",
    },
    {
      "<leader>tT",
      ":TestSuite<cr>",
      desc = "Run All Test Files",
    },
    {
      "<leader>tr",
      ":TestNearest<cr>",
      desc = "Run Nearest",
    },
    {
      "<leader>tl",
      ":TestLast<cr>",
      desc = "Run Last",
    },
  },
}
