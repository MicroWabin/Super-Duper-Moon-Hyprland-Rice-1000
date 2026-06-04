# Super Duper Moon Hyprland Rice 1000

Hello there! This is my Hyprland rice for the 5th ricing competition. I call it the *Super Duper Moon Hyprland Rice 1000*.

It's a simple rice since I started a little late and I'm new to this, but I think it turned out really cool.

## Preview:

(add images)

## Customized Components:

In this rice, I customized the following components:

- Hyprland
- Waybar
- Wofi
- Alacritty
- Custom moon app-launcher (made with Quickshell)

## About my rice:

I made a moon widget using Quickshell that works as both an app launcher and a command launcher. It can be configured to perform desktop actions, open specific webpages, and basically anything else you can think of.

I also customized programs such as Wofi, Waybar, and Alacritty. I chose a monochromatic color palette since it matches the moon's colors.

This was my first project using Quickshell, and most of the development time went into learning how to build the custom moon widget. I also had to learn a little bit about Blender to create the moon. I hope you enjoy this rice as much as I enjoyed making it!

## Keybinds:

- Mod + Right Arrow: Move to next workspace 
- Mod + Left Arrow: Move to previous workspace 
- Mod + Shift + Right Arrow: Move window to next workspace
- Mod + Shift + Left Arrow: Move window to previous workspace
- Mod + Enter: Alacritty
- Mod + Backspace: Quit
- Mod + Space: Toggle Moon app-launcher
- Mod + Shift + Space: Wofi
- Mod + Tab: Toggle floating window
- Mod + Tab + Shift: Toggle fullscreen
- Mod + Left Click: Move window
- Mod + Right Click: Resize window
- Mod + Escape: Exit Hyprland

## Dependencies:

- hyprland
- hyprpaper
- waybar
- pipewire (audio server)
- pamixer
- brightnessctl
- bluetoothctl
- playerctl
- wofi
- alacritty
- quickshell
- qt6-imageformats
- hyprshot
- ttf-nerdfonts
- ttf-dejavu

## Installation:

1. Clone the repository to your PC.
2. Enter the "dotfiles" directory.
3. Copy the files to `~/.config/`
4. Download "Moon.webp" from Releases and copy it to `~/.config/quickshell/` 
5. Install the dependencies.
6. Go to `~/.config/quickshell/` and edit the file "Config.qml". There you'll find instructions on how to add your own apps and commands to the moon widget.
7. Go to `~/.config/waybar/scripts/` and edit the file "HeadphoneConnect.sh". Add the MAC address of your headphones.
8. (Optional) Go to `~/.config/hypr/scripts/` and edit the files "MaxWorkspaces.sh" and "MoveMaxWorkspaces.sh". Set the maximum number of workspaces to be created. (The default is 10.)
