------DML Commands------
--1)Select 2)Insert 3)Update 4)Delete Commands

Create Table DDL(
Id Int ,
Name varchar(50),
Salary Float
);
 
Select * from DDL

Insert into DDL(Id,Name,Salary) values (1,'Vaishnavi',2354.50)
Insert into DDL values(2,'Luffy',3487476.67)
Insert into DDL(Id,Name,Salary) values (3,'Tanjiro',252786.50)
Insert into DDL(Id,Name,Salary) values (4,'Zoro',2354736.50)
Insert into DDL(Id,Name,Salary) values (5,'Inosuke',2354545.50)
Insert into DDL(Id,Name,Salary) values (6,'Rengoku',2535737.50)

Update DDL set Salary=500000 where Id=3;

Delete DDL where Id=1;

--Alter Table DDL    // to update constraint on column
--Add Constraint myPrimaryKey Primary key(Id)


--*********CONSTRAINTS*****************-----------

--NOT NULL - Ensures that a column cannot have a NULL value
--UNIQUE - Ensures that all values in a column are different
--PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
--FOREIGN KEY - Prevents actions that would destroy links between tables
--CHECK - Ensures that the values in a column satisfies a specific condition
--DEFAULT - Sets a default value for a column if no value is specified
--CREATE INDEX - Used to create and retrieve data from the database very quickly


CREATE TABLE Students (
    Id int 	PRIMARY KEY,
	Name varchar(50) NOT NULL,
	Mob_No  int UNIQUE,
	Age int DEFAULT 18 CHECK (Age>=18),


);
CREATE TABLE Course (
	StudentId int FOREIGN KEY REFERENCES Students(Id),
    CourseID int NOT NULL PRIMARY KEY,
    Course Varchar(50)
    
);

SELECT * from Students;
SELECT * FROM Course;
