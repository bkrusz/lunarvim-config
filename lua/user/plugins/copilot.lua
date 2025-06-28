table.insert(lvim.plugins, 
  {
    "zbirenbaum/copilot.lua",
    config = function ()
      require("copilot").setup({
        panel = {
          enabled = false,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<A-CR>"
          },
          layout = {
            position = "bottom",
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = false,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<A-Tab>",
            accept_word = "<A-w>",
            accept_line = "<A-l>",
            next = "A-]",
            prev = "A-[",
            dismiss = "A-d"
          },
        },
        filetypes = {
          yaml = false,
          markdown = true,
          help = true,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false
        },
        copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v22.17.0/bin/node",
        server_opts_overrides = {},
      })
    end
  }
)

table.insert(lvim.plugins,
  {
    "zbirenbaum/copilot-cmp",
    config = function ()
      require("copilot_cmp").setup()
    end
  }
)

table.insert(lvim.plugins,
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    dependencies = {
      "zbirenbaum/copilot.lua",
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    opts = {},
    keys = {}
  }
)
