import QtQuick

// This is the configuration file for the moon widget. Here you can set which apps will be shown on it.

QtObject {

	// "orbitApps" defines the number of apps that will be shown.
	property int orbitApps: 10

	// You have to set up the apps you want to appear orbiting the moon in an array.
	// Make sure you configure the same number of apps as established in "orbitApps".
	
	// The correct array format for each app is the following: ["{launch command}", "{path to icon}"],
	// Each app must be in a new line.
	// Do not forget to end with a comma if you will configure another app!

	// You might want to use the following command to find the icon:
	// find /usr/share/icons /usr/share/pixmaps -iname "*{app name}*"
	
	// This is the example configuration I used in the video:
	
	property var appData: [
		["steam", "/usr/share/icons/hicolor/256x256/apps/steam.png"],
		["google-chrome-stable --incognito https://www.youtube.com/", "/usr/share/pixmaps/YT.png"],
		["thunar", "/usr/share/icons/hicolor/128x128/apps/org.xfce.thunar.png"],
		["google-chrome-stable --incognito https://wiki.archlinux.org/title/Main_page", "/usr/share/pixmaps/archlinux-logo.png"],
		["alacritty", "/usr/share/pixmaps/Alacritty.svg"],
		["google-chrome-stable", "/usr/share/icons/hicolor/128x128/apps/google-chrome.png"],
		["steam steam://rungameid/10", "/usr/share/pixmaps/CS.png"],
		["google-chrome-stable --incognito https://hypr.land/news/", "/usr/share/pixmaps/Hyprland.png"],
		["qs -p ~/.config/quickshell/EasterEgg.qml ipc call motion jeb", "/usr/share/pixmaps/egg.png"],
		["spotify", "/usr/share/icons/hicolor/256x256/apps/spotify.png"]
	]
}
