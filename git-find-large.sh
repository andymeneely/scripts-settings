#!/bin/sh
#
# From http://mid.gmane.org/20090710114316.GA6880@atjola.homenet
#

usage() {
        echo "usage: `basename $0` [<limit>]"
	        exit 1
		}

		limit=20
		if test $# -gt 1
		then
		usage
		elif test $# -eq 1
		then
		limit=$1
		fi

		git rev-list --all --objects |
		        sed -n $(git rev-list --objects --all |
			                cut -f1 -d' ' | git cat-file --batch-check | grep blob |
					                sort -n -k3 | tail -n$limit | while read hash type size;
							                do
									echo -n "-e s/$hash/$size/p ";
									                done) |
											        sort -n -k1
