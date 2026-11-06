-- Auto-start config
-- UWSM ya exporta el entorno a systemd/dbus; aquí solo se lanza la shell

hl.on("hyprland.start", function ()
    hl.exec_cmd("uwsm app -- qs -c noctalia-shell")
end)
