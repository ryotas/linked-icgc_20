#!/bin/sh

if [ -d ./input/Summary ]; then

  echo "Directory Summary already exists. Downloading will be skipped."

else

  echo "Downloading ..."

  mkdir ./input/Summary
  cd ./input/Summary
  pwd

  wget https://dcc.icgc.org/api/v1/download?fn=/release_20/Summary/donor.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_20/Summary/donor_exposure.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_20/Summary/donor_family.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_20/Summary/donor_therapy.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_20/Summary/sample.all_projects.tsv.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_20/Summary/simple_somatic_mutation.aggregated.vcf.gz
  wget https://dcc.icgc.org/api/v1/download?fn=/release_20/Summary/specimen.all_projects.tsv.gz

  mv *donor.all_projects.tsv.gz donor.all_projects.tsv.gz
  mv *donor_exposure.all_projects.tsv.gz donor_exposure.all_projects.tsv.gz
  mv *donor_family.all_projects.tsv.gz donor_family.all_projects.tsv.gz
  mv *donor_therapy.all_projects.tsv.gz donor_therapy.all_projects.tsv.gz
  mv *sample.all_projects.tsv.gz sample.all_projects.tsv.gz
  mv *simple_somatic_mutation.aggregated.vcf.gz simple_somatic_mutation.aggregated.vcf.gz
  mv *specimen.all_projects.tsv.gz specimen.all_projects.tsv.gz

  gunzip *.gz
 
  cd ../../

fi
