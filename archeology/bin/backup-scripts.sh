#/bin/sh

cd ~

SCRIPTS=~/scripts-settings

UNAME=`uname -a`
case "$UNAME" in
     *archeology*) WHERE="archeology" ;;
     *se.rit.edu*) WHERE="se" ;;
     *) echo "Where am i? Quitting without doing anything";exit ;;
esac

case "$WHERE" in
     se) DIR="$SCRIPTS/se-dept" ;;
     archeology) DIR="$SCRIPTS/archeology" ;;
esac

echo "Copying commonly-used scripts to $DIR"
if [ "$WHERE" == "se" ]; then
	rsync -rv --exclude=.nfs* bin/ $DIR/bin
	rsync -rv --exclude=bundle/vim-rails --exclude=bundle/vim-ruby .vim/ $DIR/.vim/
	rsync -v .bash_aliases $DIR
	rsync -v .bash_profile $DIR
	rsync -v .bashrc $DIR
	rsync -v .gitconfig $DIR
	rsync -v .profile $DIR
	rsync -v .vimrc $DIR
	rsync -v .gemrc $DIR
   elif [ "$WHERE" == "archeology" ]; then
	rsync -rv --exclude=.nfs* bin/ $DIR/bin
	rsync -rv --exclude=bundle/vim-rails .vim/ $DIR/.vim/
	rsync -v .bash_aliases $DIR
	rsync -v .bash_profile $DIR
	rsync -v .bashrc $DIR
	rsync -v .gitconfig $DIR
	rsync -v .profile $DIR
	rsync -v .vimrc $DIR
fi

echo "Committing the changes to Git..."

cd $SCRIPTS

git add .
git commit
git push origin master

