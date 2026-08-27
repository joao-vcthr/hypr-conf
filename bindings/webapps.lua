-----------------------------
----  WEB APPS BINDINGS  ----
-----------------------------

local mainMod = "SUPER"

-- Chromium Web Apps

-- Productivity
hl.bind("ALT + T", hl.dsp.exec_cmd('chromium --app="https://app.todoist.com/"'))
hl.bind("ALT + R", hl.dsp.exec_cmd('chromium --app="https://roadmap.sh/"'))
hl.bind("ALT + D", hl.dsp.exec_cmd('chromium  --app="https://drive.google.com/drive/my-drive"'))
hl.bind(mainMod .. " + ALT + G", hl.dsp.exec_cmd('chromium --app="https://github.com/"'))

-- AI
hl.bind("ALT + C", hl.dsp.exec_cmd('chromium --app="https://chatgpt.com/"'))
hl.bind("ALT + G", hl.dsp.exec_cmd('chromium  --app="https://gemini.google.com/app"'))
hl.bind(mainMod .. " + ALT + C", hl.dsp.exec_cmd('chromium --app="https://claude.ai/"'))

-- YouTube
hl.bind("ALT + M", hl.dsp.exec_cmd('chromium  --app="https://music.youtube.com/"'))
hl.bind("ALT + Y", hl.dsp.exec_cmd('chromium  --app="https://www.youtube.com/"'))
