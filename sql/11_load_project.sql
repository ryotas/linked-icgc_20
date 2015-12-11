SELECT '-- project' AS '';
-- TRUNCATE TABLE project;
SELECT COUNT(*) FROM project;
LOAD DATA LOCAL INFILE "project_sed.tsv" INTO TABLE project IGNORE 1 LINES;
SELECT COUNT(*) FROM project;
