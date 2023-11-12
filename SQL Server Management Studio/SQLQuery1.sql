--without Go it'll give batch error 
select * from Table1 
Go

--Create Storage Procedure - Compile only once
create procedure SPGetWorker
As
Begin
select * from Table1
End

Exec SPGetWorker
