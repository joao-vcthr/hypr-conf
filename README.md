# hypr-conf

A generic, ready-to-use Hyprland configuration built to pair with [Noctalia](https://github.com/noctalia-dev/noctalia-shell). It covers a full Hyprland setup — not just keybindings, but monitors, input, look and feel, autostart, window/workspace rules, and more. Meant as a companion to my [arch-linux-guide](https://github.com/joao-vcthr/arch-linux-guide), for anyone who wants a working setup without configuring everything from scratch.

## Requirements

- **Hyprland >= 0.55.** These configs use Hyprland's [Lua configuration](https://wiki.hyprland.org/) format, introduced in that release. They will **not** work on older versions that only support the classic `hyprland.conf` syntax.
- **Noctalia**, used for the shell/panel bindings (`noctalia msg` IPC calls) and autostarted on launch.
- **AMD hardware.** This configuration is built and tested on an AMD Ryzen CPU + AMD Radeon GPU setup (see `env.lua`'s `GBM_BACKEND`/`__GLX_VENDOR_LIBRARY_NAME` values). It should work on other hardware, but has not been tested on Intel or Nvidia systems.

## Application dependencies

Several bindings and autostart entries launch specific applications. For those to work, the corresponding program must be installed. If you don't use one of these apps, feel free to remove or remap that entry — nothing else depends on it.

| File | Requires |
|---|---|
| `autostart.lua` | `noctalia`, `corectrl`, `hyprpolkitagent`, `wl-clipboard` + `cliphist` |
| `bindings/browsers.lua` | `firefox`, `chromium` |
| `bindings/code-editors.lua` | `alacritty`, `neovim` (`nvim`), `zed` (`zeditor`) |
| `bindings/media.lua` | `playerctl`, `wireplumber` (`wpctl`) |
| `bindings/noctalia.lua` | `noctalia` |
| `bindings/run.lua` | `alacritty`, `nautilus`, `obsidian`, `yazi` |
| `bindings/screenshot.lua` | [HyprCapture](https://github.com/gfhdhytghd/HyprCapture) plugin |
| `bindings/tiling.lua` | none (core Hyprland dispatchers only) |
| `bindings/webapps.lua` | `chromium` |
| `windowrules.lua` | Rules reference specific apps (browsers, JetBrains IDEs, Zed, Obsidian, LibreOffice, mpv, Dolphin, etc) — see [What's included](#whats-included) |

## Things you'll likely want to customize

This configuration is opinionated and was written for one specific machine. A few values you should review and adjust before using it as-is:

- **`monitors.lua`** — output name (`DP-1`), resolution, and refresh rate are hardcoded to my setup. Run `hyprctl monitors` on your machine and update accordingly.
- **`workspaces.lua`** — workspace-to-monitor assignments reference `DP-1` too; update to match your monitor name(s).
- **`input.lua`** — keyboard layout is set to Brazilian ABNT2 (`kb_layout = "br"`, `kb_variant = "abnt2"`). Change to your own layout.
- **`windowrules.lua`** — assigns specific apps to specific workspaces (browsers → 1, editors → 2, AI web apps → 4, etc). Adjust the app lists and workspace numbers to match the apps you actually use.

## Installation

1. Make sure Hyprland >= 0.55 and Noctalia are installed (see [arch-linux-guide](https://github.com/joao-vcthr/arch-linux-guide) for a full walkthrough).
2. Install whichever applications from the tables above you plan to use.
3. Copy the whole repository contents (including the `bindings/` folder) into your Hyprland config directory, typically `~/.config/hypr/`.
4. Review and adjust the values listed in [Things you'll likely want to customize](#things-youll-likely-want-to-customize).
5. Reload Hyprland or reboot for the changes to take effect.

## What's included

**Core configuration**

- **`hyprland.lua`** — entry point; requires all other modules in order.
- **`monitors.lua`** — monitor output, resolution, position, and scale.
- **`env.lua`** — Wayland/AMD-related environment variables.
- **`input.lua`** — keyboard layout, mouse sensitivity, touchpad, gestures, and per-device overrides.
- **`looknfeel.lua`** — gaps, borders, rounding, blur, shadows, animations, and layout (dwindle/master/scrolling) settings.
- **`autostart.lua`** — services and apps launched on Hyprland startup (Noctalia, CoreCtrl, polkit agent, clipboard history, etc).
- **`permissions.lua`** — Hyprland's permission system for plugins and screen capture (commented out by default).
- **`windowrules.lua`** — assigns specific applications to specific workspaces.
- **`workspaces.lua`** — workspace-to-monitor assignments.

**Keybindings (`bindings/`)**

- **`tiling.lua`** — window focus, movement, workspaces, resizing, and other core window management bindings.
- **`run.lua`** — quick launchers for terminal, file explorer, and a few daily apps.
- **`browsers.lua`** — quick launchers for Firefox and Chromium.
- **`code-editors.lua`** — quick launchers for Neovim (via Alacritty) and Zed.
- **`media.lua`** — media playback and volume control bindings.
- **`noctalia.lua`** — bindings to toggle Noctalia's launcher, control center, and settings panels.
- **`screenshot.lua`** — screenshot bindings powered by the HyprCapture plugin.
- **`webapps.lua`** — quick launchers for common web apps opened as Chromium app windows (Todoist, GitHub, ChatGPT, YouTube, etc).

## Note

This is a fairly complete, but still opinionated and personal, Hyprland setup shared as a starting point — not a polished, all-in-one distribution. Fork it, strip out what you don't need, and adjust the rest to fit your own hardware and workflow.
