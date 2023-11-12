Create table worker_1
(
workerId int primary key,
FirstName varchar(max),
LastName varchar(max),
Salary float,
Department varchar(max),
Gender varchar(10)
);

Insert into worker_1(workerId,FirstName) values (1,'vaishnavi')
Insert into worker_1 values(2,'Tanjiro','Kamado',453535,'IT','Male')
Insert into worker_1 values(3,'luffy','Monkey D.',453535,'IT','Male')
Insert into worker_1 values(4,'Rengoku','Kyojuro',453535,'Admin','Male')
Insert into worker_1 values(5,'vishal','singhal',453535,'Account','Male')
Insert into worker_1 values(6,'vipul','Kyojuro',453535,'HR','Male')
Insert into worker_1 values(7,'satish','Kyojuro',453535,'Account','Male')
Insert into worker_1 values(8,'Geetika','Kyojuro',453535,'Admin','Female')
select * from worker_1
--1)write query to fetch firstname in uppercase and alias name as workername
Select UPPER(FirstName) as WorkerName from worker_1 


--Q1. find the highest salary of the worker_1.
Select MAX(Salary) from worker_1 

--Q2. find the nth highest salary from the worker_1 table.
SELECT Salary from worker_1 as w where n-1=(select count(distinct(Salary)) from worker_1 as w1 where w1.Salary>w.Salary)

--Q3. find the nth lowest salary from the worker_1 table.
SELECT Salary from worker_1 as w where n-1=(select count(distinct(Salary)) from worker_1 as w1 where w1.Salary<w.Salary)

--Q4.Worker Count Department wise
Select Department, Count(workerId) from worker_1 group by Department

--Q5.Copy one table data into another table
Create table worker_2
(
workerId int primary key,
FirstName varchar(max),
LastName varchar(max),
);
Insert into worker_2(workerId,FirstName,LastName) Select workerId,FirstName,LastName from worker_1
--Q6.Find duplicate records
Select LastName, Count(LastName) from worker_1 group by LastName having COUNT(Lastname)>1

--Q7.Delete dupliate records
Delete from worker_1 where LastName NOT IN (Select LastName from worker_1 group by LastName having count(LastName) = 1)

--Q8.fetch first and last record
SELECT TOP 1 * FROM worker_1 ORDER BY workerId;
SELECT TOP 1 * FROM worker_1 ORDER BY workerId desc;
 
 select * from worker_1 
--Q9.update male to female and female to male in single query
UPDATE worker_1 SET gender = 
  CASE 
    WHEN gender = 'male' THEN 'female'
    WHEN gender = 'female' THEN 'male'
    ELSE gender
  END;

--Q10.Find all odd records
SELECT * FROM worker_1 WHERE workerId % 2 = 0;

--Q11.find all even records
SELECT * FROM worker_1 WHERE workerId % 2 = 1;

Create Table EmployeeInfo
(
EmpId int primary key,
EmpFname varchar(max),
EmpLname varchar(max),
Department varchar(max),
Project varchar(max),
Addres varchar(max),
DOB datetime ,
Gender varchar(max),
);

Insert into EmployeeInfo values(1,'sanjay','mehra','HR','P1','HYD',01/12/1976,'M')
Insert into EmployeeInfo values(2,'anaya','Forger','Admin','P2','Delhi',02/05/1968,'f')
Insert into EmployeeInfo values(3,'Rohan','Diwan','Account','P3','Mumbai',01/01/1980,'M')
Insert into EmployeeInfo values(4,'Sonia','Kulkarni','HR','P4','',02/05/1992,'F')
Insert into EmployeeInfo values(5,'Ankit','Kapoor','Admin','P5','HYD',01/12/1976,'M')

--EmpFname in uppercase alias EmpName
Select UPPER(EmpFname) as EmpName from EmployeeInfo

--fetch no. of employee where dept hr
Select count(EmpId) from EmployeeInfo where Department='HR'

----get current date
Select Getdate()

--retreive first four character empLname
Select SUBSTRING(EmpLname,1,4) from EmployeeInfo

--write query to find name begin with "s"
Select EmpFname from EmployeeInfo Where EmpFname like 's%'

--Q7.Write a query to fetch top 5 records.
Select  top 5 * from EmployeeInfo

 --Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”.
 --The first name and the last name must be separated with space.
 SELECT CONCAT(EmpFname,' ',EmpLname ) as FullName from EmployeeInfo;

-- Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.
Select EmpLname from EmployeeInfo where  EmpLname like '____A'

--Write a query to fetch details of all employees excluding the employees with first names,
--“Sanjay” and “Sonia” from the EmployeeInfo table.
Select * from EmployeeInfo where NOT (EmpFname='sanjay' or EmpFname='Sonia')

Create Table EmployeePosition_Table
(
EmpID int,
EmpPosition varchar(max),
DateOfJoining datetime ,
Salary float
);

Insert into EmployeePosition_Table values(1,'Manager',01/05/2022,500000)
Insert into EmployeePosition_Table values(2,'Executive',02/05/2022,750000)
Insert into EmployeePosition_Table values(3,'Manager',01/05/2022,90000)
Insert into EmployeePosition_Table values(2,'Lead',01/05/2022,500000)
Insert into EmployeePosition_Table values(1,'Executive',01/05/2022,500000)

SELECT Salary from EmployeePosition_Table as w where 2-1=(select count(distinct(Salary)) from
EmployeePosition_Table as w1 where w1.Salary>w.Salary)

--FIND employee whose  salary between 500000 to 1000000
Select * from EmployeePosition_Table where Salary between 500000 and 1000000

--Write a query to retrieve duplicate records from a table.
SELECT EmpID FROM EmployeePosition_Table
GROUP BY EmpID HAVING COUNT(EmpID) > 1

Alter table EmployeePosition_table
Add foreign key(EmpID) references EmployeeInfo(EmpId)
