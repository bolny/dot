local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Solarized Light (Gogh)'
config.enable_tab_bar = false
config.font = wezterm.font 'Drafting*Mono Nerd Font'
config.font_size = 14.0
config.default_prog = { '/opt/homebrew/bin/fish', '-l'}

return config
