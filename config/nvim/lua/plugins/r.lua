return {
  "R-nvim/R.nvim",
  -- Only required if you also set defaults.lazy = true
  lazy = false,
  config = function()
    --@type RConfigUserOpts
    local opts = {
      external_term = "tmux split-window -hfl 72 ",
      auto_quit = true,
    }
  end,
  require("r").setup(opts),
}
