#!/bin/bash
COUNTHEAD=0;
COUNTGET=0;

while read line; do
    if (echo $line | grep -q HEAD); then
	((COUNTHEAD++));
#	echo $COUNTHEAD;
    elif (echo $line | grep -q GET); then
	((COUNTGET++));
#	echo $COUNTGET;
    fi
done < $1

echo $COUNTHEAD
echo $COUNTGET
