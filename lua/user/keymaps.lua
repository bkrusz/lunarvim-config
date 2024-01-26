lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=60 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}

lvim.builtin.which_key.mappings["o"] = {
  name = "Obsidian",
  o = { "<cmd>ObsidianQuickSwitch<cr>", "Quick switch" },
  n = { "<cmd>ObsidianNew<cr>", "Create new note" },
  f = { "<cmd>ObsidianFollowLink<cr>", "Follow note reference" },
  b = { "<cmd>ObsidianBacklinks<cr>", "List references to current buffer" },
  t = { "<cmd>ObsidianToday<cr>", "Open/create a daily note" },
  y = { "<cmd>ObsidianYesterday<cr>", "Open daily note for previous day" },
  s = { "<cmd>ObsidianSearch<cr>", "Search for a note" },
  l = { "<cmd>ObsidianLink<cr>", "Link text to a note" },
  L = { "<cmd>ObsidianLinkNew<cr>", "Link text to new note" },
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

