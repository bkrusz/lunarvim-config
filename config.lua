reload('user.plugins')
reload('user.lsp')
reload('user.colorschemes')
reload('user.keymaps')
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakat = [[\ \ ;:,!?]]
vim.wo.relativenumber = true

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
}
