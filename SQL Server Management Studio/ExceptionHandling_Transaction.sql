--Exception Handling -(Try catch)

Begin Try 
select 10/0;
End Try
Begin Catch
Print 'Divisible by zero is not possible'
End Catch

Create Table Student (
Id int,
Name varchar(50),
Course varchar(20)
);
 
 Insert into Student values(1,'Vaishnavi','C#');
 Insert into Student values(2,'Gojo','C++');
 Insert into Student values(1,'Itadori','Java');
 Insert into Student values(1,'Nobara','C#');

 select * from Student

--try catch with insert and print statement 

Begin Try 

  insert into Student values ('5','Megumi',6)
  
End Try
Begin Catch
  Print'string is not allowed for integer'
End Catch


--try catch with update and print statement 

Create Table Customer(
id int,
Name varchar(50),
Location varchar(50),
Pay int,
Salary int
);
Select * from Customer

Begin Try 

Begin Transaction
insert into customer values(3009,'Vaishnavi','pune',200,5001)
insert into customer values(3010,'Tanjiro','pune',200,5001)
insert into customer values(3011,'Jin','pune','dsf',5001)
insert into customer values(3012,'Jungkook','shubham',200,5001)
 Commit Transaction
End Try

Begin Catch

  Print'string is not allowed for integer'
End Catch

--try catch with error functions

Begin Try 

 Update customer Set  Pay='abc' Where id=3002
End Try
Begin Catch
 select ERROR_STATE() as [Error State],
        ERROR_SEVERITY() as [Error Severity],
		ERROR_PROCEDURE() as [Error Procedure],
		ERROR_NUMBER() as [Error Number],
		ERROR_LINE() as [Error Line],
		ERROR_MESSAGE() as [Error Message]
End Catch

select * from customer

