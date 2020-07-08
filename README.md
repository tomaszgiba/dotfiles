# dotfiles

## Ubuntu First Run
```
sudo apt install curl
```

### Basic Tools
```
curl https://raw.githubusercontent.com/tomaszgiba/dotfiles/master/ubuntu_firstrun.sh | bash
```
### Dev Tools
```
curl https://raw.githubusercontent.com/tomaszgiba/dotfiles/master/ubuntu_dev.sh | bash
```

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
