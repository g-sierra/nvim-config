return {
  "barrett-ruth/live-server.nvim",
  build = "npm add -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = true,
  keys = {
    {
      "<leader>lso",
      "<cmd>LiveServerStart<cr>",
      desc = "Open Live Server",
    },
    {
      "<leader>lsc",
      "<cmd>LiveServerStop<cr>",
      desc = "Close Live Server",
    },
  },
}
