return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed =
          {
            "clangd",
            "cssls",
            "lua_ls",
            "rust_analyzer",
            "gopls",
            "html",
            "htmx",
            "jsonls",
            "tsserver",
            "intelephense",
            "sqls",
            "solargraph"
          }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({capabilities = capabilities})
      lspconfig.cssls.setup({capabilities = capabilities})
      lspconfig.lua_ls.setup({capabilities = capabilities})
      lspconfig.rust_analyzer.setup({capabilities = capabilities})
      lspconfig.gopls.setup({capabilities = capabilities})
      lspconfig.html.setup({capabilities = capabilities})
      lspconfig.htmx.setup({capabilities = capabilities})
      lspconfig.jsonls.setup({capabilities = capabilities})
      lspconfig.tsserver.setup({capabilities = capabilities})
      lspconfig.intelephense.setup({capabilities = capabilities})
      lspconfig.sqls.setup({capabilities = capabilities})
      lspconfig.solargraph.setup({capabilities = capabilities})


      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
