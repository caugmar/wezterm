local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.initial_cols = 100
config.initial_rows = 30
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 12
config.color_scheme = "GruvboxDarkHard"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 4,
	right = 4,
	top = 4,
	bottom = 4,
}

config.keys = {
	-- Turn off the default CMD-m Hide action, allowing CMD-m to
	-- be potentially recognized and handled by the tab
	{
		key = "/",
		mods = "ALT|CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "ALT|CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "LeftArrow",
		mods = "SHIFT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key = "LeftArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "SHIFT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
	},
	{
		key = "RightArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "SHIFT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key = "UpArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "SHIFT|CTRL",
		action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	},
	{
		key = "DownArrow",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
}

return config
