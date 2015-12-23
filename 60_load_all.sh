#!/bin/sh

date

echo -e "\n\nLoading hgnc..."
time ~/virtuoso.sh loaddir ~/linked-icgc/output hgnc_complete_set.nq http://hoge/
echo -e "\n\nLoading uniprot..."
time ~/virtuoso.sh loaddir ~/linked-icgc/output 9606.ttl http://purl.uniprot.org/ 
echo -e "\n\nLoading reactome..."
time ~/virtuoso.sh loaddir ~/linked-icgc/output Homo_sapiens.owl http://purl.uniprot.org/ 

date
