-- Leader
vim.g.mapleader = " "

-- Insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- Buffers (where <CR> - is command end)
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Navigation by windows (where c - is ctrl, wincmd - is command)
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Splits (by horiz, by vertical)
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Neotree
--vim.keymap.set('n', '<leader>e', ':Neotree left toggle reveal<CR>')
vim.keymap.set("n", "<leader>e", ":Neotree float toggle reveal<CR>")

-- Bufferline (Tabs buffers)
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
--vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set("n", "<s-Tab>", ":BufferLineCloseOthers<CR>")

--	{vim.keymap.set('n', '<leader>x', 'BufferLinePickClose<CR>')
--vim.keymap.set('n', '<c-x>', 'BufferLineCloseOther<CR>')

-- Fillchars
vim.opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
}
