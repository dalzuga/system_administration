#!/bin/bash

FILENAME=$(echo $1 | awk '{print $1}')
FILENAME+=.m4a

case $2 in
    m)
	say -v Daniel -o $FILENAME $1;
	;;
    f)
	say -v Agnes -o $FILENAME $1;
	;;
    x)
	say -v Zarvox -o $FILENAME $1;
	;;
esac

scp "$FILENAME" "admin@$3:/var/www/html/"
