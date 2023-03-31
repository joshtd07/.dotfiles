#!/bin/bash
# specifies the shell to be used, in this case it is bash
rm ~/.vimrc
#removes .vimrc from home directory
sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc
#deletes the specific line from .bashrc in our home directory
rm -a .TRASH
#removes the trash directory from the home directory
