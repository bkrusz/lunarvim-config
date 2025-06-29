table.insert(lvim.plugins,
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function ()
      require("harpoon").setup()
    end
  }
)
