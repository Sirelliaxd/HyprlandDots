---   [#############]
---   [ KEYBINDINGS ]
---   [#############]

--  { Windows key as mainMod }
local mainMod = "SUPER"

--  { close Hyprland }
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

---     ##### [ APPS ] #####

--  { close window }
hl.bind(mainMod .. " + C", hl.dsp.window.close())

-- { reload waybar }
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("killall waybar & pkill cava && waybar"))

-- { launch app }
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(Terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(FileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(Menu))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(Browser))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd(SecondaryBrowser))

-- { toggle floating }
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

---     ##### [ ROFI ] #####
hl.bind(mainMod .. " + period", hl.dsp.exec_cmd("~/.config/rofi/scripts/emoji-selector.sh"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("~/.config/rofi/scripts/clipboard.sh"))
hl.bind("XF86Presentation", hl.dsp.exec_cmd("~/.config/rofi/scripts/cheatsheet.sh"))

---     ##### [ WINDOWS ] #####

-- { dwindle }
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.layout("togglesplit"))

-- { move focus with Mod/arrowkeys }
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- { move focus with Mod/VimBinds }
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

-- { move window with Mod/arrowkeys }
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

-- { move window with Mod/VimBinds }
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- { toggle fullscreen }
hl.bind("F11", hl.dsp.window.fullscreen())

-- { Move/resize windows with mainMod + LMB/RMB and dragging }
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

---     ##### [ WORKSPACES ] #####

-- { witch workspaces with mainMod + [0-9] }
-- { Move active window to a workspace with mainMod + SHIFT + [0-9] }
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i, on_current_monitor = true }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- { Scroll through existing workspaces with mainMod + scroll }
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

---     ##### [ MULTIMEDIA ] #####

-- { Laptop multimedia keys for volume and LCD brightness }

hl.bind(
	"ALT + up",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind("ALT + down", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("F8", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("F7", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("ALT + right", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("ALT + left", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)

-- { Requires playerctl }
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
