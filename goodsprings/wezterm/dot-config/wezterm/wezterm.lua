local wezterm = require("wezterm")
local config = {}

if wezterm.gui.get_appearance():find("Dark") then
    config.color_scheme = "Solarized Dark (Gogh)"
else
    config.color_scheme = "Solarized Light (Gogh)"
end

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS"
config.font = wezterm.font({ family = "Drafting*Mono Nerd Font" })
config.font_size = 14
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }

config.keys = {
    {
        key = "p",
        mods = "SUPER",
        action = wezterm.action.PaneSelect,
    },
}

return config
