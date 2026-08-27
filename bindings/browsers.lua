----------------------------
----  BROWSER BINDINGS  ----
----------------------------
local mainMod = "SUPER"

hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("firefox"))    -- launch Firefox
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("chromium"))   -- launch Chromium
