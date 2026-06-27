---   [#######################]
---   [ ENVIRONMENT VARIABLES ]
---   [#######################]

--    ###{ cursor }###
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

--    ###{ toolkit backend }###
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

--    ###{ XDG }##
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

--    ###{ Qt }###
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_QPA_PLATFORM", "wayland:xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt4ct")

---   ###{ nvidia variables }###
-- { force GBM as a backend }
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
-- { Hardware acceleration }
hl.env("LIBVA_DRIVER_NAME", "nvidia")

hl.env("AQ_DRM_DEVICES", "/dev/dri/card1:/dev/dri/card2")

-- ###{HYPRSHOT DIR}
hl.env("HYPRSHOT_DIR", "/home/stella/Pictures/Screenshots/")

hl.config({ xwayland = { force_zero_scaling = true } })
