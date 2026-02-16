return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- LSP keymaps on attach
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local map = function(lhs, rhs, desc)
          vim.keymap.set("n", lhs, rhs, { buffer = args.buf, desc = desc })
        end
        map("gD", vim.lsp.buf.declaration, "Go to declaration")
        map("gd", vim.lsp.buf.definition, "Go to definition")
        map("K", vim.lsp.buf.hover, "Hover info")
        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code action")
        map("gr", vim.lsp.buf.references, "References")
        map("<leader>f", vim.lsp.buf.format, "Format")
      end,
    })

    -- Default config for all servers
    vim.lsp.config("*", {
      capabilities = capabilities,
      flags = { debounce_text_changes = 150 },
    })

    -- Lua (vim global + runtime path)
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          diagnostics = { globals = { "vim" } },
          workspace = { library = vim.api.nvim_get_runtime_file("", true) },
          telemetry = { enable = false },
        },
      },
    })

    -- Enable servers
    vim.lsp.enable({
      "gopls",
      "jedi_language_server",
      "lua_ls",
      "clangd",
      "ts_ls",
      "vuels",
      "kotlin_language_server",
    })
  end,
}
