local mainMod = "SUPER"
local terminal = "ghostty"

-- TERMINAL BINDING
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal)) -- launch Terminal (Ghostty)

-- TUIs BINDINGS
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(terminal .. " -e " .. "yazi")) -- launch File Explorer (lf)
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(terminal .. " -e " .. "btop")) -- launch Bottom

-- BROWSER BINDINGS
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("brave")) -- launch Brave
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("chromium")) -- launch Chromium

-- CODE EDITORS AND IDEs BINDINGS
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(terminal .. " -e " .. "nvim")) --launch Nvim using Ghostty
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("code")) -- launch Visual Studio Code

-- PRODUCTIVITY APPS
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obsidian")) -- launch Obsidian

-- OFFFICE APPS
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("libreoffice")) -- launch LibreOffice
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("zathura")) -- launch Zathura
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("/usr/bin/Stirling-PDF")) -- launch Stirling-PDF

-- Available Keys = H, K, M, U, V, Y
