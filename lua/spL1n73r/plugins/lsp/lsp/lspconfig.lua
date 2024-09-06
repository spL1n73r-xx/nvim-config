return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap
    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local opts = { buffer = args.buf, silent = true }
        opts.desc = "Show documentation"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)
        opts.desc = "See available code action"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
      end,
    })

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
    })

    lspconfig.rust_analyzer.setup({
      capabilities = capabilities,
      cmd = {
        "rustup",
        "run",
        "stable",
        "rust-analyzer",
      },
    })
  end,
}
