-- init.lua

-- BASIC SETTINGS
vim.opt.compatible = false
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"

-- INDENTATION
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

-- UI
vim.opt.number = true
vim.opt.wildmode = { "longest", "list" }
-- vim.opt.colorcolumn = "80" -- Uncomment for 80-column marker
vim.opt.syntax = "on"
vim.opt.clipboard = "unnamedplus"
vim.opt.ttyfast = true
-- vim.opt.cursorline = true
-- vim.opt.spell = true
-- vim.opt.swapfile = false
-- vim.opt.backupdir = vim.fn.expand("~/.cache/vim")

-- FILETYPE + SYNTAX
vim.cmd("filetype plugin indent on")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

-- TRANSPARENT BACKGROUNDS AND UI COLORS
local set_hl = vim.api.nvim_set_hl

set_hl(0, "NonText", { bg = "NONE" , fg = "#585B70"})
set_hl(0, "Normal", { bg = "NONE" })
set_hl(0, "NormalNC", { bg = "NONE" })
set_hl(0, "SignColumn", { bg = "NONE", fg = "NONE" })

set_hl(0, "Pmenu", { bg = "NONE", fg = "NONE" })
set_hl(0, "FloatBorder", { bg = "NONE", fg = "#89B4FA" })
set_hl(0, "NormalFloat", { bg = "NONE", fg = "NONE" })
set_hl(0, "TabLine", { bg = "NONE", fg = "NONE" })
set_hl(0, "EndOfBuffer", { bg = "NONE", fg = "#585B70" })

-- Sets
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- REMAPPINGS
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("i", "jj", "<Esc><right>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>c", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gc<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", ":!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics in float" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Show diagnostics in location list" })



-- Load packer
require("Ghost")

