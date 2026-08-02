return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",

    -- Let kitty's background show through instead of painting our own.
    -- kitty.conf already runs at background_opacity 0.70, and until now
    -- neovim was covering it with an opaque #1e1e2e.
    --
    -- This is the theme's own switch rather than a pile of `hi Normal
    -- guibg=NONE` overrides: catppuccin clears the background on every group
    -- it owns, so floats, the sign column and the plugin integrations below
    -- stay consistent instead of leaving opaque patches behind.
    transparent_background = true,

    integrations = {
      -- The pieces that draw their own panels. Without these they keep a
      -- solid backdrop and show up as rectangles floating on the blur.
      alpha = true,
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      which_key = true,
      telescope = { enabled = true },
      native_lsp = { enabled = true },
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
