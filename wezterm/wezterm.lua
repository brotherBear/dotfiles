local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.selection_word_boundary = " {}[]()/\\\t\n\"'`.,;:"

config.color_scheme = "Gruvbox Dark (Gogh)"
-- config.color_scheme = "GruvboxDark"
-- config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Catppuccin Macchiato"
-- config.color_scheme = "Django"
-- config.color_scheme = "AdventureTime"
-- config.color_scheme = "Afterglow"
-- config.color_scheme = "Arthur"
-- config.color_scheme = "Ayu"
config.initial_cols = 120
config.initial_rows = 50

config.font_size = 14

return config
