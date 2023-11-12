--Assign1 : 

--Que 1) Calculate the factorial of the given number.
Create Function FnFactorial(@n int)
RETURNS INT
AS
BEGIN
    DECLARE @result INT = 1;

    WHILE @n > 1
    BEGIN
        SET @result = @result * @n;
        SET @n = @n - 1;
    END;

    RETURN @result;
END;
 
 Select dbo.FnFactorial(4)

-- Que 2)  Find prime number in  1-100 numbers and print the same.

DECLARE @I INT=2
DECLARE @PRIME INT=0
DECLARE @OUTPUT TABLE (NUM INT)
WHILE @I<=100
BEGIN
    DECLARE @J INT = @I-1
    SET @PRIME=1
    WHILE @J>1
    BEGIN
        IF @I % @J=0
        BEGIN
            SET @PRIME=0
        END
        SET @J=@J-1
    END
    IF @PRIME =1
    BEGIN
        INSERT @OUTPUT VALUES (@I)
    END
    SET @I=@I+1
END
SELECT * FROM @OUTPUT

---3)	PRINT 1-10 odd even numbers.
Go
Create Procedure FnEvenOdd
AS
BEGIN
    DECLARE @result INT ,@n INT =1;

    WHILE @n <= 10
    BEGIN
        If @n % 2=0
		Begin
		 Print Convert(varchar(10),@n) +' is Even'
		End
		Else
		Begin
		print Convert(varchar(10),@n) + ' is Odd'
		End
		Set @n =@n+1
    END;

    RETURN @result;
END;

Exec dbo.FnEvenOdd

   
----2)	The structured query language

----Assign1 : 
--1)	ItemMaster– 



create table ColourMaster    
(
ColourId int primary key identity(1,1),
ColourName varchar(100) not null,
IsActive bit default(1)
)

create table ManufacturerMaster
(
ManufacturerId int primary key identity(1,1),
ManufacturerName varchar(100) not null,
IsActive bit default(1)
)

create table CategoryMaster
(
CategoryId int primary key identity(1,1),
CategoryName varchar(max),
Description varchar(100)
)

create table SubCategoryMaster
(
SubCategoryId int primary key identity(1,1),
SubCategoryName varchar(50),
Description varchar(100),
CategoryId int foreign key references CategoryMaster(CategoryId)
)

create table UnitMaster
(
UnitId int primary key identity(1,1),
UnitName varchar(max),
)

create table BranchMaster
(
BranchId int primary key identity(1,1),
BranchName varchar(100),
IsActive bit default(1)
)

create table RoleMaster
(
RoleId int primary key identity(1,1),
RoleName varchar(50)
)

create table Admin_LoginUserMasters
(
LoginUserId int primary key identity(1,1),
UserName varchar(50) not null,
Password varchar(50) not null,
IsActive bit default(1),

EmployeeId int,
BranchId varchar(50),
SystemEntryDate datetime
)



select * From ColourMaster
select * from ManufacturerMaster
select * From CategoryMaster
select * from SubCategoryMaster
select * From UnitMaster
select * From BranchMaster
select * From Admin_LoginUserMaster

--ItemMaster Table:

create table ItemMaster
(
ID int primary key identity(1,1),
ItemName varchar(max),
Material varchar(max),
ItemType varchar(max),
ItemSubType varchar(max),
Color varchar(max),
UOM varchar(255),
HSNCODE varchar(255),
GSTRate decimal(20,2),
PurchaseCost decimal(20,2),
SellingPrice decimal(20,2),
UserName varchar(max),
LoginBranch varchar(max),
SystEntryDate datetime,
RawMaterial varchar(50),
SubCategoryId int foreign key references SubCategoryMaster(SubCategoryId),
ManufacturerId  int foreign key references ManufacturerMaster(ManufacturerId ),
ColourId  int foreign key references ColourMaster(ColourId ),
UnitId   int foreign key references UnitMaster(UnitId),
LoginUserId   int foreign key references Admin_LoginUserMasters(LoginUserId),
BranchId   int foreign key references BranchMaster(BranchId),
CategoryId   int foreign key references CategoryMaster(CategoryId  ),
DrawingNo varchar(50),
Specification varchar(500)
)
Select * from ItemMaster


