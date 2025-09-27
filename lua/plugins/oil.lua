return {
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    lazy = false,
    opts = {
      win_options = {
        signcolumn = "yes:2",
      },
    },
    keys = {
      {
        "<C-e>",
        function()
          require("oil").toggle_float()
        end,
        desc = "open oil in parent directory"
      },
    },
  },
  {
    "refractalize/oil-git-status.nvim",
    dependencies = { "stevearc/oil.nvim" },
    opts = {},
  },
}
