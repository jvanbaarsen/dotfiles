return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    styles = {
      borders = "orange",
    },
    on_colors = function(colors)
      colors.border = "#9ece6a"
    end,
  },
}
