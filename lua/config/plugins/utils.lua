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
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        delete = { show_count = true },
        topdelete = { show_count = true },
      },
      count_chars = {
        [1] = "₁",
        [2] = "₂",
        [3] = "₃",
        [4] = "₄",
        [5] = "₅",
        [6] = "₆",
        [7] = "₇",
        [8] = "₈",
        [9] = "₉",
        ["+"] = "∙", -- shown when count ≥ 10
      },
      on_attach = function(bufnr)
        local gitsigns = require("gitsigns")

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map("n", "]c", function()
          if vim.wo.diff then
            vim.cmd.normal({ "]c", bang = true })
          else
            gitsigns.nav_hunk("next")
          end
        end, { desc = "Jump to next git [c]hange" })

        map("n", "[c", function()
          if vim.wo.diff then
            vim.cmd.normal({ "[c", bang = true })
          else
            gitsigns.nav_hunk("prev")
          end
        end, { desc = "Jump to previous git [c]hange" })

        -- Actions
        -- visual mode
        map("v", "<leader>ghs", function()
          gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "git [s]tage hunk" })
        map("v", "<leader>ghr", function()
          gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, { desc = "git [r]eset hunk" })
        -- normal mode
        map("n", "<leader>ghs", gitsigns.stage_hunk, { desc = "git [s]tage hunk" })
        map("n", "<leader>ghr", gitsigns.reset_hunk, { desc = "git [r]eset hunk" })
        map("n", "<leader>ghS", gitsigns.stage_buffer, { desc = "git [S]tage buffer" })
        map("n", "<leader>ghu", gitsigns.stage_hunk, { desc = "git [u]ndo stage hunk" })
        map("n", "<leader>ghR", gitsigns.reset_buffer, { desc = "git [R]eset buffer" })
        map("n", "<leader>ghp", gitsigns.preview_hunk, { desc = "git [p]review hunk" })
        map("n", "<leader>ghb", gitsigns.blame_line, { desc = "git [b]lame line" })
        map("n", "<leader>ghd", gitsigns.diffthis, { desc = "git [d]iff against index" })
        map("n", "<leader>ghD", function()
          gitsigns.diffthis("@")
        end, { desc = "git [D]iff against last commit" })
        -- Toggles
        map("n", "<leader>gtb", gitsigns.toggle_current_line_blame, { desc = "[T]oggle git show [b]lame line" })
        map("n", "<leader>gtD", gitsigns.preview_hunk_inline, { desc = "[T]oggle git show [D]eleted" })
      end,
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
