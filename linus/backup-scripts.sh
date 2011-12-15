#/bin/bash

cd ~

SCRIPTS=~/scripts-settings
DIR="$SCRIPTS/linus"

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

echo "Committing the changes to Git..."

cd $SCRIPTS

git add .
git commit
git push origin master

