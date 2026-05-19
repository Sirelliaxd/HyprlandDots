---   [#######################]
---   [ ENVIRONMENT VARIABLES ]
---   [#######################]

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

---   ###{ nvidia variables }###
-- { force GBM as a backend }
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
-- { Hardware acceleration }
hl.env("LIBVA_DRIVER_NAME", "nvidia")

-- hl.env("AQ_DRM_DEVICES", "$HOME/.config/hyprGPU/card")
-- env = WLR_DRM_DEVICES,$HOME/.config/hypr/cardNvidia:$HOME/.config/hypr/cardIntel
-- hl.env("WLR_DRM_DEVICES", "$HOME/.config/hypr/cardNvidia:$HOME/.config/hypr/cardIntel")
hl.env("AQ_DRM_DEVICES", "/dev/dri/card1:/dev/dri/card2")