------2)	CustomerMaster

create table CustomerTypeMaster
(
CustomerTypeId int primary key identity(1,1),
CustomerType varchar(100) not null,
IsActive bit default(1)
)

create table CountryMaster
(
CountryId int primary key identity(1,1),
CountryName varchar(250)
)

create table StateMaster
(
StateId int primary key identity(1,1),
StateName varchar(250),
CountryId int
)

create table CityMaster
(
CityId int primary key identity(1,1),
CityName varchar(250),
StateId int
)

    select * From CustomerTypeMaster
    select * From CountryMaster
    select * From StateMaster
    select * from CityMaster

create table CustomerMaster
(
Id int primary key identity(1,1),
CustCode varchar(max),
CustName varchar(max),
ContactPerson varchar(max),
Branch varchar(max),
Address1 varchar(max),
Address2 varchar(max),
City varchar(max),
State varchar(max),
PinCode numeric(6,0),
Country varchar(max),
EmailID varchar(max),
Telephone numeric(18,0),
Mobile numeric(10,0),
Fax varchar(max),
Website varchar(max),
GSTIN varchar(max),
Remarks varchar(max),
UserName varchar(max),
LoginBranch varchar(max),
SysEntryDate datetime,
CustomerTypeId int foreign key references CustomerTypeMaster(CustomerTypeId),
CityId int foreign key references CityMaster(CityId),
StateId int foreign key references StateMaster(StateId),
CountryId int foreign key references CountryMaster(CountryId),
BranchId int foreign key references BranchMaster(BranchId),
LoginUserId   int foreign key references Admin_LoginUserMaster(LoginUserId)
)



--3)	EmployeeMaster

create table BloodGroupMaster 
(
BID int primary key identity(1,1),
BloodGroup varchar(max),
)

create table GenderMaster
(
GID int primary key identity(1,1),
Gender varchar(max)
)

create table WeekOffMaster
(
WID int primary key identity(1,1),
WeekOff varchar(max)
)

create table MaritalStatusMaster
(
MSID int primary key identity(1,1),
MaritalStatus varchar(max)
)

create table DepartmentMaster
(
DID int primary key identity(1,1),
DName varchar(max)
)

create table ContractorMaster
(
ContractorId int primary key identity(1,1),
ContractorName varchar(max)
)

create table DesignationMaster
(
DesingnationId int primary key identity(1,1),
DesignationName varchar(max)
)

create table QualificationMaster
(
QualificationId int primary key identity(1,1),
QualificationName varchar(max)
)

create table LeaveMaster
(
LeaveId int primary key identity(1,1),
LeaveName varchar(max)
)

create table PayTypeMaster
(
PayTypeId int primary key identity(1,1),
PayTypeName varchar(max)
)

 select * From BloodGroupMaster 
 select * From GenderMaster  
 select * From WeekOffMaster  
 select * From MaritalStatusMaster  
 select * From DepartmentMaster  
 select * From CityMaster  
 select * From StateMaster 
 select * From CountryMaster
 select * From ContractorMaster
 select * from DesignationMaster
 select * from QualificationMaster
 select * From DepartmentMaster
 select * From LeaveMaster


 create table EmployMaster
(
ESrNo int primary key identity(1,1),
EmpCode varchar(10),
Title varchar(max),
FirstName varchar(20),
MiddleName varchar(15),
LastName varchar(15),
ContactNo varchar(10),
MobileNo varchar(10),
EmailId varchar(max),
DOB date,
GID int foreign key references GenderMaster(GID),  
BID int foreign key references BloodGroupMaster(BID),
MSID int foreign key references MaritalStatusMaster(MSID),
CTC numeric(18,0),
GrossAmount numeric(18,0),
TempAddress varchar(20),
DocumentName varchar(max),
TrainingDetails varchar(20),
PanNo varchar(15),
ESICACCNO varchar(max),
AutoMail varchar(30),
LeaveId int foreign key references LeaveMaster(LeaveId), 
AttendanceID int,
EmpPhoto varchar(max),
DateofJoin date,
QualificationId int foreign key references QualificationMaster(QualificationId), 
DesingnationId int foreign key references DesignationMaster(DesingnationId),
DID int foreign key references DepartmentMaster(DID),
CategoryId   int foreign key references CategoryMaster(CategoryId  ),
WID int foreign key references WeekOffMaster(WID),
ContractorId int foreign key references ContractorMaster(ContractorId),
StaffId int,
PayTypeId int foreign key references PayTypeMaster(PayTypeId),
UnitId   int foreign key references UnitMaster(UnitId),
AdharNo int,
Balance numeric(18,0),
PermanentAddress varchar(max),
Assest varchar(50),
ApprasalHistory varchar(max),
PFAccNo varchar(50),
IsLeft varchar(50),
LeftDate date,
CityId int foreign key references CityMaster(CityId),
StateId int foreign key references StateMaster(StateId),
CountryId int foreign key references CountryMaster(CountryId),
cid int
)

