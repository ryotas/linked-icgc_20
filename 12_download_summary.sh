#!/bin/sh

if [ -d ./input/Summary ]; then

  echo "Directory Summary already exists. Downloading will be skipped."

else

  echo "Downloading ..."

  mkdir ./input/Summary
  cd ./input/Summary
  pwd

  wget https://dcc.icgc.org/api/v1/download?fn=/release_19/Summary/donor.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_19/Summary/donor_exposure.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_19/Summary/donor_family.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_19/Summary/donor_therapy.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_19/Summary/sample.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_19/Summary/simple_somatic_mutation.aggregated.vcf.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_19/Summary/specimen.all_projects.tsv.gz

  gunzip *.gz
 
  #awk '{ if (NR==1) { print $0; }}' < ../projects.tsv > project.tsv
  #awk '{ if ($1=="'${1}'") { print $0; }}' < ../projects.tsv >> project.tsv
  
  cd ../../

fi
