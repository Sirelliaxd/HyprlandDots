---   [###############]
---   [ LOOK AND FEEL ]
---   [###############]

hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 17,

		border_size = 1,

		col = {
			active_border = ActiveBorder,
			inactive_border = InactiveBorder,
		},

		resize_on_border = true,

		allow_tearing = false,
	},

	decoration = {
		rounding = 5,
		rounding_power = 2,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 15,
			render_power = 3,
			color = Shadow,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 4,
			vibrancy = 0.1696,
			ignore_opacity = true,
		},
	},

	animations = {
		enabled = true,
	},

	misc = {
		force_default_wallpaper = -1,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})
