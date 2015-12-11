SELECT '-- specimen' AS '';
DROP TABLE IF EXISTS specimen;
CREATE TABLE specimen (
SELECT DISTINCT
  icgc_specimen_id AS specimen_id
, specimen_type
-- , specimen_type_other
-- , specimen_interval
-- , specimen_donor_treatment_type
-- , specimen_donor_treatment_type_other
-- , specimen_processing
-- , specimen_processing_other
-- , specimen_storage
-- , specimen_storage_other
-- , tumour_confirmed
-- , specimen_biobank
-- , specimen_biobank_id
-- , specimen_available
, tumour_histological_type
, tumour_grading_system
, tumour_grade
-- , tumour_grade_supplemental
-- , tumour_stage_system
-- , tumour_stage
-- , tumour_stage_supplemental
-- , digital_image_of_stained_section
FROM clinical
);
-- ALTER TABLE specimen ADD PRIMARY KEY (specimen_id); 
SELECT COUNT(*) FROM specimen;
