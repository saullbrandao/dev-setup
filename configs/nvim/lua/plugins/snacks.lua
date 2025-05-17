return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	--@type snacks.Config
	opts = {
		picker = { enable = true },
		explorer = { enabled = true },
		indent = {
			enabled = true,
			char = "│",
		},
	},
	keys = {
		-- Top Pickers & Explorer
		{
			"<leader><space>",
			function()
				require("snacks").picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader>/",
			function()
				require("snacks").picker.grep()
			end,
			desc = "Grep",
		},
		{
			"<leader>e",
			function()
				require("snacks").explorer()
			end,
			desc = "File Explorer",
		},
		-- LSP
		{
			"gd",
			function()
				require("snacks").picker.lsp_definitions()
			end,
			desc = "Goto Definition",
		},
		{
			"gD",
			function()
				require("snacks").picker.lsp_declarations()
			end,
			desc = "Goto Declaration",
		},
		{
			"gr",
			function()
				require("snacks").picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"gI",
			function()
				require("snacks").picker.lsp_implementations()
			end,
			desc = "Goto Implementation",
		},
		{
			"gy",
			function()
				require("snacks").picker.lsp_type_definitions()
			end,
			desc = "Goto T[y]pe Definition",
		},
		{
			"<leader>ss",
			function()
				require("snacks").picker.lsp_symbols()
			end,
			desc = "LSP Symbols",
		},
		{
			"<leader>sS",
			function()
				require("snacks").picker.lsp_workspace_symbols()
			end,
			desc = "LSP Workspace Symbols",
		},
		{
			"<leader>ca",
			vim.lsp.buf.code_action,
			desc = "Code action",
		},
		{
			"<leader>cr",
			vim.lsp.buf.rename,
			desc = "Rename",
		},
		{
			"<leader>cR",
			function()
				require("snacks").rename.rename_file()
			end,
			desc = "Rename file",
		},
	},
}
