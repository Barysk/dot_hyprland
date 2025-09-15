#!/usr/bin/env bash


echo 'Deploying dot_hyprland configs'


cp -rf ./dot_bash_profile $HOME/.bash_profile
cp -rf ./dot_bashrc $HOME/.bashrc


mkdir -p $HOME/.fonts
cp -rf ./dot_fonts/* $HOME/.fonts/


mkdir -p $HOME/.config
cp -rf ./dot_config/* $HOME/.config/


echo 'All done'

echo -e \
'This config uses my own layout. In order for it to work do this:

Then sudoedit /usr/share/X11/xkb/rules/evdev.xml and add it near the other English keyboards

<variant>
  <configItem>
    <name>qwerty-seine</name>
    <description>English (Seine QWERTY)</description>
  </configItem>
</variant>
<variant>
  <configItem>
    <name>dvorak-seine</name>
    <description>English (Seine Dvorak)</description>
  </configItem>
</variant>

'

echo 'Or simply switch to kb_layout of your choise in hypland.conf'




