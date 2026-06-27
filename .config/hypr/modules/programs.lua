---   [######################]
---   [ PROGRAMS & AUTOSTART ]
---   [######################]

-- { VARIABLES }
Terminal = "kitty"
FileManager = "kitty yazi"
Menu = "rofi -show drun"
Browser = "zen-browser"
SecondaryBrowser = "librewolf"
Notes = "kitty nvim ~/Notes/"
ScreenShot = "hyprshot -m region"
ScreenShotNoSave = "hyprshot -m region --clipboard-only"

-- { AUTOSTART }
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper & mako")
	hl.exec_cmd("udiskie  & nm-applet")
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("pipewire & pipewire-pulse")
	hl.exec_cmd("wireplumber")
	hl.exec_cmd("waybar")
	hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
	--	hl.exec_cmd("nwg-dock-hyprland -d -i 40")
end)
