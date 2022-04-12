CREATE DATABASE SCHOOL;
USE SCHOOL;

CREATE TABLE class_roster (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    class_id int,
    student_id int

);
CREATE TABLE class (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    class_name varchar (10),
    class_subject varchar (10)

);
CREATE TABLE student (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar (15),
    lastname varchar (15),
    grade_id int,
    address_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (grade_id) REFERENCES grade (id),
    FOREIGN KEY (address_id) REFERENCES student_address (id)
);
CREATE TABLE student_address (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    address varchar (40),
    town varchar (15),
    zip smallint,
    PRIMARY KEY (id)


);
CREATE TABLE grade (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    grade_num tinyint

);
