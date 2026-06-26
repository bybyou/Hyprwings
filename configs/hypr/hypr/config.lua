hl.config({

-- Animations
    animations = {
        enabled = true,

-- Keyboard
    },
    input = {
        kb_layout   = "fr(us), fr",
        kb_options  = "grp:alt_shift_toggle",
        follow_mouse = 1,
        sensitivity = 0,
    },

-- Decorations
    general = {
        border_size = 0,
    decoration = {
        rounding         = 25,
        active_opacity   = 0.95,
        inactive_opacity = 0.60,
        blur = {
            enabled           = true,
            xray              = false,
            special           = false,
            ignore_opacity    = true,
            new_optimizations = true,
            popups            = true,
            input_methods     = true,
            size              = 5,
            passes            = 2,
        },
        shadow = {
            enabled      = true,
            range        = 25,
            render_power = 5,
            color        = "rgba(00000066)",
        },
    },
})