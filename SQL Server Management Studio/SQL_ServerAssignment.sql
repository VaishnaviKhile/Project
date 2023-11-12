
--Create table StudentMaster having below columns
--1)	Id - int
--2)	StudentName - varchar
--3)	EmailID - nvarchar
--4)	EmailID1 - nvarchar
--5)	Address - varchar
--6)	Classes - char
--7)	IsPresent - bool

CREATE TABLE StudentMaster (
    Id INT ,
    StudentName VARCHAR(255),
    EmailID NVARCHAR(255),
    EmailID1 NVARCHAR(255),
    Address VARCHAR(255),
    Classes CHAR,
    IsPresent BIT
);

-- Create table SchoolMaster having below columns
--1)	Id - int
--2)	SchoolName - varchar
--3)	Web site - varchar
--4)	Is Active - bit

CREATE TABLE SchoolMaster (
    Id INT,
    SchoolName VARCHAR(50),
    Website VARCHAR(255),
    IsActive BIT
);

-- Create table class master having below columns
--1)	Id - int
--2)	Class name - varchar
--3)	Scheduler - DateTime
--4)	teacher ID - int


CREATE TABLE ClassMaster (
    Id INT ,
    ClassName VARCHAR(255),
    Scheduler DATETIME,
    TeacherID INT
);
--Create one table as user information having below columns
--1)	id - int & apply not null, primary key constraint on it
--2)	Login ID - varchar & apply unique constraint on it
--3)	Is active – bit and apply default constraint with value 1
--4)	Dob – datetime & apply CHECK constraint to add date less than 2004/03/14


CREATE TABLE UserInformation (
    id INT PRIMARY KEY NOT NULL,
    LoginID VARCHAR(60) UNIQUE,
    IsActive BIT DEFAULT 1,
    Dob DATETIME CHECK (Dob < '2004-03-14')
);

--DDL – Alter
--1)	Alter previous created table student master and delete repeated columns Email ID 1
--2)	Alter previous created table student master and rename column name from Classes to Class
--3)	Alter previous created table user information and add new column as password – int
--4)	Alter previous created table user information and alter column datatype of password column as varchar

Select * from StudentMaster
ALTER TABLE StudentMaster
DROP COLUMN EmailID1;

Select * from StudentMaster
--ALTER TABLE StudentMaster
--RENAME COLUMN Classes TO Class;
EXEC sp_rename 'StudentMaster.Classes' , 'Class'
Select * from StudentMaster

Select * from UserInformation

ALTER TABLE UserInformation
ADD Password INT;
Select * from UserInformation

ALTER TABLE UserInformation
ALTER COLUMN Password VARCHAR(255);

-- DDL – Drop
--1)	Drop old table class master from database
Drop Table ClassMaster;

-- DDL - ON DELETE CASCADE
CREATE TABLE Employee (  
  emp_id int NOT NULL PRIMARY KEY,  
  name varchar(40) NOT NULL,  
  birthdate date NOT NULL,  
  gender varchar(10) NOT NULL,  
  hire_date date NOT NULL,  
);  
GO
INSERT INTO Employee (emp_id, name, birthdate, gender, hire_date) VALUES  
(101, 'Bryan', '1988-08-12', 'M', '2015-08-26'),  
(102, 'Joseph', '1978-05-12', 'M', '2014-10-21'),  
(103, 'Mike', '1984-10-13', 'M', '2017-10-28'),  
(104, 'Daren', '1979-04-11', 'M', '2006-11-01'),  
(105, 'Marie', '1990-02-11', 'F', '2018-10-12');

Select * from Employee

--Table 2: Make changes in below create table script to apply on delete cascade clause on the table Payment before execute the below query

CREATE TABLE Payment (  
  payment_id int PRIMARY KEY NOT NULL,  
  --emp_id varchar(20) NOT NULL,  
  amount float NOT NULL,  
  payment_date date NOT NULL,  
  emp_id int FOREIGN KEY REFERENCES Employee(emp_id) ON DELETE CASCADE
);
INSERT INTO Payment (payment_id, emp_id, amount, payment_date) VALUES   
(301, 101, 1200, '2015-09-15'), 
(302, 101, 1200, '2015-09-30'),  
(303, 101, 1500, '2015-10-15'),  
(304, 101, 1500, '2015-10-30'),  
(305, 102, 1800, '2015-09-15'),  
(306, 102, 1800, '2015-09-30');

Delete Employee where emp_id=101

---2)	DML

CREATE TABLE Emp_Sal
(id int, 
emp_name varchar(100),
salary int
);
Insert into emp_sal values (1,'John',1000),
(1,'John Smith',1000),
(2,'Sam',1500),
(3,'Robin',2500),
(4,'Lucy W',5800),
(5,'Jarvis',15000),
(4,'Lufy',5800),
(5,'Jarvis',15000),
(1,'John Smith',1000)
Select * from Emp_Sal

--Using Arithmetic operator

SELECT emp_name AS EmployeeName, salary + 1000 AS IncrementedSalary
FROM Emp_Sal;

--Operator Precedence

SELECT id AS EmployeeID, (salary * 12) + 500 AS YearlySalaryWithDebit
FROM Emp_Sal;

-- Using Column Aliases

SELECT id AS EmployeeID, emp_name AS EmployeeName
FROM Emp_Sal;