Select * from EmployMaster



---4)	SupplierMaster - 
create table SupplierTypeMaster
(
SuppTypeId int primary key identity(1,1),
SuppType varchar(50)
)
select * From suppliertypemaster


create table SupplierMaster
(
Id int primary key identity(1,1),
SuppCode varchar(max),
SuppName varchar(max),
ContactPerson varchar(max),
Branch varchar(max),
Address1 varchar(max),
Address2 varchar(max),
City varchar(max),
State varchar(max),
PinCode numeric(6,0),
Country varchar(max),
EmailID varchar(max),
Telephone numeric(18,0),
Mobile numeric(10,0),
Fax varchar(max),
Website varchar(max),
GSTIN varchar(max),
Remarks varchar(max),
UserName varchar(max),
LoginBranch varchar(max),
SysEntryDate datetime,
SuppTypeId int foreign key references SupplierTypeMaster(SuppTypeId),
CountryId int foreign key references CountryMaster(CountryId),
StateId int foreign key references StateMaster(StateId),
CityId int foreign key references CityMaster(CityId),
BranchId int foreign key references BranchMaster(BranchId),
LoginUserId   int foreign key references Admin_LoginUserMaster(LoginUserId)
)
 select * From SupplierMaster

 --Assign2 : 
 
--1)Insert records in all tables which are created in the Assign1(Chapter 2)

--1)ItemMaster
--Insert into manufactureMaster
INSERT INTO ManufacturerMaster ( ManufacturerName) VALUES ( 'ABC Electronics');

-- Insert into ColourMaster
INSERT INTO ColourMaster (ColourName) VALUES ('Red');

-- Insert into UnitMaster
INSERT INTO UnitMaster (UnitName) VALUES ('Each');

-- Insert into Admin_LoginUserMaster
INSERT INTO Admin_LoginUserMasters (UserName,Password ) VALUES ('Vaishnavi','hfsjhfkjsh');

-- Insert into BranchMaster
INSERT INTO BranchMaster (BranchName) VALUES ('Main Branch');

-- Insert into CategoryMaster
INSERT INTO CategoryMaster (CategoryName) VALUES ('Electronics');

--Insert into subCatogary
INSERT INTO SubCategoryMaster(CategoryId) VALUES (1)
INSERT INTO ItemMaster (
    ItemName, Material, ItemType, ItemSubType, Color, UOM, HSNCODE, GSTRate, PurchaseCost,
    SellingPrice, UserName, LoginBranch, SystEntryDate, RawMaterial, SubCategoryId,
    ManufacturerId, ColourId, UnitId, LoginUserId, BranchId, CategoryId, DrawingNo, Specification
)
VALUES (
    'Laptop', 'Metal', 'Electronics', 'Laptop', 'Silver', 'Each', '12345', 18.5, 800.00,
    1200.00, 'Vaishnavi', 'Main Branch', GETDATE(), 'Aluminum', 1, 1, 1, 1, 1, 1, 1,'123', 'High-performance laptop'
);

--2)CustomerMater
-- Insert values into CustomerTypeMaster
INSERT INTO CustomerTypeMaster (CustomerType, IsActive) VALUES ('Retail', 1);
INSERT INTO CustomerTypeMaster (CustomerType, IsActive) VALUES ('Wholesale', 1);

-- Insert values into CountryMaster
INSERT INTO CountryMaster (CountryName) VALUES ('India');
INSERT INTO CountryMaster (CountryName) VALUES ('United States');

