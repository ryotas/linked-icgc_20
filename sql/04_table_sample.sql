DROP TABLE IF EXISTS sample;
CREATE TABLE IF NOT EXISTS sample (
  `icgc_sample_id` varchar(255) DEFAULT NULL,
  `project_code` varchar(255) DEFAULT NULL,
  `submitted_sample_id` varchar(255) DEFAULT NULL,
  `icgc_specimen_id` varchar(255) DEFAULT NULL,
  `submitted_specimen_id` varchar(255) DEFAULT NULL,
  `icgc_donor_id` varchar(255) DEFAULT NULL,
  `submitted_donor_id` varchar(255) DEFAULT NULL,
  `analyzed_sample_interval` varchar(255) DEFAULT NULL,
  `percentage_cellularity` int(10) DEFAULT NULL,
  `level_of_cellularity` varchar(255) DEFAULT NULL
);
