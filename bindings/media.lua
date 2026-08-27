-------------------------------
----  MEDIA KEYS BINDINGS  ----
-------------------------------

local mainMod = "SUPER"

-- Media Keys
hl.bind(mainMod .. " + period",    hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind(mainMod .. " + semicolon", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(mainMod .. " + comma",     hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Volume Keys
hl.bind(mainMod .. " + equal", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind(mainMod .. " + minus", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
