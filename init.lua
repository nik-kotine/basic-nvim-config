vim.o.number = true -- enable line numbers
vim.o.wrap = false -- disable line wrapping
vim.o.tabstop = 4 -- tabsize is 4
vim.o.shiftwidth = 4 -- ^ ditto
vim.o.smartcase = true -- ignore case when search pattern is all lowercase
vim.o.ignorecase = true -- ^ ditto
vim.o.hlsearch = false -- clear search highlights after submit
vim.opt.smartindent = true -- auto indentation
-- vim.o.signcolumn = 'yes' -- enables gutter next to line numbers for plugin icons

-- theme
vim.cmd.colorscheme('habamax')

-- leader key
vim.g.mapleader = vim.keycode('<Space>')

-- personal configs: delete if needed
vim.api.nvim_set_keymap("i", "\\{", "<", { noremap = true }) -- maps \{ to <
vim.api.nvim_set_keymap("i", "\\{{", "<<", { noremap = true }) -- maps \{ to <
vim.api.nvim_set_keymap("i", "\\}", ">", { noremap = true }) -- maps \}} to >
vim.api.nvim_set_keymap("i", "\\}}", ">>", { noremap = true }) -- maps \{{ to >>
