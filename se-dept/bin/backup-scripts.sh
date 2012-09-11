#/bin/bash

cd ~

SCRIPTS=~/scripts-settings
DIR="$SCRIPTS/se-dept"

echo "Copying commonly-used scripts to $DIR"

cp -r bin/ $DIR
cp -r .vim/ $DIR
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

