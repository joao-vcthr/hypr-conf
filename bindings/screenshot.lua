------------------------------
----  SCREENSHOT BINDINGS  ----
------------------------------

local mainMod = "SUPER"

hl.bind("SUPER + SHIFT + S", hl.plugin.hyprcapture.open)

hl.bind("SUPER + SHIFT + W", function()
    hl.plugin.hyprcapture.open("window")
end)

hl.bind("SUPER + SHIFT + F", function()
    hl.plugin.hyprcapture.open("fullscreen")
end)
