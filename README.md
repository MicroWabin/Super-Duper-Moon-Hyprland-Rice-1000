# Super Duper Moon Hyprland Rice 1000
Hello there! This is my Hyprland rice for the 5th ricing competition. I call it the *Super Duper Moon Hyperland Rice 1000*

It's a simple rice since I started a little late and I'm new to this, but I think it turned out really cool. 

## Preview:
(add images)

## Riced Components:
In this rice I customized the following components based on my dotfiles:
- Hyprland
- Waybar
- Wofi
- Alacritty
- Custom moon app-launcher made with Quickshell

## About my rice:
I made a moon widget using quickshell that works as an app launcher and as shortcut for commands, It can be configured to do desktop actions, oppen specific webpages, and basically everithing.

I also customized programs as Wofi, Waybar and Alacritty. I chose a monochromatic color palete since it combines with the moon colors.

This was my first time using Quickshell, I also had to lern a little bit about blender to do the moon. I hope you like this this rice as much as I liked doing it!

## Keybinds:
- Mod + Enter: Alacritty
- Mod + Backspace: Quit
- Mod + Space: Toggle Moon app-launcher
- Mod + Shift + Space: Wofi
- Mod + Tab + Shift: Toggle fullscreen
- Mod + Tab: Toggle floating window
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

## Instalation
1. Clone repository to your PC with
2. Enter to the repository directory.
3. Copy files to ~/.config/
4. Install the dependencies.
5. Go to ~/.config/quickshell/ and edit the file "Config.qml", there you'll find the instructions to add your own apps and commands to the moon widget.
6. Go to ~/.config/waybar/scripts/ and edit the file "HeadphoneConnect.sh", add the MAC direction of your headphones.
7. (Optional) Go to ~/.config/hypr/scripts/ and edit the files "MaxWorkspaces.sh" and  "MoveMaxWorkspaces.sh", set the Max number of workspaces to be created. (The default is 10)
