#/bin/sh!
# This script modify projects.tsv, which can be obtained from the original ICGC portal.

echo "code	name	primary_site	tumour_type	tumour_subtype	countries"

cat $1 | \
awk 'BEGIN {FS="\t"; OFS="\t"} NR>1 {print $1, $2, $3, "\\N", "\\N", $4}'
