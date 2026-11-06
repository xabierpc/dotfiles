-- Input configuration

hl.config({
    input = {
        kb_layout = "es",
        kb_variant = "",
        numlock_by_default = true,
        repeat_rate = 35,
        repeat_delay = 300,
        follow_mouse = 1,
        accel_profile = "flat", -- ratón sin aceleración
        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
            disable_while_typing = true,
            clickfinger_behavior = true,
        },
    },
})

-- El touchpad sí usa aceleración (flat se hace incómodo)
hl.device({
    name          = "ascp1200:00-093a:3016-touchpad",
    accel_profile = "adaptive",
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down",       action = "close" })
hl.gesture({ fingers = 3, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "left",       action = "float" })
