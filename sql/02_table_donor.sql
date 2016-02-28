DROP TABLE IF EXISTS `donor`;
CREATE TABLE `donor` (
  `donor_id` varchar(255) DEFAULT NULL, -- icgc_donor_id
  `project_code` varchar(255) DEFAULT NULL,
  `study_donor_involved_in` varchar(255) DEFAULT NULL,
  `submitted_donor_id` varchar(255) DEFAULT NULL,
  `donor_sex` varchar(255) DEFAULT NULL,
  `donor_vital_status` varchar(255) DEFAULT NULL,
  `disease_status_last_followup` varchar(255) DEFAULT NULL,
  `donor_relapse_type` varchar(255) DEFAULT NULL,
  `donor_age_at_diagnosis` int(10) DEFAULT NULL,
  `donor_age_at_enrollment` int(10) DEFAULT NULL,
  `donor_age_at_last_followup` int(10) DEFAULT NULL,
  `donor_relapse_interval` int(10) DEFAULT NULL,
  `donor_diagnosis_icd10` varchar(255) DEFAULT NULL,
  `donor_tumour_staging_system_at_diagnosis` varchar(255) DEFAULT NULL,
  `donor_tumour_stage_at_diagnosis` varchar(255) DEFAULT NULL,
  `donor_tumour_stage_at_diagnosis_supplemental` varchar(255) DEFAULT NULL,
  `donor_survival_time` int(10) DEFAULT NULL,
  `donor_interval_of_last_followup` int(10) DEFAULT NULL,
  `prior_malignancy` varchar(255) DEFAULT NULL,
  `cancer_type_prior_malignancy` varchar(255) DEFAULT NULL,
  `cancer_history_first_degree_relative` varchar(255) DEFAULT NULL
);
