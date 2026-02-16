return {
  "NvChad/nvterm",
  keys = {
    { "<leader>tf", function() require("nvterm.terminal").toggle("float") end, mode = { "n", "t" }, desc = "Float terminal" },
    { "<leader>tv", function() require("nvterm.terminal").toggle("vertical") end, mode = { "n", "t" }, desc = "Vertical terminal" },
    { "<leader>th", function() require("nvterm.terminal").toggle("horizontal") end, mode = { "n", "t" }, desc = "Horizontal terminal" },
  },
  opts = {
    terminals = {
      type_opts = {
        float = {
          relative = "editor",
          row = 0.3,
          col = 0.25,
          width = 0.5,
          height = 0.4,
          border = "single",
        },
        horizontal = { location = "rightbelow", split_ratio = 0.3 },
        vertical = { location = "rightbelow", split_ratio = 0.5 },
      },
    },
  },
}
