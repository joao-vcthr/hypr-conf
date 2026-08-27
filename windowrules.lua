-------------------------
----  WINDOWS RULES  ----
-------------------------

-- local float_apps = { "nwg-look", "pavucontrol-qt", "nm-connection-editor", "waypaper" }
-- for _, app in ipairs(float_apps) do
--     hl.window_rule({
--         name  = "float-" .. app,
--         match = { class = app },
--         float = true,
--     })
-- end

-- Browsers -> Workspace 1
local browsers = { "firefox", "chromium" }
for _, b in ipairs(browsers) do
    hl.window_rule({
        name  = "workspace-browsers-" .. b,
        match = { class = b },
        workspace = "1",
    })
end

-- Editors and IDEs -> Workspace 2
local editors = { "dev.zed.Zed", "jetbrains-rustrover", "jetbrains-idea", "jetbrains-clion", "jetbrains-goland" }
for _, e in ipairs(editors) do
    hl.window_rule({
        name  = "workspace-editors-" .. e,
        match = { class = e },
        workspace = "2",
    })
end

-- Terminal -> Workspace 3
hl.window_rule({
    name  = "workspace-terminal",
    match = { class = "Alacritty" },
    workspace = "3",
})

-- AIs -> Workspace 4
local ai_apps = { "chrome-gemini.google.com__app.*", "chrome-chatgpt.com.*", "chrome-claude.ai.*" }
for _, ai in ipairs(ai_apps) do
    hl.window_rule({
        name  = "workspace-ai-" .. ai:sub(1, 10), -- Nome encurtado para o log
        match = { class = ai },
        workspace = "4",
    })
end

-- Productivity -> Workspace 5
local productivity = { "md.obsidian.Obsidian", "chrome-app.todoist.com.*", "chrome-outlook.live.com.*", "chrome-drive.google.com.*" }
for _, p in ipairs(productivity) do
    hl.window_rule({
        name  = "workspace-productivity-" .. p:sub(1, 10),
        match = { class = p },
        workspace = "5",
    })
end

-- Media -> Workspaces 7 e 8
hl.window_rule({
    name  = "workspace-yt-music",
    match = { class = "chrome-music.youtube.com.*" },
    workspace = "7",
})

hl.window_rule({
    name  = "workspace-yt-video",
    match = { class = "chrome-www.youtube.com.*" },
    workspace = "8",
})

hl.window_rule({
    name  = "workspace-mpv",
    match = { class = "mpv" },
    workspace = "8",
})

-- Read (Kindle) -> Workspace 9
hl.window_rule({
    name  = "workspace-kindle",
    match = { class = "chrome-ler.amazon.com.br.*" },
    workspace = "9",
})

-- LibreOffice -> Workspace 10
local lo_apps = { "startcenter", "writer", "calc", "draw", "impress", "math", "base" }
for _, lo in ipairs(lo_apps) do
    hl.window_rule({
        name  = "workspace-libreoffice-" .. lo,
        match = { class = "libreoffice-" .. lo },
        workspace = "10",
    })
end

-- File Manager -> Workspace 11
hl.window_rule({
    name  = "workspace-dolphin",
    match = { class = "org.kde.dolphin" },
    workspace = "11",
})
