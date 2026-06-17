THEME=2

# Parse arguments
if [[ $1 =~ ^--[0-9]+$ ]]; then
    THEME=${1:2}
elif [[ -n $1 ]]; then
    echo "Usage: $0 --<theme_number>"
    exit 1
fi

matugen image "$HOME/.local/personal-dotfiles/images/wallpapers/$THEME.jpg"
awww img "$HOME/.local/personal-dotfiles/images/wallpapers/$THEME.jpg" --transition-type center
pkill waybar & hyprctl reload
