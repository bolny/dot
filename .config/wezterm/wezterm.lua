local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Solarized Light (Gogh)'
config.font = wezterm.font 'Drafting* Mono'
config.font_size = 18
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

return config