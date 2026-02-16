return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "",
      "",
      "",
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "  New file", "<cmd>ene <BAR> startinsert<CR>"),
      dashboard.button("u", "󱐥  Update plugins", "<cmd>Lazy<CR>"),
      dashboard.button("s", "  Settings", "<cmd>e $HOME/.config/nvim/init.lua<CR>"),
      dashboard.button("q", "󰿅  Quit", "<cmd>qa<CR>"),
    }

    local hour = tonumber(os.date("%H"))
    local greeting
    if hour < 5 then
      greeting = "    Good night!"
    elseif hour < 12 then
      greeting = "  󰼰 Good morning!"
    elseif hour < 17 then
      greeting = "    Good afternoon!"
    elseif hour < 20 then
      greeting = "  󰖝  Good evening!"
    else
      greeting = "  󰖔  Good night!"
    end

    dashboard.section.footer.val = greeting
    dashboard.opts.opts.noautocmd = true
    require("alpha").setup(dashboard.opts)
  end,
}
