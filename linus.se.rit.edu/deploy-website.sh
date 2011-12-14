#!/bin/sh
# This is a script that is called automatically from GitHub to post to the website every time I post to the repository
# It can be called by itself, though

dir=/home/faculty/andy

cd $dir/tmp-website
rm -rf $dir/tmp-website/*
wget -O $dir/tmp-website/github-deploy.tar.gz http://github.com/apmeneel/RIT-Website/tarball/master
tar xzf github-deploy.tar.gz
subdir=`/usr/bin/find $dir/tmp-website -type d -print | sed -e 's/ /\n/' | grep public_html`
cp -r $subdir $dir/
echo "Copied $subdir over to $dir"

