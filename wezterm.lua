local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Font
config.font_size = 14
config.line_height = 1.2
config.font = wezterm.font("Cascadia Code")

-- Color scheme:
config.color_scheme = "Alien Blood (Gogh)"

-- Appearance:
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_background_image = "C:/Users/Johan/Pictures/bakgrunder/wezterm.png"
config.window_background_image_hsb = {
	brightness = 0.3,
	hue = 1.0,
	saturation = 1.0,
}
--Other:
config.max_fps = 60
--KeyBinds
config.keys = {
	{
		key = "t",
		mods = "CTRL",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		key = "Tab",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		key = "p",
		mods = "CTRL",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
	{
		key = "y",
		mods = "CTRL",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
	{
		key = "1",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendString("git add .\n"),
	},
	{
		key = "2",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendString("git commit -m"),
	},
	{
		key = "3",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendString("git push\n"),
	},
	{
		key = "4",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendString("git pull\n"),
	},
}

return config
