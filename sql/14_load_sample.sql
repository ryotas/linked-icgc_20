SELECT '-- sample' AS '';
-- TRUNCATE TABLE sample;
SELECT COUNT(*) FROM sample;
LOAD DATA LOCAL INFILE "./sample_sed.tsv" INTO TABLE sample IGNORE 1 LINES;
SELECT COUNT(*) FROM sample;
