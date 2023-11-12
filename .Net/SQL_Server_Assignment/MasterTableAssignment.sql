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

create table Admin_LoginUserMaster
(
LoginUserId int primary key identity(1,1),
UserName varchar(50) not null,
Password varchar(50) not null,
IsActive bit default(1),
RoleId int foreign key references RoleMaster(RoleId),
EmployeeId int,
BranchId varchar(50),
SystemEntryDate datetime
)


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
LoginUserId   int foreign key references Admin_LoginUserMaster(LoginUserId),
BranchId   int foreign key references BranchMaster(BranchId),
CategoryId   int foreign key references CategoryMaster(CategoryId  ),
DrawingNo varchar(50),
Specification varchar(500)
)
Select * from ItemMaster



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

--CustomerMaster:

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

--EmployMaster:

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


create table SupplierTypeMaster
(
SuppTypeId int primary key identity(1,1),
SuppType varchar(50)
)



--SupplierMaster:


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



