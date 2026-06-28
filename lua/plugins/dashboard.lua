return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	config = function()
		local header = {

			"          ▄████████████▄            ",
			"        ▄███████████████            ",
			"       ███████████████████          ",
			"          ████  ██████  ███         ",
			"          ████  ██████  ███         ",
			"          █████████████████         ",
			"          ██████████ ██████         ",
			"          █████████████████         ",
			"           ▀███  ███▀ ▀███          ",
			"                                    ",
			"            ██                      ",
			"  ▄▄ ▄▄▄   ▄▄▄  ▄▄▄▄ ▄▄▄ ▄▄ ▄▄ ▄▄   ",
			"   ██  ██   ██   ▀█▄  █   ██ ██ ██  ",
			"   ██  ██   ██    ▀█▄█    ██ ██ ██  ",
			"  ▄██▄ ██▄ ▄██▄    ▀█    ▄██ ██ ██▄ ",
			"                                    ",
			"              ~ boo ~               ",
			"                                    ",
		}
		-- Hauteur totale du contenu (header + center + footer)
		-- center : 5 items * 2 lignes chacun = 10, + separateurs ~ 13
		local content_height = #header + 13 + 3
		local padding = math.floor((vim.o.lines - content_height) / 2)
		padding = math.max(0, padding)

		local padded_header = {}
		for _ = 1, padding do
			table.insert(padded_header, "")
		end
		for _, line in ipairs(header) do
			table.insert(padded_header, line)
		end
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = padded_header,
				center = {
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Find file",
						desc_hl = "String",
						key = "f",
						key_hl = "Number",
						key_format = "%s",
						action = "Telescope find_files",
					},
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Recent files",
						desc_hl = "String",
						key = "r",
						key_hl = "Number",
						key_format = "%s",
						action = "Telescope oldfiles",
					},
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Grep",
						desc_hl = "String",
						key = "g",
						key_hl = "Number",
						key_format = "%s",
						action = "Telescope live_grep",
					},
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Update",
						desc_hl = "String",
						key = "u",
						key_hl = "Number",
						key_format = "%s",
						action = "Lazy update",
					},
					{
						icon = " ",
						icon_hl = "Title",
						desc = "Quit",
						desc_hl = "String",
						key = "q",
						key_hl = "Number",
						key_format = "%s",
						action = "qa",
					},
				},
				footer = { "wsh tema le fouuuteuur" }, --your footer
			},
		})
	end,
}
