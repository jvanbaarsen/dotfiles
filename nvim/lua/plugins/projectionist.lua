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

      ["app/frontend/javascripts/"] = {
        ["app/frontend/javascripts/*.js"] = {
          alternate = "app/frontend/javascripts/{dirname}/{basename}.test.js",
        },
        ["app/frontend/javascripts/*.test.js"] = {
          alternate = "app/frontend/javascripts/{dirname}/{basename}.js",
        },
        ["app/frontend/javascripts/*.jsx"] = {
          alternate = "app/frontend/javascripts/{dirname}/{basename}.test.jsx",
        },
        ["app/frontend/javascripts/*.test.jsx"] = {
          alternate = "app/frontend/javascripts/{dirname}/{basename}.jsx",
        },
      },

      ["next.config.js"] = {
        ["*.js"] = {
          alternate = "{dirname}/{basename}.test.js",
        },
        ["*.test.js"] = {
          alternate = "{dirname}/{basename}.js",
        },
      },
    }
  end,
}
