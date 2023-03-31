#!/bin/bash

# specifies the shell to be used, in this case it is bash

if uname = Linux
then
	mkdir -p ~/.TRASH
	# creates the .TRASH directory if it doesn't already exist
	mv ~/.vimrc ~/.bup_vimrc
	# renames .vimrc to .bup_vimrc in the home directory if it exists
	echo "Warning: .vimrc renamed to .bup_vimrc" >> ~/.dotfiles/bin/linuxsetup.log
	# informs the user of the rename
	cat ~/.dotfiles/etc/.vimrc > ~/.vimrc
	# takes the contents of .vimrc in the etc directory and puts it in .vimrc in the home directory
	echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
	# adds the statement to the end of .bashrc in the home directory
else
	echo "Error: operating system is not Linux. Now exiting." >> ~/.dotfiles/bin/linuxsetup.log
	# pushes an error message into the linuxsetup.log file if the OS is not Linux
	exit
	# exits the program
