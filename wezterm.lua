-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font
config.font_size = 14
config.line_height = 1.2
config.font = wezterm.font 'Cascadia Code'

-- Color scheme:
config.color_scheme = 'Shaman (Gogh)'

-- Appearance:
config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.window_background_image = 'C:/Users/Johan/Pictures/bakgrunder/wezterm.png'
config.window_background_image_hsb = {
	brightness = 0.3,
	hue = 1.0,
	saturation = 1.0,
}
--Other:
config.max_fps = 60


return config
