table.insert(lvim.plugins,
  {
    "norcalli/nvim-colorizer.lua",
    config = function ()
      require("colorizer").setup()
    end
  }
)
