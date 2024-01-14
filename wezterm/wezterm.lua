local wezterm = require "wezterm"

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Tokyo Night"
  else
    return "Tokyo Night Day"
  end
end

config = {}
config.audible_bell = "Disabled"
  config.colors = {
	background = "#110f1e"
  }
  config.font_size = 16.0
  config.font = wezterm.font_with_fallback({
	  { family = "FiraCode Nerd Font", weight = "Bold" },
	  { family = "Fira Code Nerd Font", weight = "Bold" },
	  "Roboto Mono",
	  })
  config.enable_tab_bar = false
  config.window_decorations = "NONE"
  --  config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

return config