-- Insert values into StateMaster
INSERT INTO StateMaster (StateName, CountryId) VALUES ('Maharashtra', 1);
INSERT INTO StateMaster (StateName, CountryId) VALUES ('California', 2);

-- Insert values into CityMaster
INSERT INTO CityMaster (CityName, StateId) VALUES ('Mumbai', 1);
INSERT INTO CityMaster (CityName, StateId) VALUES ('San Francisco', 2);

-- Insert a record into CustomerMaster
INSERT INTO CustomerMaster (
    CustCode, CustName, ContactPerson, Branch, Address1, Address2, City, State, PinCode,
    Country, EmailID, Telephone, Mobile, Fax, Website, GSTIN, Remarks, UserName,
    LoginBranch, SysEntryDate, CustomerTypeId, CityId, StateId, CountryId, BranchId
)
VALUES (
    'C001', 'ABC Company', 'John Doe', 'Main Branch', '123 Street', 'Suite 456',
    'Mumbai', 'Maharashtra', 400001, 'India', 'john@example.com', 1234567890, 9876543210,
    'Fax123', 'www.abc.com', 'GST123', 'Good customer', 'admin_user', 'Main Branch',
    GETDATE(), 1, 1, 1, 1, 1
);


--3)EmployMaster

-- Insert values into BloodGroupMaster
INSERT INTO BloodGroupMaster (BloodGroup) VALUES ('A+');
INSERT INTO BloodGroupMaster (BloodGroup) VALUES ('B+');

-- Insert values into GenderMaster
INSERT INTO GenderMaster (Gender) VALUES ('Male');
INSERT INTO GenderMaster (Gender) VALUES ('Female');

-- Insert values into WeekOffMaster
INSERT INTO WeekOffMaster (WeekOff) VALUES ('Saturday');
INSERT INTO WeekOffMaster (WeekOff) VALUES ('Sunday');

-- Insert values into MaritalStatusMaster
INSERT INTO MaritalStatusMaster (MaritalStatus) VALUES ('Single');
INSERT INTO MaritalStatusMaster (MaritalStatus) VALUES ('Married');

-- Insert values into DepartmentMaster
INSERT INTO DepartmentMaster (DName) VALUES ('IT');
INSERT INTO DepartmentMaster (DName) VALUES ('HR');

-- Insert values into ContractorMaster
INSERT INTO ContractorMaster (ContractorName) VALUES ('ABC Contractors');
INSERT INTO ContractorMaster (ContractorName) VALUES ('XYZ Builders');

-- Insert values into DesignationMaster
INSERT INTO DesignationMaster (DesignationName) VALUES ('Software Engineer');
INSERT INTO DesignationMaster (DesignationName) VALUES ('HR Manager');

-- Insert values into QualificationMaster
INSERT INTO QualificationMaster (QualificationName) VALUES ('Bachelors Degree');
INSERT INTO QualificationMaster (QualificationName) VALUES ('Masters Degree')

-- Insert values into LeaveMaster
INSERT INTO LeaveMaster (LeaveName) VALUES ('Annual Leave');
INSERT INTO LeaveMaster (LeaveName) VALUES ('Sick Leave');

-- Insert values into PayTypeMaster
INSERT INTO PayTypeMaster (PayTypeName) VALUES ('Monthly Salary');
INSERT INTO PayTypeMaster (PayTypeName) VALUES ('Hourly Wage');

-- Insert record into EmployMaster

INSERT INTO EmployMaster (
    EmpCode, Title, FirstName, MiddleName, LastName, ContactNo, MobileNo, EmailId, DOB,
    GID, BID, MSID, CTC, GrossAmount, TempAddress, DocumentName, TrainingDetails, PanNo,
    ESICACCNO, AutoMail, LeaveId, AttendanceID, EmpPhoto, DateofJoin, QualificationId,
    DesingnationId, DID, CategoryId, WID, ContractorId, StaffId, PayTypeId, UnitId, AdharNo,
    Balance, PermanentAddress, Assest, ApprasalHistory, PFAccNo, IsLeft, LeftDate, CityId,
    StateId, CountryId, cid
)
VALUES (
    'E001', 'Mr.', 'John', 'A.', 'Doe', '1234567890', '9876543210', 'john@example.com',
    '1990-01-01', 1, 1, 1, 50000, 55000, 'Temporary Street', 'Doc1.pdf', 'Training1',
    'ABCDE1234F', 'ESIC12345', 'Yes', 1, 1, 'photo.jpg', '2022-01-01', 1, 1, 1, 1, 1, 1,
    1, 1, 1234567890, 5000, 'Permanent Street', 'Laptop', 'Good performer', 'PFA12345',
    'No', NULL, 1, 1, 1, 1
);


