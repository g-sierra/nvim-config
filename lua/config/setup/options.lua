vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

vim.opt.wrap = false
vim.opt.linebreak = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 250 -- Decrease update time

vim.opt.splitright = true
vim.opt.splitbelow = true

-- visualize whitespace characters
-- vim.opt.list = true
-- vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split" -- Preview substitutions live, as you type!

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.opt.confirm = true

vim.opt.signcolumn = "yes"

vim.opt.termguicolors = true
vim.opt.winborder = "rounded"

vim.opt.shell = (function()
  local uname = vim.loop.os_uname().sysname
  if uname == "Windows_NT" then
    return "pwsh"
  elseif vim.fn.executable("zsh") == 1 then
    return "zsh"
  elseif vim.fn.executable("bash") == 1 then
    return "bash"
  else
    return "/bin/sh"
  end
end)()