--Concatenation operator
SELECT emp_name + ' (' + CAST(id AS VARCHAR) + ')' AS EmployeeInfo
FROM Emp_Sal;

--Eliminate duplicate row
SELECT DISTINCT * FROM Emp_Sal;


--Special Comparison Operator
--i)	Select all employees from emp_sal table having salary greater than 3000
--ii)	Select all employees from emp_sal table having salary greater than 3000 and less than 10000
--iii)	Select All employees whose name starts with J
--iv)	Select All employees whose name ends with s

SELECT * FROM Emp_Sal
WHERE salary > 3000;

SELECT * FROM Emp_Sal
WHERE salary > 3000 AND salary < 10000;

SELECT * FROM Emp_Sal
WHERE emp_name LIKE 'J%';

SELECT * FROM Emp_Sal
WHERE emp_name LIKE '%s';

-- Logical Operator

--i)	Select employees from emp_sal table whose salary is 1000 and 1500
--ii)	Select all employees and sort them by salary with descending order
--iii)	Select the count of employee in the table


SELECT * FROM Emp_Sal
WHERE salary = 1000 OR salary = 1500;

SELECT * FROM Emp_Sal
ORDER BY salary DESC;

SELECT COUNT(*) AS EmployeeCount
FROM Emp_Sal;

--aggregate functions

-- 1. SUMMATION OF Salary
SELECT SUM(salary) AS TotalSalary FROM Emp_Sal;

-- 2. Average Salary
SELECT AVG(salary) AS AverageSalary FROM Emp_Sal;

-- 3. Maximum Salary
SELECT MAX(salary) AS MaxSalary FROM Emp_Sal;

-- 4. Minimum Salary
SELECT MIN(salary) AS MinSalary FROM Emp_Sal;

-- 5. Count of Employees
SELECT COUNT(DISTINCT id) AS EmployeeCount FROM Emp_Sal;

--INSERT INTO Command

--CREATE TABLE Emp_Sal_copy (id int, emp_name varchar(100),salary int, created_date datetime)
--1)	Insert all records from Emp_Sal into Emp_Sal_copy table with created date as today’s date

CREATE TABLE Emp_Sal_copy (
    id int,
    emp_name varchar(100),
    salary int,
    created_date datetime
);

--Copy data from Emp_Sal to Emp_Sal_copy
INSERT INTO Emp_Sal_copy (id, emp_name, salary, created_date)
SELECT id, emp_name, salary, GETDATE() AS created_date FROM Emp_Sal;

Select * from Emp_Sal_copy

--UPDATE Command
--Use Emp_Sal_copy table

--1)Update salary of all employees with 500
 -- Add 500 in current salary of employee
	Update Emp_Sal_copy set salary=salary+500 
		
--2)Update Employee name with your name whose id is 1
	Update Emp_Sal_copy set emp_name='Vaishnavi' where id=1

--3)Update created date to 5 days later from today’s date
	UPDATE Emp_Sal_copy SET created_date = DATEADD(DAY, 5, created_date);

--DELETE Command

--Use Emp_Sal_copy table Delete records from table whose salary is greater than 7000
	Delete Emp_Sal_copy where salary > 7000

--Write below queries and write output
--1) select NULL +NULL ? => NULL
	Select NULL + NULL

--2) select  NULL + "Some string" ? => NULL
	Select NULL + 'Some String'

--3) select  1+ "1"  = ? => 2
	Select 1 + '1'

--4) select  "1" + "1"  =? =>11
	select  '1' + '1'

--5) Nth highest ssalary? first,second,third,4th, second last, last highest everything.
	SELECT salary FROM Emp_Sal_copy as e1
    WHERE N-1 = (SELECT COUNT(DISTINCT salary) FROM Emp_Sal_copy as e2 WHERE e2.salary > e1.salary)
	Select Max(Salary) from Emp_Sal_copy

	--1st highest
	SELECT salary FROM Emp_Sal_copy as e1
    WHERE 1-1 = (SELECT COUNT(DISTINCT salary) FROM Emp_Sal_copy as e2 WHERE e2.salary > e1.salary)
	Select Max(Salary) from Emp_Sal_copy

	--2nd highest
	SELECT salary FROM Emp_Sal_copy as e1
    WHERE 2-1 = (SELECT COUNT(DISTINCT salary) FROM Emp_Sal_copy as e2 WHERE e2.salary > e1.salary)
	Select Max(Salary) from Emp_Sal_copy

	--3rd highest
	SELECT salary FROM Emp_Sal_copy as e1
    WHERE 3-1 = (SELECT COUNT(DISTINCT salary) FROM Emp_Sal_copy as e2 WHERE e2.salary > e1.salary)
	Select Max(Salary) from Emp_Sal_copy

--6) EMployee table has gender column.. You have to update male to female and female to male in single query.
	UPDATE Employee SET gender = 
    CASE 
        WHEN gender = 'M' THEN 'F'
        WHEN gender = 'F' THEN 'M'
        End
    Select * From Employee

--7) How to get duplicate records from table using group by function
	SELECT emp_name, COUNT(*) AS DuplicateCount FROM Emp_Sal_copy
    GROUP BY emp_name HAVING COUNT(*) > 1;

