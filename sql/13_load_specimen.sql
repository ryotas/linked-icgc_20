SELECT '-- specimen' AS '';
-- TRUNCATE TABLE specimen;
SELECT COUNT(*) FROM specimen;
LOAD DATA LOCAL INFILE "./specimen_sed.tsv" INTO TABLE specimen IGNORE 1 LINES;
SELECT COUNT(*) FROM specimen;