--4)SupplierMaster

-- Insert values into SupplierTypeMaster
INSERT INTO SupplierTypeMaster (SuppType) VALUES ('TypeA');
INSERT INTO SupplierTypeMaster (SuppType) VALUES ('TypeB');

-- Insert values into SupplierMaster
INSERT INTO SupplierMaster (
    SuppCode, SuppName, ContactPerson, Branch, Address1, Address2, City, State, PinCode,
    Country, EmailID, Telephone, Mobile, Fax, Website, GSTIN, Remarks, UserName,
    LoginBranch, SysEntryDate, SuppTypeId, CountryId, StateId, CityId, BranchId
)
VALUES (
    'S001', 'ABC Supplier', 'John Doe', 'Main Branch', '123 Street', 'Suite 456',
    'Mumbai', 'Maharashtra', 400001, 'India', 'supplier@example.com', 1234567890, 9876543210,
    'Fax123', 'www.abc.com', 'GST123', 'Good supplier', 'Vaishnavi', 'Main Branch',
    GETDATE(), 1, 1, 1, 1, 1
);


--Assign3 :  - Indexes

select * From EmployMaster
select * From ItemMaster
select * From CustomerMaster
select * From SupplierMaster

--eg.
--create nonclustered index idx_ManfId on ItemMaster(ManufacturerId)
--1)	Apply Indexes on all foreign key in the table for above four main tables.


--1.ItemMaster
-- Index on SubCategoryId
CREATE NONCLUSTERED INDEX IX_ItemMaster_SubCategoryId ON ItemMaster (SubCategoryId);

-- Index on ManufacturerId
CREATE NONCLUSTERED INDEX IX_ItemMaster_ManufacturerId ON ItemMaster (ManufacturerId);

-- Index on ColourId
CREATE NONCLUSTERED INDEX IX_ItemMaster_ColourId ON ItemMaster (ColourId);

-- Index on UnitId
CREATE INDEX IX_ItemMaster_UnitId ON ItemMaster (UnitId);

-- Index on LoginUserId
CREATE NONCLUSTERED INDEX IX_ItemMaster_LoginUserId ON ItemMaster (LoginUserId);

-- Index on BranchId
CREATE NONCLUSTERED INDEX IX_ItemMaster_BranchId ON ItemMaster (BranchId);

-- Index on CategoryId
CREATE NONCLUSTERED INDEX IX_ItemMaster_CategoryId ON ItemMaster (CategoryId);


--2)CustomerMater
-- Index on CustomerTypeId
CREATE NONCLUSTERED INDEX IX_CustomerMaster_CustomerTypeId ON CustomerMaster (CustomerTypeId);

-- Index on CityId
CREATE NONCLUSTERED INDEX IX_CustomerMaster_CityId ON CustomerMaster (CityId);

-- Index on StateId
CREATE NONCLUSTERED INDEX IX_CustomerMaster_StateId ON CustomerMaster (StateId);

-- Index on CountryId
CREATE NONCLUSTERED INDEX IX_CustomerMaster_CountryId ON CustomerMaster (CountryId);

-- Index on BranchId
CREATE NONCLUSTERED INDEX IX_CustomerMaster_BranchId ON CustomerMaster (BranchId);

-- Index on LoginUserId
CREATE NONCLUSTERED INDEX IX_CustomerMaster_LoginUserId ON CustomerMaster (LoginUserId);

--3)EmployMaster

-- Non-clustered Index on GID
CREATE INDEX IX_GID ON EmployMaster(GID);

-- Non-clustered Index on BID
CREATE INDEX IX_BID ON EmployMaster(BID);

-- Non-clustered Index on MSID
CREATE INDEX IX_MSID ON EmployMaster(MSID);

