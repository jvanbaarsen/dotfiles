return {
  {
    "nvim-neotest/neotest-plenary",
    "nvim-neotest/neotest-jest",
    "olimorris/neotest-rspec",
    "zidhuss/neotest-minitest",
    "rouge8/neotest-rust",
  },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-plenary",
        ["neotest-jest"] = { jestCommand = "npm run test --" },
        "neotest-rspec",
        "neotest-minitest",
        "neotest-rust",
      },
    },
  },
}
