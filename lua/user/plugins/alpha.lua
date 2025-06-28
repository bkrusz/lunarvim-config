local get_sections = function ()
  local header = {
    type = "text",
    val = {
"              ⣀⣀      ",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⡿⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀",
"⠀⠀⠀⢀⣠⣤⣤⣤⣀⣀⠈⠋⠉⣁⣠⣤⣤⣤⣀⡀⠀⠀",
"⠀⢠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀",
"⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠀",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀",
"⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀",
"⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁",
"⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀",
"⠀⠀⠀⠈⠙⢿⣿⣿⣿⠿⠟⠛⠻⠿⣿⣿⣿⡿⠋⠀⠀⠀",
    },
    opts = {
      position = "center",
      hl = "Label",
    },
  }

  local buttons = {
    entries = {
      { "p", " " .. " Projects",        "<cmd>Telescope projects<cr>" },
      { "f", " " .. " Find file",       "<cmd>Telescope find_files<cr>" },
      { "n", " " .. " New file",        "<cmd>ene!<cr>" },
      { "r", " " .. " Recent files",    "<cmd>Telescope oldfiles<cr>" },
      { "g", " " .. " Find text",       "<cmd>Telescope live_grep<cr>" },
      { "c", " " .. " Config",          "<cmd>edit " .. require("lvim.config"):get_user_config_path() .. " <cr>" },
      { "s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]] },
      { "l", "󰒲 " .. " Lazy",            "<cmd>Lazy<cr>" },
      { "q", " " .. " Quit",            "<cmd>qa<cr>" },
    },
    opts = {
      hl_shortcut = "Include",
    }
  }

  return {
    header = header,
    buttons = buttons,
  }
end

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard = { config = {}, section = get_sections()}
