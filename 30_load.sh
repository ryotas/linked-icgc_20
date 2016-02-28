#!/bin/sh

#echo -e "\n\nRemove and restart database..."
#~/virtuoso.sh stop
#sleep 2
#~/virtuoso.sh remove
#sleep 2
#~/virtuoso.sh start
#sleep 15

date

echo -e "\n\nLoading all ICGC data..."
time ~/virtuoso.sh loaddir ~/data license.nt http://icgc.link/release_20
time ~/virtuoso.sh loaddir ~/data/linked-icgc_20 ICGC*.nt http://icgc.link/release_20

date

