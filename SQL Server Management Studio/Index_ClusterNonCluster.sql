CREATE TABLE Payment (    payment_id int NOT NULL,      amount float NOT NULL,    payment_date date NOT NULL,  );--insert recordsInsert into Payment (payment_id,amount,payment_date) Values  (389 , 4300 ,'2015-09-15' )INSERT INTO Payment (Payment_Id,Amount,Payment_Date) VALUES  (302 , 1200 , '2015-09-30' )INSERT INTO Payment (Payment_Id,Amount,Payment_Date) VALUES  (303 , 1500 , '2015-10-15' )INSERT INTO Payment (Payment_Id,Amount,Payment_Date) VALUES  (304 , 1500 , '2015-10-30' ) INSERT INTO Payment (Payment_Id,Amount,Payment_Date) VALUES  (305 , 1800 , '2015-09-15' ) INSERT INTO Payment (Payment_Id,Amount,Payment_Date) VALUES  (306 , 1800 , '2015-09-30' )   Select * from Payment--create clustered index --Syntax- Create Cluster/NonCluster index <IndexName> on <TableName> (<Column_Name>) create clustered index IxPayment on Payment (payment_id) --cannot create more than one clustered index on one table --// create clustered index IxdPayment on Payment (payment_date) //this show error    --display index 	--//To list the indexes created on a table in SQL Server, a system stored procedure sp_helpindex is used.   sp_helpindex Payment;    --when we create primary key and unique key while    --creating table clustered and non clustered index is automatically created     CREATE TABLE Employee1 (    emp_id int NOT NULL PRIMARY KEY ,    name varchar(40) NOT NULL unique,    birthdate date NOT NULL,    gender varchar(10) NOT NULL,    hire_date date NOT NULL,  );   CREATE TABLE Employee2 (    emp_id int NOT NULL PRIMARY KEY nonclustered,    name varchar(40) NOT NULL unique,    birthdate date NOT NULL,    gender varchar(10) NOT NULL,    hire_date date NOT NULL,  );create clustered index IxEmp on Employee2 (name)