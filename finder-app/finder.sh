#!/bin/sh
# Script for assignment 1 and assignment 2
# Author: Texniq

SEARCH_DIR=""
SEARCH_STRING=""

if [ $# -lt 2 ]
then
	echo "Both args shuld be specified: dir, search string."
	exit 1
fi

SEARCH_DIR=$1
SEARCH_STRING=$2

if [ -d SEARCH_DIR ]
then
	echo "$SEARCH_DIR does not represent a directory on the filesystem."
	exit 1
fi

NUM_FILES=$(find $SEARCH_DIR -type f|wc -l)
NUM_STRINGS=$(grep -r $SEARCH_STRING $SEARCH_DIR/*|wc -l)

echo "The number of files are $NUM_FILES and the number of matching lines are $NUM_STRINGS"

exit 0
