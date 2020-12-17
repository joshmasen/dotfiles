#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles

# Before running this script, you'll probably want to remove any existing symlinks and old dotfiles directories created from running this script prior.
############################

########## Variables

# dotfiles directory
dir=~/dotfiles
# old dotfiles backup directory
olddir=~/dotfiles_old
# list of files/folders to symlink in homedir
files="vimrc .vim gitconfig gitignore_global config zshrc oh-my-zsh"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
