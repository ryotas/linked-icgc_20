DROP DATABASE IF EXISTS linked_icgc_20;
DROP USER linked_icgc_20@localhost;
CREATE DATABASE linked_icgc_20 DEFAULT CHARACTER SET utf8;
CREATE USER linked_icgc_20@localhost IDENTIFIED BY 'p';
GRANT ALL ON linked_icgc_20.* to linked_icgc_20@localhost;