--8) How to delete duplicate records from the table (use row nubmer funciton)
  WITH Duplicate AS (SELECT emp_name, ROW_NUMBER() OVER (PARTITION BY emp_name ORDER BY (SELECT NULL)) AS RowNum
   FROM Emp_Sal_copy )
DELETE FROM Duplicate
WHERE RowNum > 1;
 Select * from Emp_Sal_copy
--9) RAND(), LOWER(),ROWNUMBER(), SUBSTRING,SPLIT, functions in sql server.

	--RAND(): The RAND() function is used to generate a random float value between 0 and 1.
	SELECT RAND() AS RandomNumber ;

	--LOWER(): The LOWER() function is used to convert all characters in a string to lowercase.
	SELECT LOWER('Yo') AS LowercaseString;

	--ROW_NUMBER(): The ROW_NUMBER() function assigns a unique integer to each row within a partition of a result set.
	SELECT * ,ROW_NUMBER() OVER (PARTITION BY emp_name ORDER BY emp_name) AS RowNum FROM Emp_Sal;
	
	--SUBSTRING(): The SUBSTRING() function is used to extract a substring from a string.
	SELECT SUBSTRING('Hello World', 1, 5) AS SubstringResult;

	--SPLIT():SQL Server doesn't have a built-in SPLIT() function, 
     --One common method is to use the STRING_SPLIT function
	SELECT value FROM STRING_SPLIT('Apple,Orange,Banana', ',');


	--***************CH 4 - JOINS****************
	
   -- Create mst_employee table
   CREATE TABLE mst_employee (
    emp_id INT PRIMARY KEY IDENTITY(1,1),
    emp_first_name VARCHAR(255),
    emp_last_name VARCHAR(255),
    dept_id INT FOREIGN KEY REFERENCES mst_department(dept_id),
    manager_id INT REFERENCES mst_employee(emp_id)
    );
   -- Create mst_department table
    CREATE TABLE mst_department (
    dept_id INT PRIMARY KEY IDENTITY(1,1),
    dept_name VARCHAR(255)
   );

   --Insertion
  Insert into mst_employee(emp_first_name,emp_last_name,dept_id,manager_id) values ('John','Carter',1,null),
 ('Oliv',' Yew',1,1),('Aida',' Bugg',2,1),
('Simon','Johnston',2,1),
('Benjamin','Lee',1,1),
('Wanda',' Ross',3,5),
('Ferguson','Tracey',1,5),
('Leonard','Sutherland',2,2),
('Forsyth','Deirdre',3,6)

Insert into mst_department values('IT'),('HR'),('Admin'),('Account')
Select * from mst_department

-- 1) Select Employees details and his/her department name
SELECT e.emp_id, e.emp_first_name, e.emp_last_name, d.dept_name
FROM mst_employee e JOIN mst_department d ON e.dept_id = d.dept_id;

-- 2) Select All department and select number of employees working in that department
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM mst_department d LEFT JOIN mst_employee e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 3) Write query to select each employee mapped to each department
-- Note: Use CROSS JOIN
SELECT e.emp_id, e.emp_first_name, e.emp_last_name, d.dept_id, d.dept_name
FROM mst_employee e CROSS JOIN mst_department d;

-- 4) Write query to select all records from both tables
-- Note: Only matched records from both tables
SELECT * FROM mst_employee e JOIN mst_department d ON e.dept_id = d.dept_id;

-- 5) Write query to get the manager’s name for each employee from mst_employee
SELECT e.emp_id, e.emp_first_name, e.emp_last_name, m.emp_first_name AS manager_first_name, m.emp_last_name AS manager_last_name
FROM mst_employee e LEFT JOIN mst_employee m ON e.manager_id = m.emp_id;

-- 6) Write Query to get all records from employee table and matching records from department table.
SELECT e.*, d.dept_name FROM mst_employee e LEFT JOIN mst_department d ON e.dept_id = d.dept_id;

-- 7) Write Query to get all records from mst_department table and matching records from mst_employee table.
SELECT d.*, e.emp_first_name, e.emp_last_name FROM mst_department as d
LEFT JOIN mst_employee as e ON d.dept_id = e.dept_id;

-- 8) Write query to get all employees whose department is HR
SELECT e.* FROM mst_employee e JOIN mst_department d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'HR';

-- 9) Write query to get all employees count whose department is Account
SELECT COUNT(e.emp_id) AS employee_count FROM mst_employee e JOIN mst_department d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Account';

-- 10) Write query to get all employees whose department id is odd (odd number)
SELECT * FROM mst_employee WHERE dept_id % 2 = 1;

-- 11) Write query to get all employees whose department id is even (even number)
SELECT *  FROM mst_employee WHERE dept_id % 2 = 0;


---***************CH 5 - VIEWS*********

--1.  SIMPLE VIEW

--Create a simple view on the mst_employee table:
go
 CREATE VIEW vw_employee AS
SELECT * FROM mst_employee;
go

--2)	Write query to select all records from view having department id is 2
SELECT * FROM vw_employee WHERE dept_id = 2;

--3)	Write query to insert into created view and verify in mst_employee table. 

INSERT INTO vw_employee (emp_first_name, emp_last_name, dept_id, manager_id)
VALUES ('Vaishnavi', 'Khile', 2, 3);

