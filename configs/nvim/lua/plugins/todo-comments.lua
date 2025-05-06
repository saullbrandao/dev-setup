-- Highlight todo, notes, etc in comments
return {
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
		keys = {
			{
				"<leader>st",
				function()
					require("snacks").picker.todo_comments()
				end,
				desc = "Todo",
			},
		},
	},
}
