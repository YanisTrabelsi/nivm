local statuscolumn = {}
local colors = {}

colors["primary"] = "#e2a7f4"
colors["secondary"] = "#b9f4a9"
statuscolumn.numbers = function()
	return "%#StatusColumnNumbers#%l"
end

statuscolumn.render = function()
	statuscolumn.border = function()
		-- ˫
		return "%#StatusColumnBorder# ፤ "
	end

	vim.api.nvim_set_hl(0, "StatusColumnNumbers", { fg = colors.primary })
	vim.api.nvim_set_hl(0, "StatusColumnBorder", { fg = colors.secondary })

	local left = ""
	local middle = statuscolumn.numbers()
	local right = statuscolumn.border()
	return left .. middle .. right
end

return statuscolumn
