SELECT '-- donor' AS '';
DROP TABLE IF EXISTS donor;
CREATE TABLE donor (
SELECT DISTINCT
  icgc_donor_id AS donor_id
, project_code
, donor_sex
-- , donor_region_of_residence
, donor_vital_status
, disease_status_last_followup
, donor_relapse_type
, donor_age_at_diagnosis
, donor_age_at_enrollment
, donor_age_at_last_followup
, donor_relapse_interval
, donor_diagnosis_icd10
, donor_tumour_staging_system_at_diagnosis
, donor_tumour_stage_at_diagnosis
, donor_tumour_stage_at_diagnosis_supplemental
, donor_survival_time
, donor_interval_of_last_followup
-- , donor_notes
-- , icgc_specimen_id AS specimen_id
FROM clinical
);
-- ALTER TABLE donor ADD PRIMARY KEY (donor_id);
-- ALTER TABLE donor ADD FOREIGN KEY (project_code) REFERENCES project (project_code);
SELECT COUNT(*) FROM donor;
