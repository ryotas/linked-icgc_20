SELECT '-- ssm_mutation' AS '';
DROP TABLE IF EXISTS ssm_mutation;
CREATE TABLE ssm_mutation (
SELECT DISTINCT
  icgc_mutation_id AS mutation_id
, chromosome
, chromosome_start
, chromosome_end
, chromosome_strand
, assembly_version
, mutation_type
, reference_genome_allele
, mutated_from_allele
, mutated_to_allele
FROM ssm
);
-- ALTER TABLE ssm_mutation ADD PRIMARY KEY (mutation_id);
SELECT COUNT(*) FROM ssm_mutation;
