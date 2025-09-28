return {
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      vim.api.nvim_set_hl(0, "IblScope", { fg = "#fe8019" })

      require("ibl").setup({
        indent = {
          char = "▏",
        },
        scope = {
          enabled = true,
          highlight = "IblScope",
        },
      })
    end,
  },
}