--4)	Update employee first name to ‘Sameer’ into view having id 5 and verify in mst_employee table.
	UPDATE vw_employee SET emp_first_name = 'Sameer' WHERE emp_id = 5;

--5)	Delete employee from view having last name Tracey and verify in mst_employee table.
	DELETE FROM vw_employee WHERE emp_last_name = 'Tracey';

--6)	Rename your view into vm_Employee
	EXEC sp_rename 'vw_employee', 'vm_Employee';

--2.	COMPLEX VIEW
--1)Create complex view on mst_employee and mst_department to get below columns
--    a. Employee Id        b.Employee First Name
--    c.Employee Last Name  d.Department Name
go
CREATE VIEW vw_complex AS
SELECT   e.emp_id,e.emp_first_name,e.emp_last_name,d.dept_name
FROM mst_employee e JOIN mst_department d ON e.dept_id = d.dept_id;

go
--	2)	Write query to select all records from complex view
SELECT * FROM vw_complex;

--3)	Write query to insert into Complex View and take screen shot of output.

INSERT INTO vw_complex (emp_first_name, emp_last_name, dept_name)
VALUES ('VAISHNAVI', 'KHILE', 'AHSCHFS');



--************ CH 6 - SEQUENCE*************

--1)	What is SQL Sequence?   =>
--A SQL sequence is a database object in relational database management systems 
--(RDBMS) that is used to generate unique numeric values. These values are often
--used as primary key values for tables. Sequences are particularly useful in scenarios 
--where you need a unique identifier that is automatically incremented.

--2)Create sequence of numbers starting from 1 with increment by 1
	CREATE SEQUENCE Sq
	START WITH 1
	INCREMENT BY 1

--3)Read from Sequence of Numbers using Next Value For Function
	SELECT NEXT VALUE FOR Sq

--4)	Use sequence in Insert operation
  CREATE TABLE Employees (
  EmployeeID int Identity(1,1) PRIMARY KEY,
  UserID int,
  FirstName nvarchar(100) NOT NULL,
  LarstName nvarchar(100) NOT NULL
)
--a.Write query to insert records into Employees table and use your created sequence to insert UserID
INSERT INTO Employees(UserID,FirstName,LarstName) 
Values (NEXT VALUE FOR Sq , 'Vaishnavi','Khile')
Select * from Employees

--5)	Create new sequence as below
--a.Write query to alter seq_GetValue to increment it by 2 
--and set minimum value is 100 and maximum value is 100000
CREATE SEQUENCE seq_GetValue
       START WITH 1
       INCREMENT BY 1;
GO
ALTER SEQUENCE seq_GetValue
	RESTART WITH 200
    INCREMENT BY 2
    MINVALUE 100
    MAXVALUE 100000;

Select Next value for seq_GetValue



--*******************CH 7 - INDEXES********************


--1) What is an Index? Explain its type?
--   In SQL Server, an index is a database object that improves 
--   the speed of data retrieval operations on a database table. 
--   Indexes are created on columns in tables or views

--	TYPES OF INDEX

--1. Clustered Index:
--Defines the order in which data is physically stored in a table.
--There can be only one clustered index per table.
--The leaf nodes of a clustered index contain the actual data pages.

--2.NonCluster Index
--A nonclustered index is an index structure separate from the data 
--stored in a table that reorders one or more selected columns.

CREATE TABLE index_example
(
 id int, 
 f_name varchar(100) , 
 l_name varchar(100),
 addr varchar(500),
 email_id varchar(100),
 pan_number varchar(10)
 )
--2)Create clustered index on column id of table index_example
	CREATE CLUSTERED INDEX c_index
	ON index_example(id)

--3)Create clustered index on column pan_number of table index_example
--a.Take screen shot of the output when execute the query.
	CREATE CLUSTERED INDEX cpan_index 
	ON index_example(pan_number)

--4) Create non-clustered index on column f_name,email_id & pan_number of table index_example
	CREATE NONCLUSTERED INDEX n_index 
	ON index_example(f_name,email_id,pan_number)

--5) Delete non-clustered index from column f_name of table index_example
	DROP INDEX index_example.n_index

	
--6) What is difference between Clustered and Non-Clustered Index?

--Clustered Index:
--Determines the physical order of data in the table.
--The leaf nodes of the clustered index contain the actual data rows.
--There can be only one clustered index per table.
--Generally, used on columns that are frequently used in range queries.

--Non-Clustered Index:
--Does not affect the physical order of the actual data rows.
--The leaf nodes of the non-clustered index contain pointers to the actual data rows.
--Multiple non-clustered indexes can be created on a single table.
--Typically used on columns that are frequently used in search conditions and queries that do not involve a range of values.



--**************SQL UNION/ UNION ALL Operator**************

Create table Customers
(CustomerID int primary key identity(1,1)
,CustomerName varchar(100)
,ContactName varchar(100)
,Address varchar(100)
,City varchar(50)
,PostalCode varchar(10)
,Country varchar(50)
)

Create table Suppliers
(
SupplierID int primary key identity(1,1),
SupplierName varchar(100),
ContactName varchar(100),
Address varchar(100),
City varchar(50),
PostalCode varchar(10),
Country varchar(50),
)

Insert into Customers Values ('Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany')
Insert into Customers Values ('Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222',
                               'México D.F.','5021','Mexico')
