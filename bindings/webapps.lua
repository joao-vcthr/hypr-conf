-----------------------------
----  WEB APPS BINDINGS  ----
-----------------------------

local mainMod = "SUPER"

-- Chromium Web Apps

-- Productivity
hl.bind("ALT + T", hl.dsp.exec_cmd('chromium --app="https://app.todoist.com/"')) -- Todoist 
hl.bind("ALT + D", hl.dsp.exec_cmd('chromium  --app="https://drive.google.com/drive/my-drive"')) -- Google Drive
hl.bind("ALT + H", hl.dsp.exec_cmd('chromium --app="https://github.com/"')) -- Github

-- AI
hl.bind("ALT + C", hl.dsp.exec_cmd('chromium --app="https://chatgpt.com/"')) -- ChatGPT
hl.bind("ALT + G", hl.dsp.exec_cmd('chromium --app="https://gemini.google.com/app"')) -- Google Gemini
hl.bind("ALT + A", hl.dsp.exec_cmd('chromium --app="https://claude.ai/"')) -- Claude
hl.bind("ALT + X", hl.dsp.exec_cmd('chromium --app="https://grok.com/"')) -- Grok 

-- YouTube
hl.bind("ALT + M", hl.dsp.exec_cmd('chromium  --app="https://music.youtube.com/"')) -- Youtube Music
hl.bind("ALT + Y", hl.dsp.exec_cmd('chromium  --app="https://www.youtube.com/"')) -- Youtube

-- Email
hl.bind("ALT + O", hl.dsp.exec_cmd('chromium --app="https://outlook.live.com/mail/"')) -- Outlook
hl.bind("ALT + E", hl.dsp.exec_cmd('chromium --app="https://mail.google.com/mail/u/0/#inbox"')) -- Gmail

-- Available Keys = B, F, I, J, L, N, P, Q, S, U, W, Z
