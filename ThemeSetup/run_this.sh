dir=$(dirname $0)
dir="$dir/FloatingDockPanelCustomLatte.layout.latte"
echo $dir
#!latte-dock --import-layout $dir
#!latte-dock --replace
qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript '
    var allDesktops = desktops();
    print (allDesktops);
    for (i=0;i<allDesktops.length;i++)
    {
        d = allDesktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General");
        d.writeConfig("Image", "$(dirname $0)/Cyberpunk2077-wallpaper.jpg")
    }'
