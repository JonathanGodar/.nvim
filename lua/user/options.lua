local options = {
	backup = false,
	cmdheight = 2,
	fileencoding = "utf-8",
	hlsearch = true,

	signcolumn = "yes",
	number = true,
	relativenumber = true,
	updatetime = 300,

	termguicolors = true,

	showmode = false,
	showtabline = 2,

	timeoutlen = 100,                        -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true,

	-- completeopt="menu,menuone,noselect",

	smartindent = true,
	autoindent = true,
	shiftwidth=2,
	tabstop = 2,
	softtabstop = 2,

  splitbelow = true,
  splitright = true,
  swapfile = false,

	foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",

	cursorline = true,

  scrolloff = 8,
  sidescrolloff = 8,

	foldlevelstart = 20
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
