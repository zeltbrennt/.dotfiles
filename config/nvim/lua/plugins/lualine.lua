return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function(_, opts)
    require("lualine").setup({
      options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
    })
  end,
}
