SELECT * FROM Departments

SELECT [Name] From Departments

SELECT FirstName,LastName,Salary FROM Employees

SELECT FirstName,MiddleName,LastName FROM Employees

SELECT CONCAT(Firstname, '.' ,LastName,'@softuni.bg') as 'Full Email Address' FROM Employees
 
SELECT Salary FROM Employees
 GROUP BY Salary

SELECT * FROM Employees
 WHERE JobTitle LIKE 'Sales Representative'

