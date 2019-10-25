# dotfiles

## Terminal Settings
```
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal-profiles.dconf 
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf 
```

## Gnome Settings

```
dconf load /org/gnome/desktop/interface/ < ubuntu-gnome-desktop-interface-settings.dconf
dconf dump /org/gnome/desktop/interface/ > ubuntu-gnome-desktop-interface-settings.dconf
```
