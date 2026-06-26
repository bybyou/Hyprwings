current=$(grep 'theme = ' ~/.config/walker/config.toml | cut -d'"' -f2)
if [ "$current" = "Orange" ]; then
    sed -i 's/theme = "Orange"/theme = "Green"/' ~/.config/walker/config.toml
else
    sed -i 's/theme = "Green"/theme = "Orange"/' ~/.config/walker/config.toml
fi