Insert into Customers Values ('Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','5023','Mexico')
Select * from Customers

Insert into Suppliers values ('Exotic Liquid','Charlotte Cooper','49 Gilbert St.','London','EC1 4SD','UK')
Insert into Suppliers values ('New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA')
Insert into Suppliers values ('Grandma Kelly''s Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA')
Select * from Suppliers

--1)Write SQL statement to returns the unique cities from both Suppliers and Customers table
--a)Note: Use Union operator
	SELECT city FROM Customers UNION SELECT city FROM Suppliers

--2)Write SQL statement to returns the all cities from both Suppliers and Customers table
--b)Note: Use Union All operator
	SELECT city FROM Customers UNION ALL SELECT city FROM Suppliers

--3) Write SQL statement to returns the unique cities of German country from both Suppliers and Customers table
--c)	Note: Use Union operator with where clause
	SELECT city FROM Customers WHERE Country = 'Germany'
	UNION SELECT city FROM Suppliers WHERE Country = 'Germany'


--4)	Write SQL statement to returns the all cities of Mexico country from both Suppliers and Customers table
--d)	Note: Use Union All operator with where clause
    SELECT city FROM Customers WHERE Country = 'Mexico'
	UNION ALL SELECT city FROM Suppliers WHERE Country = 'Mexico'

	
	--************SQL EXISTS/ NOT EXISTS Operator***********

--1) Write SQL query to check if Supplier is exists or not In table Suppliers
--a. Use EXISTS operator in where condition.


IF EXISTS (SELECT 1 FROM Suppliers WHERE SupplierName = 'Supplier')
    PRINT 'Supplier exists.'
ELSE
    PRINT 'Supplier does not exist.';


--2) Write SQL query to insert record into Customers table.
--   Validate Customer name before inserting. If Customer name is exists then Update it else Insert new record.
	
	DECLARE @CustomerName varchar(100) = 'Alfreds Futterkiste';

    IF EXISTS (SELECT 1 FROM Customers WHERE CustomerName = @CustomerName)
BEGIN
    -- Customer exists, update the record
    UPDATE Customers SET ContactName = 'ABC',Address = 'Loremfsh',
                        City = 'Seoul',PostalCode = '32423', Country = 'India'
    WHERE CustomerName = @CustomerName;
    PRINT 'Customer updated.';
END
ELSE
BEGIN
    -- Customer does not exist, insert a new record
    INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES (@CustomerName, 'Vaishnavi', 'Pune', 'Nagar', '26768', 'India');
    PRINT 'New customer inserted.';
END;


--********************SQL Server Functions*******************


--1) Write query to get the ASCII value of ‘A’
     SELECT ASCII('A') AS AsciiValue;

--2) Write query to get the character name of ASCII value 65
     SELECT CHAR(65) AS CharacterName;

--3) Write query to get the index of a from name ‘India’
	 SELECT CHARINDEX('a', 'India') AS IndexOfA;

--4)	Write query to join your first name and last name and name the column (give alias) as FullName.
      SELECT CONCAT('Vaishnavi', ' ', 'Khile') AS FullName;

--5)	Write query to get the length of string ‘SQL Server’
		SELECT LEN('SQL Server') AS StringLength;

--6)	Write query to get date into US and Indian format
--a.	Take todays date using function.
	   SELECT FORMAT(GETDATE(), 'MM/dd/yyyy') AS USDateFormat,
       FORMAT(GETDATE(), 'dd/MM/yyyy') AS IndianDateFormat;

--7)	Write query to select 5 characters of string ‘SQL Server’ from left
		SELECT LEFT('SQL Server', 5) AS LeftSubstring;

--8)	Write query to select 5 characters of string ‘SQL Server’ from right
		SELECT RIGHT('SQL Server', 5) AS RightSubstring;

--9)	Write query to convert your name into lower case
		SELECT LOWER('VAisHnAVi') AS LowerCaseName;

--10)	Write query to convert your name into upper case
		SELECT UPPER('vaishnavi') AS UpperCaseName;

--11)	Write query to remove all spaces from Left side from string ‘        This is SQL Function’
		SELECT LTRIM('        This is SQL Function') AS LeftTrimmedString;

--12)	Write query to remove all spaces from Right side from string ‘This is SQL Function             ’
		SELECT RTRIM('This is SQL Function             ') AS RightTrimmedString;

--13)	Write query to remove all spaces from both side from string ‘        This is SQL Function          ’
		SELECT LTRIM(RTRIM('        This is SQL Function          ')) AS TrimmedString;

--14)	Write query to replace ‘SQL’ to ‘database’ in to string ‘SQL Tutorial’
		SELECT REPLACE('SQL Tutorial', 'SQL', 'database') AS ReplacedString;

--15)	Write query to print your name 5 times
		SELECT REPLICATE('Vaishnavi', 5) AS RepeatedName;

--16)	Write query to print ‘SQL Tutorial’ as ‘	lairotuT LQS’
--a.	Reverse the string
		SELECT REVERSE('SQL Tutorial') AS ReversedString;

--17)	Write query to select 1st 3 characters from string ‘SQL Tutorial’
		SELECT LEFT('SQL Tutorial', 3) AS FirstThreeCharacters;

--18)	Select Customer name from Customers table in upper case
		SELECT UPPER(CustomerName) AS UpperCaseCustomerName FROM Customers;

