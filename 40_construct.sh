#!/bin/sh
if [ -f ./output/x-gene.nt ]; then
  echo -e "\n\nFile ./output/x-gene.nt exists. Removing it..."
fi
echo -e "\n\nExporting x-gene.nt..."
node ~/sparql-gateway/client.js ./construct/gene.sql ./output/x-gene.nt
echo -e "\n\nCounting lines of x-gene.nt..."
wc -l ./output/x-gene.nt
#echo -e "\n\nLoading cross references for genes..."
#time ~/virtuoso.sh loaddir ~/linked-icgc/output x-gene.nt http://icgc.link/release_18
