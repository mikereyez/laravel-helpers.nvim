local M = {}

local wk = require("which-key")

function M.setup(opts)
	opts = opts or {}

	wk.register({
		["<leader>L"] = { name = "Laravel helper functions" },
		["<leader>La"] = { name = "[A]dd" },
		["<leader>Lac"] = { "<cmd>LaravelCreateClass<cr>", "Add [C]lass" },
		["<leader>Lae"] = { "<cmd>LaravelCreateEnum<cr>", "Add [E]num" },
		["<leader>Lai"] = { "<cmd>LaravelCreateInterface<cr>", "Add [I]nterface" },
		["<leader>Lam"] = { "<cmd>LaravelCreateModel<cr>", "Add [M]odel" },
		["<leader>Li"] = { name = "[I]nsert" },
		["<leader>Lic"] = { "<cmd>LaravelInsertConstruct<cr>", "Insert [C]onstruct" },
		["<leader>Lip"] = { "<cmd>LaravelInsertProperty<cr>", "Insert [P]roperty" },
	})
end

vim.api.nvim_create_user_command("LaravelCreateClass", function()
	print("Hello class!")
end, { force = true })

vim.api.nvim_create_user_command("LaravelCreateInterface", function()
	print("Hello interface!")
end, { force = true })

vim.api.nvim_create_user_command("LaravelCreateEnum", function()
	print("Hello enum!")
end, { force = true })

vim.api.nvim_create_user_command("LaravelCreateModel", function()
	print("Hello model!")
end, { force = true })

vim.api.nvim_create_user_command("LaravelInsertConstruct", function()
	print("Hello construct insertion!")
end, { force = true })

vim.api.nvim_create_user_command("LaravelInsertProperty", function()
	print("Hello propery insertion!")
end, { force = true })

return M