--19)	Select 6 characters from 3rd index of Customer name from Customers table in lower case
		SELECT LOWER(SUBSTRING(CustomerName, 3, 6)) AS LowerCaseSubstring FROM Customers;



create table Products
(
ProductID int primary key,
ProductName varchar(100),
SupplierID int,
Unit varchar(100),
Price decimal(18,2)
)

Insert into Products (ProductID,ProductName,SupplierID,Unit,Price) values 
(1,'Chais',1,'10 boxes x 20 bags','18'),
(2,'Chang',1,'24 - 12 oz bottles','19'),
(3,'Aniseed Syrup',1,'12 - 550 ml bottles','10'),
(4,'Chef Antons Cajun Seasoning',2,'48 - 6 oz jars','22'),
(5,'Chef Antons Gumbo Mix',2,'36 boxes','21.35'),
(6,'Grandmas Boysenberry Spread',3,'12 - 8 oz jars','25'),
(7,'Uncle Bobs Organic Dried Pears',3,'12 - 1 lb pkgs.','30'),
(8,'Northwoods Cranberry Sauce',3,'12 - 12 oz jars','40'),
(9,'Mishi Kobe Niku',1,'18 - 500 g pkgs.','97'),
(10,'Ikura',1,'12 - 200 ml jars','31'),
(11,'Queso Cabrales',1,'1 kg pkg.','21'),
(12,'Queso Manchego La Pastora',2,'10 - 500 g pkgs.','38'),
(13, 'Chang',2,'2 kg box','6'),
(14,'Tofu',3,'40 - 100 g pkgs.','23.25'),
(15,'Genen Shouyu',3,'24 - 250 ml bottles','15.5'),
(16, 'Chang',3,'32 - 500 g boxes','17.45'),
(17,'Alice Mutton',1,'20 - 1 kg tins','39'),
(18,'Carnarvon Tigers',1,'16 kg pkg.','62.5'),
(19,'Teatime Chocolate Biscuits',1,'10 boxes x 12 pieces','9.2'),
(20,'Sir Rodneys Marmalade',2,'30 gift boxes','81'),
(21,'Sir Rodneys Scones',2,'24 pkgs. x 4 pieces','10'),
(22,'Gustafs Knäckebröd',3,'24 - 500 g pkgs.','21'),
(23, 'Chais',3,'12 - 250 g pkgs.','9'),
(24,'Guaraná Fantástica',3,'12 - 355 ml cans','4.5'),
(25,'NuNuCa Nuß-Nougat-Creme',1,'20 - 450 g glasses','14'),
(26,'Gumbär Gummibärchen',1,'100 - 250 g bags','31.23'),
(27,'Schoggi Schokolade',1,'100 - 100 g pieces','43.9'),
(28,'Rössle Sauerkraut',2,'25 - 825 g cans','45.6'),
(29,'Thüringer Rostbratwurst',2,'50 bags x 30 sausgs.','123.79'),
(30,'Nord-Ost Matjeshering',3,'10 - 200 g glasses','25.89'),
(31,'Gorgonzola Telino',3,'12 - 100 g pkgs','12.5'),
(32,'Mascarpone Fabioli',3,'24 - 200 g pkgs.','32'),
(33,'Geitost',1,'500 g','2.5'),
(34,'Sasquatch Ale',1,'24 - 12 oz bottles','14'),
(35,'Steeleye Stout',1,'24 - 12 oz bottles','18'),
(36,'Inlagd Sill',2,'24 - 250 g jars','19'),
(37, 'Chais',2,'12 - 500 g pkgs.','26'),
(38,'Côte de Blaye',3,'12 - 75 cl bottles','263.5'),
(39,'Chartreuse verte',3,'750 cc per bottle','18'),
(40,'Boston Crab Meat',3,'24 - 4 oz tins','18.4'),
(41,'Jacks New England Clam Chowder',1,'12 - 12 oz cans','9.65'),
(42,'Singaporean Hokkien Fried Mee',1,'32 - 1 kg pkgs.','14'),
(43,'Ipoh Coffee',1,'16 - 500 g tins','46'),
(44,'Gula Malacca',2,'20 - 2 kg bags','19.45'),
(45,'Røgede sild',2,'1k pkg.','9.5'),
(46,'Spegesild',3,'4 - 450 g glasses','12'),
(47,'Zaanse koeken',3,'10 - 4 oz boxes','9.5'),
(48,'Chocolade',3,'10 pkgs.','12.75'),
(49,'Maxilaku',1,'24 - 50 g pkgs.','20'),
(50,'Valkoinen suklaa',1,'12 - 100 g bars','16.25'),
(51,'Manjimup Dried Apples',1,'50 - 300 g pkgs.','53'),
(52,'Filo Mix',2,'16 - 2 kg boxes','7'),
(53,'Perth Pasties',2,'48 pieces','32.8'),
(54,'Tourtière',3,'16 pies','7.45'),
(55,'Pâté chinois',3,'24 boxes x 2 pies','24'),
(56,'Pâté chinois',null,'24 boxes x 2 pies','24'),
(57,'Pâté chinois',null,'24 boxes x 2 pies','24'),
(58,'Gnocchi di nonna Alice',null,'24 - 250 g pkgs.','38')

