---------------------------------
----  CODE EDITORS BINDINGS  ----
---------------------------------
local mainMod = "SUPER"

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("alacritty" .. " -e " .. "nvim"))   --launch Nvim using Alacritty
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("zeditor"))   -- launch Zed
