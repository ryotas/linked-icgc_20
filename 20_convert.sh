#!/bin/sh

while read line; do
  if [[ $line != "#"* ]]
  then
    if [ -f ./output/$line.nt ]; then
      echo "File ./output/$line.nt exists. Skipped."
    else 
      sh ./21_sed.sh $line
      sh ./22_mysql.sh $line
      sh ./23_d2rq.sh $line
    fi
  fi
done < $1
