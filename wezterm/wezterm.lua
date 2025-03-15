local wezterm = require 'wezterm'

return {
	-- font settings
	font = wezterm.font 'JetBrains Mono',
	font_size = 11.0,

	-- appearance
	hide_tab_bar_if_only_one_tab = true,
	hide_mouse_cursor_when_typing = true,
	window_decorations = 'RESIZE',
	enable_scroll_bar = false,
	window_padding = {
		left = 4, right = 0, top = 4, bottom = 0
	},

	-- disable WezTerm's built-in window/pane shortcuts
	keys = {
		{ key = "Enter", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "d", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "w", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "|", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "-", mods = "CTRL|SHIFT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "LeftArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "RightArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "UpArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action.DisableDefaultAssignment },
		{ key = "DownArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action.DisableDefaultAssignment },
	},
}
