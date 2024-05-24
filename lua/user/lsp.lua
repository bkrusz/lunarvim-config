vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "sourcekit-lsp" })
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.swift", "*.js" }
vim.opt.conceallevel = 1
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    underline = true,
    virtual_text = {
      spacing = 5,
      severity = { min = vim.diagnostic.severity.WARN },
    },
    update_in_insert = true,
  }
)
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.ensure_installed = { "java" }
