return {
  {
    "nvim-neotest/neotest-plenary",
    "nvim-neotest/neotest-jest",
    "olimorris/neotest-rspec",
    "zidhuss/neotest-minitest",
  },
  {
    "nvim-neotest/neotest",
    opts = { adapters = { "neotest-plenary", "neotest-jest", "neotest-rspec", "neotest-minitest" } },

    keys = {},
  },
}
