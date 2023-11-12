 -- View -1)Single View 2)Complex View
 
 -------Single View--------
Create View VGetData 
as
Select * from Employee

go


-------Selection DML Command----------
Select * from VGetData

------Insertion DML Command--------
go
 insert into VGetData(ID,Name,Price) values (6,'Unknown',37999)

-------Update DML Command---------
go
Update VGetData Set Name='XYZ' where ID=6

--------Delete DML Command-------
Delete VGetData Where Name='XYZ'



--------2)Complex View---------
--------We Cannot use INSERT,UPDATE,DELETE COMMAND IN COMPLEX VIEW
Select * from Employee
Select * from Dept

go
Create View VComplex
as
Select A.ID,A.Name,B.[Dept.] from Employee as A inner join Dept as B on A.ID =B.ID

go 
select * from VComplex

go 
--Create View VInsert as
--Insert into Employee,Dept (ID) Values(6)


