#!/bin/bash
##################################################
# Creates symlinks from the home directory to all
# dotfiles in ~/.dotfiles and backs up current
# dotfiles in home directory
##################################################

# Variables

dir=~/.dotfiles
olddir=~/.dotfiles_old
files=$(ls | grep --invert-match bin)

# Create backup folder
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Backup existing dotfiles to backup directory,
# then create symlinks 
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file $olddir/ 
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

