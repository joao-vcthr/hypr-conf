---------------------------
----  TILING BINDINGS  ----
---------------------------

local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + I", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

-- Foco com setas
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Workspaces e Movimentação (Loop de 1 a 10)
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,           hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,   hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + CTRL + 1", hl.dsp.exec_cmd("hyprctl dispatch movecurrentworkspacetomonitor 0"))
hl.bind(mainMod .. " + CTRL + 2", hl.dsp.exec_cmd("hyprctl dispatch movecurrentworkspacetomonitor 1"))

-- Alt+Tab para próximo workspace
hl.bind("ALT + TAB", hl.dsp.focus({ workspace = "e+1" }))
-- Scroll entre workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1"}))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1"}))

-- Mouse (Drag/Resize)
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
