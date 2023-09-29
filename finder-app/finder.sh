#!/bin/sh

if [ $# != 2 ]
then
    echo "both filesdir and searchstr has to be provided in the arguments./nExample: finder.sh /tmp/aesd/assignment1 linux"
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]
then
    echo "first argument filesdir doesn't exist or is not a valid directory"
    exit 1
fi

filescnt=$( find "$filesdir" -type f | wc -l )
searchcnt=$( grep -r "$searchstr" "$filesdir" |wc -l )

echo "The number of files are $filescnt and the number of matching lines are $searchcnt"
