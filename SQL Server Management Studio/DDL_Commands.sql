
---- Data Defination Language Command -----
---1) Create -Create Table
---2) Alter - Alter Table 
---3) Drop - Remove Table

--1)Create Command
Create Table Student(
ID int,
Name varchar(50)
);
Select * from Student

--2)ALTER Command

Alter Table Student 
ADD Course varchar(50);

Alter Table Student
DROP COLUMN	Course;

--//You can rename table name, column name of an existing table, index name by using the system stored procedure sp_rename.
--Alter Table Student
--RENAME COLUMN Name to SName;

EXEC sp_rename 'Student.Name', 'S_Name';

ALTER TABLE Student
ALTER COLUMN S_Name nvarchar;

---3) Drop Command ----
Drop Table Student