--20)	Write query to get Average of "Price" column in the "Products" table
        SELECT AVG(Price) AS AveragePrice FROM Products;

--21)	Write query to get Sum of "Price" column in the "Products" table
		SELECT SUM(Price) AS TotalPrice FROM Products;

--22)	Write query to select max Price of the product from Product table
--a.	Product name is need to be select in your query
		SELECT MAX(Price) AS MaxPrice, ProductName FROM Products;

--23)	Write query to select max Price of the product from Product table
--a.	Product name & Supplier name is need to be select in your query. Use Suppliers table to join with Products table
		SELECT MAX(P.Price) AS MaxPrice, P.ProductName, S.SupplierName FROM Products P
        JOIN  Suppliers S ON P.SupplierID = S.SupplierID
        GROUP BY P.ProductName, S.SupplierName;

--24)	Write query to select max Price of the Supplier from Product table
--a.	Supplier name is need to be select in your query. Use Suppliers table to join with Products table
		SELECT MAX(P.Price) AS MaxPrice, S.SupplierName FROM Products P
		JOIN Suppliers S ON P.SupplierID = S.SupplierID GROUP BY S.SupplierName;

--25)	Write query to select Minimum Price of the product from Product table
--a.	Product name is need to be select in your query
		SELECT MIN(Price) AS MinPrice, ProductName FROM Products;

--26)	Write query to select Minimum Price of the product from Product table
--a.	Product name & Supplier name is need to be select in your query. Use Suppliers table to join with Products table
		SELECT MIN(P.Price) AS MinPrice, P.ProductName, S.SupplierName FROM Products P
		JOIN Suppliers S ON P.SupplierID = S.SupplierID GROUP BY P.ProductName, S.SupplierName;

--27)	Write query to select Minimum Price of the Supplier from Product table
--a.	Supplier name is need to be select in your query. Use Suppliers table to join with Products table
		SELECT MIN(P.Price) AS MinPrice, S.SupplierName FROM Products P
		JOIN Suppliers S ON P.SupplierID = S.SupplierID GROUP BY S.SupplierName;

--28)	Select all records from Products table whose Supplier ID is null
		SELECT * FROM Products WHERE SupplierID IS NULL;

--29)	Select all records from Products table and check Supplier ID is null then print as 
--		‘No Supplier mapped to product’ else print supplier name
--a.	Use Suppliers table to join with Products table
		SELECT P.ProductID, P.ProductName, P.SupplierID,
        CASE
           WHEN P.SupplierID IS NULL THEN 'No Supplier mapped to product'
           ELSE S.SupplierName
        END AS SupplierName, P.Unit, P.Price FROM Products P
		LEFT JOIN Suppliers S ON P.SupplierID = S.SupplierID;


--************User Defined Functions***************


CREATE TABLE Employe
(
 EmpID int PRIMARY KEY,
 FirstName varchar(50) NULL,
 LastName varchar(50) NULL,
 Salary int NULL,
 Address varchar(100) NULL,
)

Insert into Employe(EmpID,FirstName,LastName,Salary,Address) Values(1,'Mohan','Chauahn',22000,'Delhi');
Insert into Employe(EmpID,FirstName,LastName,Salary,Address) Values(2,'Asif','Khan',15000,'Delhi');
Insert into Employe(EmpID,FirstName,LastName,Salary,Address) Values(3,'Bhuvnesh','Shakya',19000,'Noida');
Insert into Employe(EmpID,FirstName,LastName,Salary,Address) Values(4,'Deepak','Kumar',19000,'Noida');


--1)	Create function to get Full name of Employee from Employee table
CREATE FUNCTION GetFullName(@FirstName VARCHAR(50), @LastName VARCHAR(50))
RETURNS VARCHAR(101)
AS
BEGIN
    DECLARE @FullName VARCHAR(101);
    SET @FullName = ISNULL(@FirstName, '') + ' ' + ISNULL(@LastName, '');
    RETURN @FullName;
END;

Select dbo.GetFullName(FirstName,LastName), * from Employe

--2)	Create function to get below information of employee from Employee table
--a.	EmpID
--b.	FullName using Previous created function
--c.	Salary
--d.	Address
--Note: Create tabled Valued function
CREATE FUNCTION dbo.GetEmployeeInformation()
RETURNS TABLE
AS
RETURN
(
    SELECT EmpID, dbo.GetFullName(FirstName, LastName) AS FullName, Salary, Address
    FROM Employe
);
-- Select data using the table-valued function
SELECT * FROM dbo.GetEmployeeInformation();


--**************Stored Procedure***************

CREATE TABLE Employee_details
(
 EmpID int PRIMARY KEY,
 FirstName varchar(50) NULL,
 LastName varchar(50) NULL,
 Salary int NULL,
 Address varchar(100) NULL,
)
--1) Create stored procedure to insert record into Employee_details
	Go
	CREATE PROCEDURE uspInsertEmployee
    @EmpID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Salary INT,
    @Address VARCHAR(100)
AS
BEGIN
    INSERT INTO Employee_details (EmpID, FirstName, LastName, Salary, Address)
    VALUES (@EmpID, @FirstName, @LastName, @Salary, @Address);
