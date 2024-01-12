local M = {}

local KeyBindings = {
	["<leader>l"] = { name = "Laravel helper functions" },
	["<leader>la"] = { name = "[A]dd" },
	["<leader>lac"] = { "<cmd>LaravelCreateClass<cr>", "Add [C]lass" },
	["<leader>lae"] = { "<cmd>LaravelCreateEnum<cr>", "Add [E]num" },
	["<leader>lai"] = { "<cmd>LaravelCreateInterface<cr>", "Add [I]nterface" },
	["<leader>lam"] = { "<cmd>LaravelCreateModel<cr>", "Add [M]odel" },
	["<leader>li"] = { name = "[I]nsert" },
	["<leader>lic"] = { "<cmd>LaravelInsertConstruct<cr>", "Insert [C]onstruct" },
	["<leader>lip"] = { "<cmd>LaravelInsertProperty<cr>", "Insert [P]roperty" },
}

function M.setup(opts)
	opts = opts or {}

	local HasWhichKey, WhichKey = pcall(require, "which-key")
	if HasWhichKey then
		WhichKey.register(KeyBindings)
	else
		SetupDefaultKeyMapping()
	end
end

function SetupDefaultKeyMapping()
	for i, v in pairs(KeyBindings) do
		local command = v[0]

		if command ~= nil then
			vim.keymap.set("n", i, v[0], { desc = v[1] })
		end
	end
end

local function requiref(module)
	require(module)
end

function IsModuleAvailable(module)
	return pcall(requiref, module)
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
