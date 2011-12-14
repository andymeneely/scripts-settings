#!/bin/bash

# The purpose of this script is to get you started with SVN quickly. 
# It was written for SE 350, Personal Software Engineering

# It will:
#   Create a folder
#   Create an SVN repository within that folder
#   Create a trunk and subfolder
#   Checkout a working copy into that subfolder

# Make sure this script has execute permssions:
# $ chmod u+x ./startsvn.sh

#USAGE:
#./startsvn.sh youractivityname

#The subdirectory to create the repo and do our checkout from

: ${1?"Please include the name of your activity subdirectory. Usage: $0 YOURACTIVITYNAME"}

SUBDIR=$1

mkdir $SUBDIR
cd $SUBDIR
DIR=`pwd`

svnadmin create $DIR/repo

svn mkdir -m "Creating trunk" file://$DIR/repo/trunk
svn mkdir -m "Creating the folder for this project" file://$DIR/repo/trunk/$SUBDIR

svn co file://$DIR/repo/trunk/$SUBDIR activity

echo "Done!"
