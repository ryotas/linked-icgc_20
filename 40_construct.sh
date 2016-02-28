#!/bin/sh
if [ -f ./output/x-gene.nt ]; then
  echo -e "\n\nFile ./output/x-gene.nt exists. Removing it..."
fi
echo -e "\n\nExporting x-gene.nt..."
node ~/sparql-gateway/client.js ./construct/gene.sql ~/data/x-gene.nt
echo -e "\n\nCounting lines of x-gene.nt..."
wc -l ~/data/x-gene.nt
#echo -e "\n\nLoading cross references for genes..."
#time ~/virtuoso.sh loaddir ~/data x-gene.nt http://icgc.link/release_20
