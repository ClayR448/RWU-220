CREATE DATABASE SCHOOL;
USE SCHOOL;

CREATE TABLE Student (
    id int auto_increment unique primary key,
    firstname varchar(20) null,
    lastname varchar(20) null,
    email varchar(20) null,
    classId int null,
    foreign key (classId) references class(id)
);
CREATE TABLE class (
    id int auto_increment unique primary key,
    class_num int not null
);

CREATE TABLE student_address (
    id int auto_increment unique primary key,
    street varchar(15) not null,
    num int not null,
    town varchar (20) not null,
    zip int not null,
    studentId int not null,
    foreign key (studentId) references student(id)
);

insert into student (firstname, lastname, email, classId) values ('John', 'Smith', 'jsmith@yyy.com', '4');
insert into student (firstname, lastname, email, classId) VALUES ('Jacob', 'Smith', 'jsmith1@yyy.com', '4');
insert into student (firstname, lastname, email, classId) VALUES ('Eva', 'sampson', 'Esampson@yyy.com', '5');
insert into student (firstname, lastname, email, classId) VALUES ('Clayton', 'Rix', 'crix@yyy.com', '6');
insert into student (firstname, lastname, email, classId) VALUES ('Ronnie', 'rad', 'rrad@yyy.com','3');
insert into student (firstname, lastname, email, classId) VALUES ('Angelina', 'Rix', 'Arix@yyy.com', '5');
insert into student (firstname, lastname, email, classId) VALUES ('Justin', 'crumb', 'jcrum@yyy.com', '3');
insert into student (firstname, lastname, email, classId) VALUES ('Ned', 'Stark', 'Nstark@yyy.com', '6');
insert into student (firstname, lastname, email, classId) VALUES ('Walter', 'White', 'Wwhite@yyy.com', '4');
insert into student (firstname, lastname, email, classId) VALUES ('Saul', 'Goodman', 'sgoodman@yyy.com', '6');
select * from student;
Select * from student ORDER BY classId;

insert into student_address (street, num, town, zip, studentId) VALUES ('Bunker RD', '16','Ipswich','01938','8023344');
insert into student_address (street, num, town, zip, studentId) VALUES ('Raymond ave','33','Rowley', '01945', '8023345');
insert into student_address (street, num, town, zip, studentId) VALUES ('summer st', '88', 'Hamilton','01967', '8023356');
insert into student_address (street, num, town, zip, studentId) VALUES ('randall rd', '345', 'Derry', '01934', '8023389');
insert into student_address (street, num, town, zip, studentId) VALUES ('Albert ave', '45', 'Portsmouth', '01978', '8023378');
insert into student_address (street, num, town, zip, studentId) VALUES ('river drive', '459', 'Ipswich', '01937', '8023348');
insert into student_address (street, num, town, zip, studentId) VALUES ('Clark rd', '978', 'Newbury', '01971', '8023381');
insert into student_address (street, num, town, zip, studentId) VALUES ('Apple ln', '127', 'Everett', '41245', '8023375');
insert into student_address (street, num, town, zip, studentId) VALUES ('Arno ave', '50', 'Reading' , '01971', '8023320');
insert into student_address (street, num, town, zip, studentId) VALUES ('Fall ave', '60', 'newport', '01875', '8023340');

insert into class (class_num) values ('1');
insert into class (class_num) values ('2');
insert into class (class_num) values ('3');
insert into class (class_num) values ('4');
insert into class (class_num) values ('5');
insert into class (class_num) values ('6');
insert into class (class_num) values ('7');
insert into class (class_num) values ('8');
insert into class (class_num) values ('9');
insert into class (class_num) values ('10');
