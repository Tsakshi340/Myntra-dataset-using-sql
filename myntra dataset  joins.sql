DROP DATABASE IF EXISTS gfg;
CREATE DATABASE gfg;
CREATE TABLE IF NOT EXISTS gfg.employees  (EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), DepartmentID INT);
CREATE TABLE IF NOT EXISTS gfg.department (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50));
CREATE TABLE IF NOT EXISTS gfg.salaries   (EmployeeID INT PRIMARY KEY, Salary INT);


INSERT INTO gfg.employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'Harshvardhan', 'Singh', 1), (2, 'Ankur', 'Gupta', 2), (3, 'Shivam', 'Kumar', 3), 
(4, 'Sakshi', 'Awasthi', 4), (5, 'Nitin', 'Kaur', 5), (6, 'Vinit','Singhal',1), 
(7, 'Adarsh','Sharma',4), (8, 'Prakash','Sakari',6),(9,'Puneet','Sharma',7);

INSERT INTO gfg.department (DepartmentID, DepartmentName) VALUES
(1, 'Mentor'), (2, 'Designer'), (3, 'Editor'), (4, 'Onboarding'), (5, 'Project Manager'),(10, 'CEO');

INSERT INTO gfg.salaries (EmployeeID, Salary) VALUES
(1, 50000), (2, 54000), (3, 30000), (4, 60000), (5, 58000),(6,60000),(7,56000);


SELECT * FROM gfg.employees;
SELECT * FROM gfg.department;
SELECT * FROM gfg.salaries;
-- employee and department 
select * from gfg.employees left join gfg.department on gfg.employees.DepartmentID = gfg.department.DepartmentID;
select * from gfg.employees t1 left join gfg.department t2 on t1.DepartmentID = t2.DepartmentID;
select * from gfg.department t1 left join gfg.employees t2 on t1.DepartmentID = t2.DepartmentID;

-- employee and salary
select * from gfg.employees t1 left join gfg.salaries t2 on t1.EmployeeID = t2.EmployeeID;
select * from gfg.department t1 left join gfg.employees t2 on t1.DepartmentID = t2.Department;

-- right joins 

-- Employee & Department
select * from gfg.employees right join gfg.department on gfg.employees.DepartmentID = gfg.department.DepartmentID;
select * from gfg.employees t1 right join gfg.department t2 on t1.DepartmentID = t2.DepartmentID;
select * from gfg.department t1 right join gfg.employees t2 on t1.DepartmentID = t2.DepartmentID;

-- Employee & Salary
select * from gfg.employees t1 right join gfg.salaries t2 on t1.EmployeeID = t2.EmployeeID;
select * from gfg.department t1 right join gfg.employees t2 on t1.DepartmentID = t2.DepartmentID;

-- inner joins

-- Employees & Department
select * from gfg.employees t1 inner join gfg.department t2 on t1.departmentid = t2.departmentid;
select * from gfg.department t1 inner join gfg.employees t2 on t1.departmentid = t2.departmentid;

-- Employees & Salaries
select * from gfg.employees t1 inner join gfg.salaries t2 on t1.employeeid = t2.employeeid;
select * from gfg.salaries t1 inner join gfg.employees t2 on t1.employeeid = t2.employeeid;

-- Employee, Department & Salary
select * from gfg.employees t1 
			inner join gfg.department t2 on t1.departmentid = t2.departmentid 
						inner join gfg.salaries t3  on t1.employeeid = t3.employeeid;

