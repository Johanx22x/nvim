return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    plugins = {
      spelling = { enabled = true, suggestions = 20 },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add({
      { "<leader>", group = "Leader" },
      { "<leader>c", group = "Copilot" },
      { "<leader>t", group = "Terminal" },
      { "<leader>m", group = "Markdown" },
    })
  end,
}
