

#!/bin/bash

dconf write /org/gnome/desktop/wm/keybindings/switch-applications "[]"

dconf write /org/gnome/desktop/wm/keybindings/switch-applications-backward "[]"

dconf write /org/gnome/desktop/wm/keybindings/switch-windows "['<Alt>Tab']"

dconf write /org/gnome/desktop/wm/keybindings/switch-windows-backward "['<Shift><Alt>Tab']"

dconf write /org/gnome/desktop/wm/keybindings/show-desktop "['<Super>d']"