-- Non-clustered Index on LeaveId
CREATE INDEX IX_LeaveId ON EmployMaster(LeaveId);

-- Non-clustered Index on QualificationId
CREATE INDEX IX_QualificationId ON EmployMaster(QualificationId);

-- Non-clustered Index on DesingnationId 
CREATE INDEX IX_DesingnationId  ON EmployMaster(DesingnationId );

-- Non-clustered Index on DID
CREATE INDEX IX_DID ON EmployMaster(DID);

-- Non-clustered Index on CategoryId 
CREATE INDEX IX_CategoryId  ON EmployMaster(CategoryId );

-- Non-clustered Index on WID
CREATE INDEX IX_WID ON EmployMaster(WID);

-- Non-clustered Index on ContractorId
CREATE INDEX IX_ContractorId ON EmployMaster(ContractorId);

-- Non-clustered Index on PayTypeId
CREATE INDEX IX_PayTypeId ON EmployMaster(PayTypeId);

-- Non-clustered Index on UnitId 
CREATE INDEX IX_UnitId  ON EmployMaster(UnitId );

-- Non-clustered Index on CityId
CREATE INDEX IX_CityId ON EmployMaster(CityId);

-- Non-clustered Index on StateId
CREATE INDEX IX_StateId ON EmployMaster(StateId);

-- Non-clustered Index on CountryId
CREATE INDEX IX_CountryId ON EmployMaster(CountryId);

--4)SupplierMaster

-- Non-clustered Index on SuppTypeId
CREATE NONCLUSTERED INDEX IX_SupplierMaster_SuppTypeId ON SupplierMaster (SuppTypeId);

-- Non-clustered Index on CountryId
CREATE NONCLUSTERED INDEX IX_SupplierMaster_CountryId ON SupplierMaster (CountryId);

-- Non-clustered Index on StateId
CREATE NONCLUSTERED INDEX IX_SupplierMaster_StateId ON SupplierMaster (StateId);

-- Non-clustered Index on CityId
CREATE NONCLUSTERED INDEX IX_SupplierMaster_CityId ON SupplierMaster (CityId);

-- Non-clustered Index on BranchId
CREATE NONCLUSTERED INDEX IX_SupplierMaster_BranchId ON SupplierMaster (BranchId);

-- Non-clustered Index on LoginUserId
CREATE NONCLUSTERED INDEX IX_SupplierMaster_LoginUserId ON SupplierMaster (LoginUserId);


--Assign4 :  VIEWS
 
--1)	Create complex view for below four main tables. Make sure it will join all main master and its sub master tables data.

select * From ItemMaster
select * From CustomerMaster
select * From EmployMaster
select * from SupplierMaster	

-- Create a complex view
GO
CREATE VIEW vw_Complex
As 
Select * from ItemMaster

Go
-- Select data from the complex view
SELECT * FROM vw_Complex;



--Assign5 : Procedure

--1)  Write procedures with DML(Insert,Update,Delete,Select-all, select By id) 
--    operations for above 4 master tables. ItemMaster,CustomerMaster,SupplierMaster,EmployeeMaster.

--1)ItemMaster
--1.Insertion
GO
CREATE PROCEDURE InsertItem
(
    @ItemName varchar(max),
    @Material varchar(max)
)
AS
BEGIN
    INSERT INTO ItemMaster (ItemName, Material)
    VALUES (@ItemName, @Material);
END;
GO

--2.UPDATION
GO
CREATE PROCEDURE UpdateItem
(
    @ID int,
    @ItemName varchar(max),
    @Material varchar(max)
)
AS
BEGIN
    UPDATE ItemMaster SET ItemName = @ItemName, Material = @Material
    WHERE ID = @ID;
END;
GO

--3.DELETION
GO
CREATE PROCEDURE DeleteItem
@ID int
AS
BEGIN
    DELETE FROM ItemMaster
    WHERE ID = @ID;
END;
GO

--4.SELECT ALL
CREATE PROCEDURE GetAllItems
AS
BEGIN
    SELECT * FROM ItemMaster;
END;

--5.SELECT BY ID
GO
CREATE PROCEDURE GetItemById
@ID int
AS
BEGIN
    SELECT * FROM ItemMaster WHERE ID = @ID;
END;
GO