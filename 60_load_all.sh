#!/bin/sh

date

echo -e "\n\nLoading icgc..."
time ~/virtuoso.sh loaddir ~/data all_projects.ttl http://hoge/
echo -e "\n\nLoading hgnc..."
time ~/virtuoso.sh loaddir ~/data hgnc_complete_set.nq http://hoge/
echo -e "\n\nLoading uniprot..."
time ~/virtuoso.sh loaddir ~/data 9606.ttl http://purl.uniprot.org/ 
echo -e "\n\nLoading reactome..."
time ~/virtuoso.sh loaddir ~/data Homo_sapiens.owl http://purl.uniprot.org/ 

date
