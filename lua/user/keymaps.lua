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

lvim.builtin.which_key.mappings["X"] = {
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

lvim.builtin.which_key.mappings["c"] = {
  name = "CopilotChat",
  c = { "<cmd>CopilotChatToggle<cr>", "Toggle Chat Window" },
  t = { "<cmd>CopilotChatTests<cr>", "Generate Tests" },
  d = { "<cmd>CopilotChatDocs<cr>", "Add Documentation Documents" },
  r = { "<cmd>CopilotChatReview<cr>", "Review Selected Code" },
  o = { "<cmd>CopilotChatOptimize<cr>", }
}

lvim.builtin.which_key.mappings["j"] = {
  name = "jq",
  f = { "<cmd>%!jq<cr><cmd>setlocal filetype=json<cr>", "Format JSON" },
  s = { "<cmd>setlocal filetype=json<cr>", "Set Filetype to JSON" },
  l = { "<leader>VGgJ", "Make Single Line" },
  r = { "<cmd>%s/\\\\\"/\"/g<cr>", "Replace all \\\" with \"" },
}

lvim.builtin.which_key.mappings["S"] = { "<cmd>setlocal spell spelllang=en_us<cr>", "Spell Check" }

lvim.builtin.which_key.mappings["n"] = { "<cmd>enew<cr>", "New Tab" }

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<cr>", "Projects" }

vim.keymap.set('n', '<S-l>', function () vim.cmd("BufferLineCycleNext") end)
vim.keymap.set('n', '<S-h>', function () vim.cmd("BufferLineCyclePrev") end)

-- Local variable replace
vim.keymap.set('n', '<C-r>', function ()
  local new_variable_name = vim.fn.input("New variable name: ")
  vim.cmd.norm("*")
  vim.cmd("%s//" .. new_variable_name .. "/g")
end)

-- New typed file
vim.keymap.set('n', '<C-n>', function ()
  local file_type = vim.fn.input("File type: ")
  vim.cmd("enew")
  vim.cmd("setlocal filetype=" .. file_type)
end)

-- Harpoon
local harpoon = require("harpoon")
local harpoon_extensions = require("harpoon.extensions")
harpoon:setup()
vim.keymap.set('n', '<C-y>', function () harpoon:list():add() end)
vim.keymap.set('n', '<C-q>', function () harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set('n', '<C-w>', function () harpoon:list():select(1) end)
vim.keymap.set('n', '<C-e>', function () harpoon:list():select(2) end)
harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

