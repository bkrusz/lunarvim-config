vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "sourcekit-lsp" })
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.swift", "*.js" }
vim.opt.conceallevel = 1
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.ensure_installed = { "java" }
-- Terrible workaround to get .md files to use two space tabs
-- I forget why this was a problem in the first place
vim.api.nvim_create_augroup("lvim_user", {})
lvim.autocommands = {
  {
    { "BufEnter", "BufWinEnter" },
    {
      group = "lvim_user",
      pattern = "*.md",
      command = "setlocal ts=2 sw=2",
    },
  },
  {
    { "BufEnter", "BufWinEnter" },
    {
      group = "lvim_user",
      pattern = "*.md",
      command = "setlocal spell spelllang=en_us",
    },
  },
}
