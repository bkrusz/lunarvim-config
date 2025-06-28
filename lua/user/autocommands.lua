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
