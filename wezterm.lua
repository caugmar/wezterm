local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.initial_cols = 80
config.initial_rows = 25
config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 14
config.color_scheme = "GruvboxDarkHard"

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
}

return config
