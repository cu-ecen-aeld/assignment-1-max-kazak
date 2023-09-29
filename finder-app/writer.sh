#!/bin/sh

if [ $# != 2 ]
then
    echo "both writefile and writestr has to be provided in the arguments./nExample: writer.sh /tmp/aesd/assignment1/sample.txt ios"
    exit 1
fi

writefile="$1"
writestr="$2"

# create directory if doesn't exist
dirpath=$( dirname "$writefile" )

if [ ! -d "$dirpath" ]
then
    mkdir -p "$dirpath"
    if [ $? -ne 0 ] 
    then
        echo "Error: couldn't create directory."
        exit 1
    fi
fi

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
    echo "Error: couldn't save to file."
    exit 1
fi
