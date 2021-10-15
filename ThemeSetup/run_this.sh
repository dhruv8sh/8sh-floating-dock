dir=$(dirname $0)
dir="$dir/FloatingDockPanelCustomLatte.layout.latte"
echo $dir
latte-dock --import-layout $dir
latte-dock --replace
