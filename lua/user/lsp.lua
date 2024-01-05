vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "sourcekit-lsp" })
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.swift" }
vim.opt.conceallevel = 1
