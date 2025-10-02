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
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      delay = 500,
    },
    keys = {
      {
        "<leader>wk",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
      { "<leader>ww", "<cmd>WhichKey<cr>", desc = "All Keymaps (which-key)" },
    },
  },
  {
    "ThePrimeagen/vim-be-good",
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      filetypes = { "*" },
      user_default_options = {
        css = true,
        css_fn = true,
        names = false,
        mode = "background",
        virtualtext = "■",
        virtualtext_inline = true,
        virtualtext_mode = "foreground",
      },
    },
    keys = {
      { "<leader>cc", "<cmd>ColorizerToggle<CR>", desc = "Toggle Colorizer" },
      { "<leader>cr", "<cmd>ColorizerReloadAllBuffers<CR>", desc = "Reload Colorizer" },
      { "<leader>ca", "<cmd>ColorizerAttachToBuffer<CR>", desc = "Attach Colorizer to Buffer" },
      { "<leader>cd", "<cmd>ColorizerDetachFromBuffer<CR>", desc = "Detach Colorizer from Buffer" },
    },
  },
}
