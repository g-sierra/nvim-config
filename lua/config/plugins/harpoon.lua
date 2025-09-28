return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      local toggle_opts = {
        border = "rounded",
        title = " Harpoon ",
        title_pos = "center",
        ui_width_ratio = 0.40,
      }

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      -- Mappings
      vim.keymap.set("n", "<leader>ha", function()
        harpoon:list():add()
      end, { desc = "Add file to Harpoon list" })
      vim.keymap.set("n", "<leader>he", function()
        harpoon.ui:toggle_quick_menu(harpoon:list(), toggle_opts)
      end, { desc = "Toggle Harpoon quick menu" })

      vim.keymap.set("n", "<M-1>", function()
        harpoon:list():select(1)
      end, { desc = "Go to Harpoon file 1" })
      vim.keymap.set("n", "<M-2>", function()
        harpoon:list():select(2)
      end, { desc = "Go to Harpoon file 2" })
      vim.keymap.set("n", "<M-3>", function()
        harpoon:list():select(3)
      end, { desc = "Go to Harpoon file 3" })
      vim.keymap.set("n", "<M-4>", function()
        harpoon:list():select(4)
      end, { desc = "Go to Harpoon file 4" })

      vim.keymap.set("n", "<leader>hp", function()
        harpoon:list():prev()
      end, { desc = "Go to previous Harpoon file" })
      vim.keymap.set("n", "<leader>hn", function()
        harpoon:list():next()
      end, { desc = "Go to next Harpoon file" })
    end,
  },
}
