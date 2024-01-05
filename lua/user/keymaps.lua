lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=60 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}

lvim.builtin.which_key.mappings["o"] = {
  name = "Obsidian",
  o = { "<cmd>ObsidianOpen<cr>", "Open note in app" },
  n = { "<cmd>ObsidianNew<cr>", "Create new note" },
  q = { "<cmd>ObsidianQuickSwitch<cr>", "Quick switch" },
  f = { "<cmd>ObsidianFollowLink<cr>", "Follow note reference" },
  b = { "<cmd>ObsidianBacklinks<cr>", "List references to current buffer" },
  t = { "<cmd>ObsidianToday<cr>", "Open/create a daily note" },
  y = { "<cmd>ObsidianYesterday<cr>", "Open daily note for previous day" },
  s = { "<cmd>ObsidianSearch<cr>", "Search for a note" },
  l = { "<cmd>ObsidianLink", "Link text to a note" },
  L = { "<cmd>ObsidianLinkNew", "Link text to new note" },
  i = { "<cmd>ObsidianPasteImg", "Paste image/Save to vault" },
  r = { "<cmd>ObsidianRename", "Rename note and update backlinks" },
}

lvim.builtin.which_key.mappings["x"] = {
  name = "Xcodebuild",
  i = { "<cmd>XcodebuildSetup<cr>", "Start Xcodebuild Setup" },
  l = { "<cmd>XcodebuildToggleLogs<cr>", "Toggle Xcodebuild Logs" },
  b = { "<cmd>XcodebuildBuild<cr>", "Build Project" },
  r = { "<cmd>XcodebuildBuildRun<cr>", "Build & Run Project" },
  t = { "<cmd>XcodebuildTest<cr>", "Run Tests" },
  T = { "<cmd>XcodebuildTestClass<cr>", "Run This Test Class" },
  f = { "<cmd>XcodebuildTestTarget<cr>", "Run This Test Target" },
  x = { "<cmd>XcodebuildPicker<cr>", "Show All Xcodebuild Actions" },
  d = { "<cmd>XcodebuildSelectDevice<cr>", "Select Device" },
  p = { "<cmd>XcodebuildSelectTestPlan<cr>", "Select Test Plan" },
  s = { "<cmd>XcodebuildFailingSnapshots<cr>", "Show Failing Snapshots" },
  c = { "<cmd>XcodebuildToggleCodeCoverage<cr>", "Toggle Code Coverage" },
  C = { "<cmd>XcodebuildShowCodeCoverageReport<cr>", "Show Code Coverage Report" },
  q = { "<cmd>Telescope quickfix<cr>", "Show QuickFix List" },
}
-- Lua
vim.keymap.set("n", "<leader>xl", "<cmd>XcodebuildToggleLogs<cr>", { desc = "Toggle Xcodebuild Logs" })
vim.keymap.set("n", "<leader>xb", "<cmd>XcodebuildBuild<cr>", { desc = "Build Project" })
vim.keymap.set("n", "<leader>xr", "<cmd>XcodebuildBuildRun<cr>", { desc = "Build & Run Project" })
vim.keymap.set("n", "<leader>xt", "<cmd>XcodebuildTest<cr>", { desc = "Run Tests" })
vim.keymap.set("n", "<leader>xT", "<cmd>XcodebuildTestClass<cr>", { desc = "Run This Test Class" })
vim.keymap.set("n", "<leader>xf", "<cmd>XcodebuildTestTarget<cr>", { desc = "Run This Test Target" })
vim.keymap.set("n", "<leader>X", "<cmd>XcodebuildPicker<cr>", { desc = "Show All Xcodebuild Actions" })
vim.keymap.set("n", "<leader>xd", "<cmd>XcodebuildSelectDevice<cr>", { desc = "Select Device" })
vim.keymap.set("n", "<leader>xp", "<cmd>XcodebuildSelectTestPlan<cr>", { desc = "Select Test Plan" })
vim.keymap.set("n", "<leader>xs", "<cmd>XcodebuildFailingSnapshots<cr>", { desc = "Show Failing Snapshots" })
vim.keymap.set("n", "<leader>xc", "<cmd>XcodebuildToggleCodeCoverage<cr>", { desc = "Toggle Code Coverage" })
vim.keymap.set("n", "<leader>xC", "<cmd>XcodebuildShowCodeCoverageReport<cr>", { desc = "Show Code Coverage Report" })
vim.keymap.set("n", "[r", "<cmd>XcodebuildJumpToPrevCoverage<cr>", { desc = "Jump To Previous Coverage" })
vim.keymap.set("n", "]r", "<cmd>XcodebuildJumpToNextCoverage<cr>", { desc = "Jump To Next Coverage" })
vim.keymap.set("n", "<leader>xq", "<cmd>Telescope quickfix<cr>", { desc = "Show QuickFix List" })
