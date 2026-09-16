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

-- Code -> Workspace 2
local editors = { "code", "jetbrains-rustrover", "jetbrains-idea", "jetbrains-clion", "jetbrains-goland", "chrome-github.com__.*" }
for _, e in ipairs(editors) do
    hl.window_rule({
        name  = "code-" .. e,
        match = { class = e },
        workspace = "2",
    })
end

-- Terminal -> Workspace 3
hl.window_rule({
    name  = "workspace-terminal",
    match = { class = "com.mitchellh.ghostty" },
    workspace = "3",
})

-- AIs -> Workspace 4
local ai_apps = { "chrome-gemini.google.com__app.*", "chrome-chatgpt.com.*", "chrome-claude.ai.*", "chrome-grok.com.*" }
for _, ai in ipairs(ai_apps) do
    hl.window_rule({
        name  = "workspace-ai-" .. ai:sub(1, 10), -- Nome encurtado para o log
        match = { class = ai },
        workspace = "4",
    })
end

-- Productivity -> Workspace 5
local productivity = { "md.obsidian.Obsidian", "chrome-app.todoist.com.*", "chrome-outlook.live.com.*", "chrome-drive.google.com.*", "chrome-mail.google.com.*" }
for _, p in ipairs(productivity) do
    hl.window_rule({
        name  = "workspace-productivity-" .. p:sub(1, 10),
        match = { class = p },
        workspace = "5",
    })
end

-- Music -> Workspace 6
hl.window_rule({
    name  = "workspace-music",
    match = { class = "chrome-music.youtube.com.*" },
    workspace = "6",
})

-- YouTube -> Workspace 8
hl.window_rule({
    name  = "workspace-yt",
    match = { class = "chrome-www.youtube.com.*" },
    workspace = "7",
})

--Multimedia -> Workspace 9
local multimedia = { "mpv", "imv"}
for _, m in ipairs(multimedia) do
    hl.window_rule({
        name  = "workspace-multimedia-" .. m:sub(1, 10),
        match = { class = m },
        workspace = "8",
    })
end

-- Office -> Workspace 10
local o_apps = { "startcenter", "writer", "calc", "draw", "impress", "math", "base", "org.pwmt.zathura", "Stirling-PDF" }
for _, o in ipairs(o_apps) do
    hl.window_rule({
        name  = "workspace-office-" .. o:sub(1, 10),
        match = { class = o },
        workspace = "9",
    })
end
