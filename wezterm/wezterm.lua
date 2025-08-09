local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- General Configuration

config.default_cwd = "~/git"

-- Look and Feel

config.font = wezterm.font("JetBrains Mono")
config.font_size = 11

config.window_background_opacity = 0.9

config.color_scheme = "Catppuccin Mocha"

return config
