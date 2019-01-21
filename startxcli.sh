# !/bin/bash
echo "Warning: your current .xinitrc config will be renamed to xinit"

read -p "Continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    read -p "StartX> " -r
fi

if [[ $REPLY = help ]]
then
    echo "Commands:"
    echo "revert - reverts your .xinitrc file"
    echo "i3 - starts I3"
    echo "lxde - starts LXDE"
    echo "xfce - starts XFCE4"
    echo "gnome - starts the gnome shell"
    echo "openbox - starts OpenBox"
fi