# Notes

* nwg-look: used for managing themes
* Theme things: papirus-icon-theme, materia-gtk-theme
* if application need to set a flag during its startup, my case:

  Vesktop:

  Edit ```/usr/share/applications/vesktop.desktop```

  Add needed flag to Exec, like this ```Exec=vesktop --disable-gpu %U```
* if no Nvidia => remove Nvidia fixes from hyrland.conf
