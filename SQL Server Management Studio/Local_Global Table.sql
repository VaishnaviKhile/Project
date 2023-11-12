-- Local Table & Global Table- It's only for instance

--1) Local Table
Create Table #Student(
Id int,
Name varchar(20),
Dept varchar(20)
);

Select * from #Student

--2) Global Table --It lasts until last instance
Create Table ##Student(
Id int,
Name varchar(20),
Dept varchar(20)
);

Select * from ##Student
