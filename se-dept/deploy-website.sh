#!/bin/sh
# This is a script that is called automatically from GitHub to post to the website every time I post to the repository
# It can be called by itself, though

dir=/home/faculty/andy

# cd ~/tmp-website
# git clone ~/gitrepos/rit-website.git


cd $dir/tmp-website/rit-website
git pull
rsync -rvic ~/tmp-website/rit-website/public_html/* ~/public_html
chmod -R a+r ~/public_html
#rm -rf $dir/tmp-website/*
#wget -O $dir/tmp-website/github-deploy.tar.gz http://github.com/apmeneel/RIT-Website/tarball/master
#tar xzf github-deploy.tar.gz
#rsync -rvic --delete ~/tmp-website/public_html/* ~/public_html
#chmod -R a+r ~/public_html
#subdir=`/usr/bin/find $dir/tmp-website -type d -print | sed -e 's/ /\n/' | grep public_html`
#cp -r $subdir $dir/
#echo "Copied $subdir over to $dir"

