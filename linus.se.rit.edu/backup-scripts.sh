#/bin/bash

cd ~

DIR=~/scripts-settings/linus.se.rit.edu

echo "Copying commonly-used scripts to $DIR"

cp deploy-website.sh $DIR
cp update-lectures.sh $DIR
cp backup-scripts.sh $DIR
cp .bash_aliases $DIR
cp .bash_profile $DIR
cp .bashrc $DIR
cp .gitconfig $DIR
cp .profile $DIR
cp .vimrc $DIR


