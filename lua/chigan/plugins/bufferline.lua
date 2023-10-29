return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			themable = true, -- | false, -- allows highlight groups to be overriden i.e. sets highlights as default
			numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
			close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
			right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
			left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
			middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
			indicator = {
				icon = "▎", -- this should be omitted if indicator style is not 'icon'
				style = "icon", --| 'underline' | 'none',
			},
			buffer_close_icon = "󰅖",
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",

			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separator = true, -- use a "true" to enable the default, or set your own character
				},
			},
			-- custom_areas = {
			-- 	right = function()
			-- 		local result = {}
			-- 		local seve = vim.diagnostic.severity
			-- 		local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
			-- 		local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
			-- 		local info = #vim.diagnostic.get(0, { severity = seve.INFO })
			-- 		local hint = #vim.diagnostic.get(0, { severity = seve.HINT })
			--
			-- 		if error ~= 0 then
			-- 			table.insert(result, { text = "  " .. error, fg = "#EC5241" })
			-- 		end
			--
			-- 		if warning ~= 0 then
			-- 			table.insert(result, { text = "  " .. warning, fg = "#EFB839" })
			-- 		end
			--
			-- 		if hint ~= 0 then
			-- 			table.insert(result, { text = "  " .. hint, fg = "#A3BA5E" })
			-- 		end
			--
			-- 		if info ~= 0 then
			-- 			table.insert(result, { text = "  " .. info, fg = "#7EA9A7" })
			-- 		end
			-- 		return result
			-- 	end,
			-- },
			diagnostics = "nvim_lsp", --| false | "coc",
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local s = " "
				for e, n in pairs(diagnostics_dict) do
					local sym = e == "error" and " " or (e == "warning" and " " or "")
					s = s .. n .. sym
				end
				return s
			end,
			diagnostics_update_in_insert = true,
			color_icons = true, --| false, -- whether or not to add the filetype icon highlights
			show_buffer_icons = true, -- | false, -- disable filetype icons for buffers
			show_buffer_close_icons = true, -- | false,
			show_close_icon = true, --| false,
			show_tab_indicators = true, --| false,
			show_duplicate_prefix = true, --| false,
			enforce_regular_tabs = false, --| true,
			always_show_bufferline = true, --| false,

			mode = "buffers",
			separator_style = "slant",
			-- hover = {
			-- 	enabled = true,
			-- 	delay = 200,
			-- 	reveal = { "close" },
			-- },
		},
	},
}
