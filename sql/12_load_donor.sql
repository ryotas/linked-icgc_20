SELECT '-- donor' AS '';
-- TRUNCATE TABLE donor;
SELECT COUNT(*) FROM donor;
LOAD DATA LOCAL INFILE "./donor_sed.tsv" INTO TABLE donor IGNORE 1 LINES;
SELECT COUNT(*) FROM donor;
