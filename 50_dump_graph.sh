#/bin/sh!
cd /usr/local/var/lib/virtuoso/db
echo -e "dump_one_graph ('http://icgc.link/release_18','./data_',50000000000);\n" | sh ~/virtuoso.sh isql 
