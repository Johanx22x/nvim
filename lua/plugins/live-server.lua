return {
  "aurum77/live-server.nvim",
  cmd = "LiveServer",
  build = function()
    require("live_server.util").install()
  end,
  config = function()
    require("live_server").setup({
      port = 8080,
      browser_command = "firefox",
    })
  end,
}
