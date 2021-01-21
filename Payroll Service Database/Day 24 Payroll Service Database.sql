--UC1 Create Database
create database Payroll_Service
use Payroll_Service

--UC2 Create Table
create Table Employee_Payroll
(
empId int IDENTITY(1,1) Primary Key,
empName varchar(20),
salary money,
StartDate date
)

--UC3 Insert value into table
INSERT INTO Employee_Payroll (empName,salary,StartDate)
VALUES ('Abhishek Mishra',50000,'2021-01-21'),
		('Aditya Mishra',55000,'2021-01-21'),
		('Roshan Prajapati',45000,'2021-01-21'),
		('Random Guy',40000,'2021-01-21');

--UC4 Select all data from Table
SELECT * from Employee_Payroll

--UC5 Selct Data at given Condition
SELECT * from Employee_Payroll where empName='Abhishek Mishra'
SELECT * from Employee_Payroll where StartDate BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE();

--UC6 Add a column to the table and update gender at given condition
Alter table Employee_Payroll
Add gender varchar(10)

UPDATE Employee_Payroll set gender = 'Male' where empName = 'Abhishek Mishra'
UPDATE Employee_Payroll set gender = 'Female' where empName = 'Random Guy'
UPDATE Employee_Payroll set gender = 'Male' where empName = 'Aditya Mishra'

--UC7 Use of Sum, Avg, Min, Max, Count Functions
SELECT SUM(salary) from Employee_Payroll
Select AVG(salary) from Employee_Payroll
Select MIN(salary) from Employee_Payroll
Select MAX(salary) from Employee_Payroll
Select Count(empId) from Employee_Payroll
Select SUM(salary) from Employee_Payroll where gender = 'Male' GROUP BY gender;



