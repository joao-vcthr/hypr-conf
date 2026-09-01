------------------------------
----  SCREENSHOT BINDINGS  ----
------------------------------

local mainMod = "SUPER"

hl.bind(mainMod .. " + SHIFT + S", hl.plugin.hyprcapture.open)

hl.bind(mainMod .. " + SHIFT + W", function()
    hl.plugin.hyprcapture.open("window")
end)

hl.bind(mainMod .. " + SHIFT + F", function()
    hl.plugin.hyprcapture.open("fullscreen")
end)
