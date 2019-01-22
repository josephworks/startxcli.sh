# !/bin/bash

# Check for sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Warning about .xinitrc being moved
echo "Warning: your current .xinitrc config will be renamed to xinit"

read -p "Continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Initialize if user agreed to .xinitrc being moved
    cd
    sudo mv .xinitrc xinit
    clear
    read -p "StartX> " -r
fi

############# Exit Commands
if [[ $REPLY = exit ]]
then
    echo "Exited"
fi

if [[ $REPLY = close ]]
then
    echo "Exited"
fi

if [[ $REPLY = quit ]]
then
    echo "Exited"
fi
############

if [[ $REPLY = help ]]
then
    echo "Commands:"
    echo "revert - reverts your .xinitrc file"
    echo "reset - resets the .xinitrc config"
    echo "recent, last - starts the last desktop environment that you used"
    echo "exit, close, quit - closes StartXCli"
    echo "i3 - starts I3"
    echo "lxde - starts LXDE"
    echo "xfce - starts XFCE4"
    echo "gnome - starts the gnome shell"
    echo "openbox - starts OpenBox"
    echo "htop - opens htop"
    read -p "StartX> " -r
fi

########## xinit config commands
# Revert Command
if [[ $REPLY = revert ]]
then
    sudo mv xinit .xinitrc
    echo "Restored config!"
    read -p "StartX> " -r
fi

# Reset command
if [[ $REPLY = reset ]]
then
    sudo rm .xinitrc
    echo "Reseted xinitrc config!"
    read -p "StartX> " -r
fi

########## Extras
if [[ $REPLY = quit ]]
then
    htop
fi