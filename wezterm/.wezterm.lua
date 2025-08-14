-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Set powershell.exe (or pwsh.exe) as default on start
config.default_prog = { 'powershell.exe' } -- if on windows 10 replace for 'pwsh.exe'
 

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'
config.font_size = 10.0
config.enable_tab_bar = true

-- and finally, return the configuration to wezterm
return config
