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
      { "<C-e>", "<cmd>Oil<CR>", desc = "open oil" },
    },
  },
  {
    "refractalize/oil-git-status.nvim",
    dependencies = { "stevearc/oil.nvim" },
    opts = {},
  },
}
