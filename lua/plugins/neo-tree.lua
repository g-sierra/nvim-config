return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
        require("neo-tree").setup({
            event_handlers = {
                {
                    event = "file_open_requested",
                    handler = function()
                        -- auto close
                        -- vim.cmd("Neotree close")
                        -- OR
                        require("neo-tree.command").execute({ action = "close" })
                    end,
                },
            },
        })
        vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal toggle<CR>", {})
    end,
}
