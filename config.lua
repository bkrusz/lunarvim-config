reload('user.plugins')
reload('user.lsp')
reload('user.colorschemes')
reload('user.keymaps')
vim.lsp.set_log_level(1)
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakat = [[\ \ ;:,!?]]
vim.wo.relativenumber = true

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
      pattern = "*.java",
      command = "setlocal ts=4 sw=4",
    },
  },
}

lvim.builtin.lualine.sections.lualine_b = { "branch", "diagnostics" }

