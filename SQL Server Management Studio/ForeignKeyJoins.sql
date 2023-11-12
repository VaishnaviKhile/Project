--FOREIGN KEY

CREATE TABLE Student
(
SId INT PRIMARY KEY,
Name VARCHAR(MAX),
Dept VARCHAR(MAX)
);

CREATE TABLE Course(
CourseName VARCHAR(MAX) ,
CId INT FOREIGN KEY REFERENCES Student(SId)
);

INSERT INTO Student VALUES(1,'VAISHNAVI','COMP')
INSERT INTO Student VALUES(2,'LUFFY','COMP')
INSERT INTO Student VALUES(3,'TANJIRO','COMP')

SELECT * FROM Student

INSERT INTO Course VALUES('C#',1)
INSERT INTO Course VALUES('JAVA',3)

SELECT * FROM Course

-- Create an Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(50) NOT NULL,
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Department
(
Did INT,
Salary FLOAT,
FOREIGN KEY (Did) REFERENCES Employees(EmployeeID)
)

-- Insert some sample data
INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID) VALUES (1, 'John Doe', NULL);
INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID) VALUES (2, 'Jane Smith', 1);
INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID) VALUES (3, 'Bob Johnson', 1);
INSERT INTO Employees (EmployeeID, EmployeeName, ManagerID) VALUES (4, 'Alice Williams', 2);
SELECT * FROM Employees

INSERT INTO Department VALUES(1,2000)
INSERT INTO Department VALUES(2,4000)
SELECT * FROM Department

---********JOINS**********

---1) Join
SELECT * FROM Student JOIN Course ON SId=CId

---2) Left Join
SELECT * FROM Student LEFT JOIN Course ON SId=CId

---3)Right Join
SELECT * FROM Student RIGHT JOIN Course ON CourseName=Dept

---4) Inner Join
SELECT * FROM Student INNER JOIN Course ON SId=CId

---5) Full Join
SELECT * FROM Student FULL JOIN Course ON SId=CId

--6) Cross Join
SELECT * FROM Student CROSS JOIN Course

--7) Self Join
SELECT * FROM Student as a INNER JOIN Student as b ON a.SId=b.SId