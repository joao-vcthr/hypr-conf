------------------------------------
----  AUTO START CONFIGURATION  ----
------------------------------------

hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprpm reload -n")
  hl.exec_cmd("noctalia")
  hl.exec_cmd("corectrl --minimize-systray")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("dbus-update-activation-environment --systemd --all")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
