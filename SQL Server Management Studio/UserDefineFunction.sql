---1) One input one output ---Scaler function
---2) Input Collection one outpt--aggregate function

--Scaler function without input parameter

Create Function Fun()
returns int
As
Begin
Declare @Data int
Set @Data=10
return @Data
End

Select dbo.Fun()



--Add Function
create function funAdd()
Returns int
AS
Begin
Declare @Res int, @a int, @b int
set @a=10;
set @b=20;
--Set @Res=@a+@b;
--return @Res
return @a+@b
ENd
select dbo.funAdd()


---//scaler function with input parameter

create function FnGetAdd(@a int,@b int)
returns int 
As
Begin
--Declare @result int
--set @result=@a+@b
return @a+@b
End

select dbo.FnGetAdd(22,33)
select dbo.FnGetAdd(10,30)


--// Even Odd

Create Function EvenOdd(@a int)
Returns varchar(20)
as
Begin 
Declare @out varchar(20)
if(@a%2=0)
Begin
--Set @out='is Even'
return 'is even'
End
else
Begin
--Set @out='is Odd'
return 'is out'
End
--return @out
End

select dbo.EvenOdd(11)


--



Select * from Student

Insert Student values(1, 'Vaishnavi', 400)
Insert Student values(2, 'Tanjiro', 75675)
Insert Student values(3, 'Luffy', 5687)
Insert Student values(4, 'Rengoku', 675)


Create Function Stud(@Fee float)
returns varchar(20)
as
Begin
Declare @Result varchar(50)
if(@Fee <= 500)
Begin
Set @Result='fee is minimum'
End
else
Begin
Set @Result='fee is maximum'
End
return @Result
End

Select dbo.Stud(Fee),* from Student

Create Table Worker (
Id int,
Name varchar(50),
Department varchar(50)
);

Select * from Worker

Insert Worker values(1, 'Vaishnavi', 'HR')
Insert Worker values(2, 'Tanjiro', 'Dev')
Insert Worker values(3, 'Luffy', 'HR')
Insert Worker values(4, 'Rengoku', 'Fin')

create function FnWorkerDept(@In varchar(20))
returns varchar(50)
As
Begin
Declare @Department varchar(50)
if(@In='HR')
Begin
Set @Department='Department is HR'
End
Else
Begin
Set @Department='Department is not HR'
End
return @Department
End

select dbo.FnWorkerDept(Department),* from Worker

----Table value function

create function FnWorkerTable()
returns TABLE
As
return select * from Worker

select * from FnWorkerTable()

--table value function =Join and view

go
Create Function FnJoin()
returns TABLE
As
Return Select Department,fee from Student as A inner join Worker as B on (A.Id = B.Id); --both column id is same error occured

Select * from FnJoin()

Create View VStudent
as Select * from Student where Id=3

Create Function FnView()
Returns Table 
As 
Return Select * from VStudent;

Select * from FnView()

