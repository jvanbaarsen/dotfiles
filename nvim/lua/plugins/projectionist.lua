return {
  "tpope/vim-projectionist",
  config = function()
    vim.g.projectionist_heuristics = {
      ["spec/"] = {
        ["lib/*.rb"] = {
          alternate = "spec/lib/{dirname}/{basename}_spec.rb",
        },
        ["spec/*_spec.rb"] = {
          alternate = "app/{dirname}/{basename}.rb",
        },
        ["app/*.rb"] = {
          alternate = "spec/{dirname}/{basename}_spec.rb",
        },
      },

      ["test/"] = {
        ["lib/*.rb"] = {
          alternate = "test/lib/{dirname}/{basename}_spec.rb",
        },
        ["test/*_test.rb"] = {
          alternate = "app/{dirname}/{basename}.rb",
        },
        ["app/*.rb"] = {
          alternate = "test/{dirname}/{basename}_test.rb",
        },
      },
    }
  end,
}
