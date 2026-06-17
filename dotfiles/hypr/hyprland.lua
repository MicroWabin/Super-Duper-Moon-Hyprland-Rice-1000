-- Monitors: --
hl.monitor ({output = "eDP-1", mode = "1920x1280@60"})
hl.monitor ({output = "", mode = "preferred"})

-- Auto-Start: --
hl.on ("hyprland.start", function()
	hl.exec_cmd("alacritty")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
	hl.exec_cmd("quickshell")
	hl.exec_cmd("quickshell -p ~/.config/quickshell/EasterEgg.qml")
end)

-- Binds --
hl.bind ("SUPER + Escape", hl.dsp.exit())
hl.bind ("SUPER + BackSpace", hl.dsp.window.close())
hl.bind ("SUPER + SHIFT + BackSpace", hl.dsp.window.kill())
hl.bind ("SUPER + Return", hl.dsp.exec_cmd("alacritty"))
hl.bind ("PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

-- Window-Related Binds: --
hl.bind ("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind ("SUPER + mouse:273", hl.dsp.window.resize())
hl.bind ("SUPER + Tab", hl.dsp.window.float({action = "toggle"}))
hl.bind ("SUPER + SHIFT + Tab", hl.dsp.window.fullscreen({action = "toggle"}))

-- Workspace-Related Binds: --
hl.bind ("SUPER + Right", hl.dsp.focus({workspace = "+1"}))
hl.bind ("SUPER + Left", hl.dsp.focus({workspace = "-1"}))
hl.bind ("SUPER + SHIFT + Right", hl.dsp.window.move({workspace = "+1"}))
hl.bind ("SUPER + SHIFT + Left", hl.dsp.window.move({workspace = "-1"}))

-- Volume And Brightness --
hl.bind ("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer -i 10"))
hl.bind ("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer -d 10"))
hl.bind ("XF86AudioMute", hl.dsp.exec_cmd("pamixer --set-volume 0"))
hl.bind ("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 10%+"))
hl.bind ("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 10%-"))

-- Moon app launcher and Wofi: --
hl.bind ("SUPER + Space", hl.dsp.exec_cmd("~/.config/quickshell/scripts/WidgetOverlay.sh"))
hl.bind ("SUPER + SHIFT + Space", hl.dsp.exec_cmd("pkill wofi || wofi --show drun"))

hl.config ({
	general = {
		border_size = 0,
	},

	decoration = {
		rounding = 15,

		active_opacity = 1.0,
		inactive_opacity = 0.9,

		blur = {enabled = false},
		shadow = {enabled = false},

	},

	input = {
		kb_layout  = "latam",

		touchpad = {
			natural_scroll = true,
			middle_button_emulation = false,
			disable_while_typing = true, -- Can be changed if necesary --
		},
	},
})

-- Environment --
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
