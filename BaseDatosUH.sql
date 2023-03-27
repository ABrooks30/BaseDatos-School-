
CREATE DATABASE UNIVERSIDADUH

use UNIVERSIDADUH
CREATE TABLE SCHOOL
(
 SchoolID  int Primary key,
 SchoolName varchar(50),
 Descript varchar(1000),
 Adress varchar(50),
 Phone varchar (50),
 PostCode varchar (50),
 PostAdress varchar (50),
)
CREATE TABLE COURSE
(
 CourseID  int Primary key,
 CourseName varchar(50),
 SchoolId int,
 Descript varchar(1000),
)
CREATE TABLE STUDENT
(
 StudentID  int Primary key,
 ClassID int,
 StudentName varchar(100),
 StudentNumber varchar(20),
 TotalGrade float,
 Adress varchar (100),
 Phone varchar(20),
 EMail varchar(100),
)
CREATE TABLE TEACHER
(
 TeacherID  int Primary key,
 SchoolID int,
 Descript varchar(1000),
)
CREATE TABLE GRADE
(
 GradeId INT PRIMARY KEY,
 StudentId INT NOT NULL FOREIGN KEY REFERENCES STUDENT (StudentId),
 CourseId INT NOT NULL FOREIGN KEY REFERENCES COURSE (CourseId),
 Grade FLOAT,
 Comment VARCHAR(1000),
)
CREATE TABLE STUDENT_COURSES
(
 StudentId INT NOT NULL FOREIGN KEY REFERENCES STUDENT (StudentId),
 CourseId INT NOT NULL FOREIGN KEY REFERENCES COURSE (CourseId),
)

CREATE TABLE TEACHER_COURSES
(
 TeacherId INT NOT NULL FOREIGN KEY REFERENCES TEACHER (TeacherId),
 CourseId INT NOT NULL FOREIGN KEY REFERENCES COURSE (CourseId),
)
CREATE TABLE CLASS 
(
 ClassId INT PRIMARY KEY,
 SchoolId INT NOT NULL FOREIGN KEY REFERENCES SCHOOL (SchoolId),
 ClassNombre VARCHAR(50),
 Descripcion VARCHAR(1000),
)