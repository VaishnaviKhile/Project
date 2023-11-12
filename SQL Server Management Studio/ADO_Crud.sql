Select * from Student

go
Create proc SP_GetAllElements
as
Select * from Student

go

Create proc SP_GetById
@id int
as
Select * from Student where ID=@id

go

Create proc SP_Insertion
@name varchar(max)
as
Insert into Student values (@name)

go
Create proc SP_Updation
@id int,
@name varchar(max)
as
Update Student set NAME=@name where ID= @id

go
Create proc SP_Deletion
@id int
as
Delete from Student where ID=@id