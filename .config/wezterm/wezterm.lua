local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'CommitMono'
config.font_size = 14
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

return config