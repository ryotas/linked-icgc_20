DROP TABLE IF EXISTS project;
CREATE TABLE IF NOT EXISTS project (
  `project_code` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `primary_site` varchar(255) DEFAULT NULL,
  `tumour_type` varchar(255) DEFAULT NULL,
  `tumour_subtype` varchar(255) DEFAULT NULL,
  `countries` varchar(255) DEFAULT NULL
);
