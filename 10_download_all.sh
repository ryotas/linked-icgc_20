#!/bin/sh

while read line; do
  if [[ $line != "#"* ]]
  then
    echo $line
    project_code=`echo $line | cut -f 1`
    echo $project_code
    sh ./11_download.sh $project_code
  fi
done < $1
