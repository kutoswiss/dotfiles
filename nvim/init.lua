require("custom.globals")
require("custom.keymaps")
require("custom.autocommands")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

local plugins = {
	require("plugins.vim-sleuth"),
	require("plugins.comment"),
	require("plugins.gitsigns"),
	require("plugins.which-key"),
	require("plugins.telescope"),
	require("plugins.nvim-lspconfig"),
	require("plugins.nvim-cmp"),
	require("plugins.tokyonight"),
	-- require("plugins.cyberdream"),
	-- require("plugins.gruvbox"),
	require("plugins.todo-comments"),
	require("plugins.mini"),
	require("plugins.neo-tree"),
	require("plugins.toggleterm"),
	require("plugins.conform"),
	require("plugins.copilot"),
	require("plugins.luarocks"),
}

local opts = {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
}

require("lazy").setup(plugins, opts)
