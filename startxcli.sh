# !/bin/bash
read -p "StartX> " -r
if [[ $REPLY = help ]]
then
    echo "Commands:"
    echo "i3 - starts I3"
    echo "lxde - starts LXDE"
    echo "xfce - starts XFCE4"
    echo "gnome - starts the gnome shell"
    echo "openbox - starts OpenBox"
fi