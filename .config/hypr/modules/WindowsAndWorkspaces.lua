---   [########################]
---   [ WINDOWS AND WORKSPACES ]
---   [########################]

---   ##### [ WINDOW RULES ] #####

-- { Ignore maximize requests from all apps }
local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(true)

-- { Fix some dragging issues with XWayland }
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

-- { Kitty terminal opacity }
hl.window_rule({
	name = "kitty-opacity",
	match = { class = "kitty" },

	opacity = "0.85 0.75",
})

-- { alow opacity on zen }
hl.window_rule({
	name = "zen-opacity",
	match = { class = "zen" },

	opacity = 0.99999,
	no_blur = false,
})

-- { disable bordes on inactive windows }
hl.window_rule({
	name = "disable-inactive-borders",
	match = { focus = 0 },

	border_size = 0,
})

---   ##### [ LAYER RULES ] #####

-- { blur on notifications }
hl.layer_rule({
	match = { namespace = "notifications" },

	blur = true,
	ignore_alpha = true,
})

-- { rofi blur & disable animations}
hl.layer_rule({
	match = { namespace = "rofi" },

	blur = true,
	ignore_alpha = 0,
	no_anim = true,
})

-- { waybar blur & disable animations}
hl.layer_rule({
	match = { namespace = "waybar" },

	blur = true,
	ignore_alpha = 0,
	no_anim = true,
})
