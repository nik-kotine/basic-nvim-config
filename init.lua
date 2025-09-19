vim.o.number = true -- enable line numbers
vim.o.wrap = false -- disable line wrapping
vim.o.tabstop = 4 -- tabsize is 4
vim.o.shiftwidth = 4 -- ^ ditto
vim.o.smartcase = true -- ignore case when search pattern is all lowercase
vim.o.ignorecase = true -- ^ ditto
vim.o.hlsearch = false -- clear search highlights after submit
vim.opt.smartindent = true -- auto indentation
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
-- vim.o.signcolumn = 'yes' -- enables gutter next to line numbers for plugin icons

-- theme
vim.cmd.colorscheme('habamax')

-- leader key
vim.g.mapleader = vim.keycode('<Space>')

-- lazy plugins
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
	"nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig",       -- Configuración de LSP
	{"Saghen/blink.cmp",version = "*"}
})

-- personal configs: delete if needed
vim.api.nvim_set_keymap("i", "\\{", "<", { noremap = true }) -- maps \{ to <
vim.api.nvim_set_keymap("i", "\\{{", "<<", { noremap = true }) -- maps \{ to <
vim.api.nvim_set_keymap("i", "\\}", ">", { noremap = true }) -- maps \}} to >
vim.api.nvim_set_keymap("i", "\\}}", ">>", { noremap = true }) -- maps \{{ to >>


vim.keymap.set("n", "qq", function() -- maps 'qq' for previous diagnostic
  vim.diagnostic.goto_prev({ severity = nil })  -- severity = nil == errors & warnings
end, { desc = "Previous diagnostic" })

vim.keymap.set("n", "ee", function() -- maps 'ee' for next diagnostic
  vim.diagnostic.goto_next({ severity = nil })
end, { desc = "Next diagnostic" })

require "blink-cmp".setup {
	completion = {documentation = {auto_show = true}}
}
vim.lsp.enable({"clangd"})
