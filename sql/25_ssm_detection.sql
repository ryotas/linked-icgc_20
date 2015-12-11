SELECT '-- ssm_detection' AS '';
DROP TABLE IF EXISTS ssm_detection;
CREATE TABLE ssm_detection (
SELECT DISTINCT
  icgc_mutation_id AS mutation_id
, icgc_donor_id AS donor_id
, project_code
, icgc_specimen_id AS specimen_id
, icgc_sample_id AS sample_id
, matched_icgc_sample_id
, submitted_sample_id
, submitted_matched_sample_id
--
, quality_score
, probability
, total_read_count
, mutant_allele_read_count
, verification_status
, verification_platform
, biological_validation_status
, biological_validation_platform
--
, platform
, experimental_protocol
, sequencing_strategy
, base_calling_algorithm
, alignment_algorithm
, variation_calling_algorithm
, other_analysis_algorithm
, seq_coverage
, raw_data_repository
, raw_data_accession
FROM ssm
);
-- ALTER TABLE ssm_detection ADD PRIMARY KEY (donor_id, specimen_id, mutation_id);
-- ALTER TABLE ssm_detection ADD FOREIGN KEY (donor_id) REFERENCES donor (donor_id);
-- ALTER TABLE ssm_detection ADD FOREIGN KEY (mutation_id) REFERENCES ssm_mutation (mutation_id);
-- ALTER TABLE ssm_detection ADD FOREIGN KEY (project_code) REFERENCES project (project_code);
SELECT COUNT(*) FROM ssm_detection;
