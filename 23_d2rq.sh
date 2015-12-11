#!/bin/sh

echo -e "\n-- D2RQ is exporting triples from MySQL database.\n"
~/d2rq/d2rq-0.8.1/dump-rdf -b http://icgc.link/ --verbose mapping-w3c.ttl > ./output/ICGC_$1.nt 2>/dev/null
echo -e "Done.\n"
