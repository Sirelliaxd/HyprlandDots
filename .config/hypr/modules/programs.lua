---   [######################]
---   [ PROGRAMS & AUTOSTART ]
---   [######################]

-- { VARIABLES }
Terminal = "kitty"
FileManager = "kitty yazi"
Menu = "rofi -show drun"
Browser = "zen-browser"
SecondaryBrowser = "qutebrowser"

-- { AUTOSTART }
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper & waybar & mako")
	hl.exec_cmd("udiskie  & nm-applet")
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("pipewire & pipewire-pulse & wireplumber")
end)
