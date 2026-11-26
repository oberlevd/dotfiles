return {
  { "mason-org/mason.nvim", enabled = false },
  { "mason-org/mason-lspconfig.nvim", enabled = false },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = { mason = false },
        nixd = { mason = false },
        ts_ls = { mason = false },
        pyright = { mason = false },
        ruff = { mason = false },
        rust_analyzer = { mason = false },
        gopls = { mason = false },
      },
    },
  },
}
