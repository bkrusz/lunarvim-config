lvim.plugins = {
  { "mfussenegger/nvim-jdtls" },
  { "bkrusz/melange-nvim" },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  -- {
  --   "aserowy/tmux.nvim",
  --   config = function ()
  --     return require("tmux").setup()
  --   end
  -- },
  {
    "wojciech-kulik/xcodebuild.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("xcodebuild").setup({
        -- put some options here or leave it empty to use default settings
      })
    end
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = false,
    ft = "markdown",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "plenary.nvim",
      -- "nvim-telescope/telescope.nvim"
      "junegunn/fzf",
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "PKM",
            path = "/Users/bailey/Library/Mobile Documents/iCloud~md~obsidian/Documents/PKM"
          }
        },
        daily_notes = {
          folder = "Daily Notes",
          date_format = "%Y-%m-%d",
          alias_format = "%B %-d, %Y",
          template = nil
        },
        completion = {
          nvim_cmp = true,
          min_chars = 1,
          new_notes_location = "current_dir",
          -- Mutually Exclusive options
          -- "[[Foo" completes to "[[notes/foo|Foo]]"
          prepend_note_path = true,
          -- "[[Foo" completes to "[[foo|Foo]]"
          prepend_note_id = false,
          -- "[[Foo" completes to "[[notes/foo]]"
          use_path_only = false
        },
        mappings = {},
        note_id_func = function(title)
          -- Create note IDs in a Zettlekasten format with a timestamp and a suffix
          -- In this case, a note with the title 'My new note' will be given an ID that looks like '1657296016-my-new-note'
          local suffix = ""
          if title ~= nil then
            -- If title is given, transform it into valid file name
            suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
          else
            -- If title is nil, just add 4 random uppercase letters to the suffix
            for _ = 1, 4 do
              suffix = suffix .. string.char(math.random(65, 90))
            end
          end
          return tostring(os.time()) .. "-" .. suffix
        end,
        disable_frontmatter = false,
        note_frontmatter_func = function(note)
          local out = { id = note.id, aliases = note.aliases, tags = note.tags }
          if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
            for k,v in pairs(note.metadata) do
              out[k] = v
            end
          end
          return out
        end,
        backlinks = {
          height = 10,
          wrap = true,
        },
        follow_url_func = function(url)
          vim.fn.jobstart({"open", url})
        end,
        -- Set to true to force ':ObsidianOpen' to bring the app to the foreground
        open_app_foreground = true,
        -- sort search results by "path", "modified", "accessed", or "created"
        sort_by = "modified",
        sort_reversed = true,
        -- Determines how certain commands open notes. The valid options are:
        -- 1. "current" (the default) - to always open in the current window
        -- 2. "vsplit" - to open in a vertical split if there's not already a vertical split
        -- 3. "hsplit" - to open in a horizontal split if there's not already a horizontal split
        open_notes_in = "current",
        ui = {
          enable = true,
          update_debounce = 200,
          checkboxes = {
            [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
            ["x"] = { char = "", hl_group = "ObsidianDone" },
            [">"] = { char = "", hl_group = "ObsidianRightArrow" },
            ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
            ["\\"] = { char = "󰏬", hl_group = "ObsidianInProgress" },
          },
          bullets = { char = "•", hl_group = "ObsidianBullet" },
          external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
          reference_text = { hl_group = "ObsidianRefText" },
          highlight_text = { hl_group = "ObsidianHighlightText" },
          tags = { hl_group = "ObsidianTag" },
          hl_groups = {
            ObsidianTodo = { bold = true, fg = "#f78c6c" },
            ObsidianDone = { bold = true, fg = "#03fc0b" },
            ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
            ObsidianTilde = { bold = true, fg = "#ff5370" },
            ObsidianInProgress = { bold = true, fg = "#fce803" },
            ObsidianRefText = { underline = true, fg = "#c792ea" },
            ObsidianExtLinkIcon = { fg = "#c792ea" },
            ObsidianTag = { italic = true, fg = "#89ddff" },
            ObsidianHighlightText = { bg = "#75662e" },
            ObsidianBullet = { bold = true, fg = "#d47766"}
          },
        },
        attachments = {
          img_folder = "assets/imgs",
          -- A function that determines the text to insert in the note when pasting an image
          --- @param client obsidian.Client
          --- @param path Path the absolute path to the image file
          --- @return string
          img_text_func = function(client, path)
            local link_path
            local vault_relative_path = client:vault_relative_path(path)
            if vault_relative_path ~= nil then
              -- Use relative path if the image is saved in the vault dir
              link_path = vault_relative_path
            else
              link_path = tostring(path)
            end
            local display_name = vim.fs.basename(link_path)
            return string.format("![%s](%s)", display_name, link_path)
          end,
        },
        yaml_parser = "native",
      })
    end
  },
  {
		"simrat39/rust-tools.nvim",
		config = function()
			-- local lsp_installer_servers = require("nvim-lsp-installer.servers")
			-- local _, requested_server = lsp_installer_servers.get_server("rust_analyzer")
			require("rust-tools").setup({
				tools = {
					autoSetHints = true,
					-- hover_with_actions = true,
					-- options same as lsp hover / vim.lsp.util.open_floating_preview()
					hover_actions = {

						-- the border that is used for the hover window
						-- see vim.api.nvim_open_win()
						border = {
							{ "╭", "FloatBorder" },
							{ "─", "FloatBorder" },
							{ "╮", "FloatBorder" },
							{ "│", "FloatBorder" },
							{ "╯", "FloatBorder" },
							{ "─", "FloatBorder" },
							{ "╰", "FloatBorder" },
							{ "│", "FloatBorder" },
						},

						-- whether the hover action window gets automatically focused
						-- default: false
						auto_focus = true,
					},
					runnables = {
						use_telescope = true,
					},
				},
				server = {
					on_init = require("lvim.lsp").common_on_init,
					on_attach = function(client, bufnr)
						require("lvim.lsp").common_on_attach(client, bufnr)
						local rt = require("rust-tools")
						-- Hover actions
						vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
						-- Code action groups
						vim.keymap.set("n", "<leader>lA", rt.code_action_group.code_action_group, { buffer = bufnr })
					end,
				},
			})
		end,
		ft = { "rust", "rs" },
	},
}
