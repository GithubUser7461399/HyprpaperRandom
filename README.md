# HyprpaperRandom
Safely executable shell script which sets a random photo as your Hyprpaper wallpaper. By default it chooses from your `$HOME/Pictures` directory, which can be simply changed by changing the value of `WALLPAPER_DIR` in the script.

How to use:
1.  Download the `hyprpaperRandom.sh` file,
2.  Run `sudo chmod +x hyprpaperRandom.sh` to make it executable,
3.  And save it to your `PATH`.
RECCOMENDED:
Make this file execute via a shortcut by adding a line to your `$HOME/.config/hypr/hyprland.conf` file as follows:
`bind = $mainMod, B, exec, hyprpaperRandom.sh`
I used super B as mine, you can use any you so please.
