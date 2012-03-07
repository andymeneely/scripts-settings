#!/bin/bash


if [ "$USER" != "se331" ]
then
	echo "This script must be run by the se331 user."
	exit 1
fi

#Pull the whole website up
rm -rf ~/temp/*
cd git/se331.git
git archive master | tar -x -C ~/temp
rsync -rvi --delete ~/temp/public_html/* ~/public_html
chmod -R a+r ~/public_html/
find ~/public_html -type d -exec chmod a+x '{}' \;
