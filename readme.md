# Notes

* nwg-look: used for managing themes
* Theme things: papirus-icon-theme, materia-gtk-theme
* if electron application still flickers even after fixes provided in hyprland's guide, set a
  --disable-gpu flag, my case:

  Vesktop:

  Edit ```/usr/share/applications/vesktop.desktop```

  Add needed flag to Exec, like this ```Exec=vesktop --disable-gpu %U```
* if no Nvidia => remove Nvidia fixes from hyrland.conf

```
MASTER_LAYOUT_QUICK_GUIDE___________________________________________________________________________
This config uses master layout

+-----------------+--------+
|                 |        |
|                 |   S1   |
|                 |        |
|        M        +--------+
|                 |        |
|                 |   S2   |
|                 |        |
+-----------------+--------+

To increase/decrease number of master windows use:
SUPER+I / SUPER+D

To navigate the layout use:
SUPER+J to move down the stack
SUPER+K to move up

You can move window throught the stack
SUPER+J to move down
SUPER+K to move up

SUPER+H decreasing master area
SUPER+L increasing master area

SUPER+SHIFT+ENTER to swap windows

NAVIGATTION_________________________________________________________________________________________

Navigating throught the worksapces is basic:
SUPER+[workspace number 1..=9]
SUPER+SHIFT+[workspace number 1..=9]    // is going to move active window to a chosen workspace

there is a one special worksapce:
SUPER+S to open
SUPER+SHIFT+S to move something here

SUPER+TAB to "alt-tab" between workspaces

MULTIMONITOR________________________________________________________________________________________

SUPER+period focuses monitor right of a current
SUPER+comma focuses left one

SUPER+SHIFT+period moves current worspace to right monitor
SUPER+SHIFT+comma moves current worspace to left monitor
SUPER+SHIFT+TAB swap VISIBLE WORKSPACES between monitors

BASICS______________________________________________________________________________________________

default apps:
terminal = kitty
file manager = pcmanfm
menu = wofi
lock = hyprlock
bar = waybar

Hide/Show bar:
SUPER+B

Activate blue light filter:
SUPER+SHIFT+N

Open terminal:
SUPER+enter

Kill active window:
SUPER+Q

Open file manager:
SUPER+E

Toggle fullscreen:
SUPER+F

Open application menu:
SUPER+P

Screenshot:
SUPER+ALT+S

Lock screen:
SUPER+escape

Close hyprland session - exit to tty:
SUPER+SHIFT+escape

Toggle active window to floating mode:
SUPER+SHIFT+F

Anything else I either forgot or it hyprland's default, check hyprland.conf if unsure.

```
