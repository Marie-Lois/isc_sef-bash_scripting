#!/bin/bash
echo "Enter source directory: "
read source
echo "Enter back-up destination: "
read destination

if [ -d "$destination" ] && [ -d "$source" ] && [ -w "$destination"  ]; then
    cp $source/* $destination
    echo "Backup successful"
else
    echo "Backup unsuccessful. Please check if source and destination are directories  "
fi