END;
Exec uspInsertEmployee	1,'hi','hk',3432,'dsfagdsg'
--2)	Create stored procedure to Get all record from Employee_details
go
CREATE PROCEDURE uspGetAllEmployees
AS
BEGIN
    SELECT * FROM Employee_details;
END;
EXEC uspGetAllEmployees
--3)	Create stored procedure to get employee record from Employee_details with respect to Employee ID
		go
CREATE PROCEDURE uspGetEmployeeByID
 @EmpID INT
AS
BEGIN
    SELECT * FROM Employee_details WHERE EmpID = @EmpID;
END;
--4)	Create stored procedure to Update employee record from Employee_details with respect to Employee ID
	Go
	CREATE PROCEDURE uspUpdateEmployee
    @EmpID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Salary INT,
    @Address VARCHAR(100)
AS
BEGIN
    UPDATE Employee_details
    SET FirstName = @FirstName,
        LastName = @LastName,
        Salary = @Salary,
        Address = @Address
    WHERE EmpID = @EmpID;
END;
--5)	Create stored procedure to Delete record from Employee_details based on Employee ID
    Go
CREATE PROCEDURE uspDeleteEmployee
 @EmpID INT
AS
BEGIN
    DELETE FROM Employee_details WHERE EmpID = @EmpID;
END;
--6)	Create stored procedure to insert and update record into/from Employee_details
--a.	Use EXISTS operator to check data is already present in table or not. If record is not present in to table then insert otherwise update record.
--b.	Check Employee ID and Name in condition and then do the operation
	
	CREATE PROCEDURE uspInsertUpdateEmployeeDet
    @EmpID INT,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @Salary INT,
    @Address VARCHAR(100)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employee_details WHERE EmpID = @EmpID)
    BEGIN
        -- Update existing record
        EXEC uspUpdateEmployee @EmpID, @FirstName, @LastName, @Salary, @Address;
    END
    ELSE
    BEGIN
        -- Insert new record
        EXEC uspInsertEmployee @EmpID, @FirstName, @LastName, @Salary, @Address;
    END
END;
--7)	Create stored procedure to Get all record from Employee_details if ID is passed null or 0(zero) otherwise get the employee based on passed Employee ID
CREATE PROCEDURE uspGetEmployeeDetails
    @EmpID INT = NULL
AS
BEGIN
    IF @EmpID IS NULL OR @EmpID = 0
        SELECT * FROM Employee_details;
    ELSE
        SELECT * FROM Employee_details WHERE EmpID = @EmpID;
END;
--8)	Alter your stored procedure created in Que. 6 to uspInsertUpdateEmployeeDet
EXEC sp_rename 'uspGetEmployeeDetails', 'uspInsertUpdateEmployeeDetails';



--********************Temporary Table***********************


--1)	What is temporary table? Describe it in details.
--A temporary table in SQL Server is a special type of table that is stored in the tempdb system database. 
--It is used to store and process intermediate results during the execution of a query or a batch of queries. 
--Temporary tables are particularly useful when complex queries involve multiple steps or when you need to 
--store and manipulate temporary data.Temporary tables are automatically dropped when the session that
--created them ends or when the connection is closed. They are helpful for breaking down complex problems 
--into simpler steps and can improve query performance.

--2)	What is difference between Local Temporary Table & Global Temporary Table.

--Local Temporary Table:
--Exists only for the duration of the connection or session that created it.
--Identified by a single pound (#) sign followed by the table name (e.g., #LocalTempTable).
--Can only be accessed by the session that created it.

--Global Temporary Table:
--Exists for the duration of all connections across all sessions.
--Identified by a double pound (##) sign followed by the table name (e.g., ##GlobalTempTable).
--Can be accessed by any session, but the table is dropped when the last session referencing it is closed.

--3)	Create Local Temporary table with name EmployeeDet having below details
--a.	Id int
--b.	Name varchar(50)
--c.	Addr varchar(150)
--d.	Salary money
CREATE TABLE #EmployeeDet (
    Id INT,
    Name VARCHAR(50),
    Addr VARCHAR(150),
    Salary MONEY
);

--4)	Insert Records into Local Temporary Table EmployeeDet
INSERT INTO #EmployeeDet (Id, Name, Addr, Salary)
VALUES (1, 'John Doe', '123 Main St', 50000),
       (2, 'Jane Smith', '456 Oak Ave', 60000);

--5)	Open New Query editor in SQL Server Management Studio and
--       try to select all records from Local Temp Table EmployeeDet
--a.	Take screen shot of output window
SELECT * FROM #EmployeeDet;


--6)	Create Global Temporary table with named it as EmployeeMaster having below details
--a.	Id int
--b.	Name varchar(50)
--c.	Addr varchar(150)
--d.	Salary money
CREATE TABLE ##EmployeeMaster (
    Id INT,
    Name VARCHAR(50),
    Addr VARCHAR(150),
    Salary MONEY
);

--7)	Insert Records into Local Temporary Table EmployeeMaster
INSERT INTO ##EmployeeMaster (Id, Name, Addr, Salary)
VALUES (1, 'Alice Johnson', '789 Pine St', 70000),
       (2, 'Bob Williams', '101 Maple Dr', 80000);

--8)	Open New Query editor in SQL Server Management Studio and try to select all records from Local Temp Table EmployeeMaster
--a.	Take screen shot of output window
SELECT * FROM ##EmployeeMaster;



