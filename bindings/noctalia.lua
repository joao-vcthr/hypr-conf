-----------------------------------
----  NOCTALIA SHELL BINDINGS  ----
-----------------------------------

local ipc = "noctalia msg"
local mainMod = "SUPER"

hl.bind(mainMod .. " + SPACE",        hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind(mainMod .. " + bracketleft",  hl.dsp.exec_cmd(ipc .. " panel-toggle control-center"))
hl.bind(mainMod .. " + bracketright", hl.dsp.exec_cmd(ipc .. " settings-toggle"))
