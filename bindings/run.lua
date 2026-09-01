local mainMod = "SUPER"
local terminal = "ghostty"

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("nautilus"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obsidian"))
-- hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd(terminal .. " -e " .. "yazi"))
