#/bin/bash

cd ~

SCRIPTS=~/scripts-settings
DIR="$SCRIPTS/se-dept"

echo "Copying commonly-used scripts to $DIR"

rsync -rv --exclude=.nfs* bin/ $DIR/bin
rsync -rv --exclude=bundle/vim-ruby .vim/ $DIR/.vim/
rsync -v .bash_aliases $DIR
rsync -v .bash_profile $DIR
rsync -v .bashrc $DIR
rsync -v .gitconfig $DIR
rsync -v .profile $DIR
rsync -v .vimrc $DIR

echo "Committing the changes to Git..."

cd $SCRIPTS

git add .
git commit
git push origin master

