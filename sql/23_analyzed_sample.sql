SELECT '-- analyzed_sample' AS '';
DROP TABLE IF EXISTS analyzed_sample;
CREATE TABLE analyzed_sample (
SELECT DISTINCT
  icgc_sample_id AS analyzed_sample_id
, icgc_specimen_id
, icgc_donor_id
-- , donor_vital_status
, submitted_sample_id
, submitted_specimen_id
-- , analyzed_sample_interval
FROM sample
);
-- ALTER TABLE analyzed_sample ADD PRIMARY KEY (analyzed_sample_id);
SELECT COUNT(*) FROM analyzed_sample;
