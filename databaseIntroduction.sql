/****** Script for SelectTopNRows command from SSMS  ******/
CREATE DATABASE [Minions]
USE [Minions]

CREATE TABLE [Minions](
[Id] INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL,
[Age] TINYINT
)
CREATE TABLE [Towns](
[Id] INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR(50) NOT NULL
)
ALTER TABLE [Minions]
ADD TownId INT FOREIGN KEY REFERENCES Towns(Id)

INSERT INTO [Towns]([Id], [Name])
      VALUES 
	  (1, 'Sofia'),
	  (2,'Plovdiv'),
	  (3, 'Varna')

INSERT INTO [Minions]([Id],[Name],[Age],[TownId])
  VALUES
     (1,'Kevin',22,1),
	 (2,'Bob',15,3),
	 (3,'Steward',NULL,2)

TRUNCATE TABLE [Minions]

DROP TABLE [Minions]
DROP TABLE [Towns]

CREATE TABLE [Users](
[Id] BIGINT PRIMARY KEY IDENTITY NOT NULL,
[Username] VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
[ProfilePicture] VARBINARY(MAX)
   CHECK(DATALENGTH(ProfilePicture) <=900*1024),
[LastLoginTime] DATETIME2 NOT NULL,
[IsDeleted] BIT NOT NULL
)
TRUNCATE TABLE Users

INSERT INTO [Users]([Username],[Password],[LastLoginTime],[IsDeleted])
  VALUES
  ('Pesho','12321221','03.20.1996',0),
  ('Ivan','3452121','01.07.1996',1),
  ('Ivan1','345121212','01.07.1996',0),
  ('Ivan2','345212121','01.07.1996',1),
  ('Ivan3','34512121','01.07.1996',0)

 ALTER TABLE [Users]
   DROP CONSTRAINT [PK__Users__3214EC0731FF28D8]

ALTER TABLE [Users]
   ADD CONSTRAINT PK_Users_CompositeIdUsername
    PRIMARY KEY(Id,Username)

ALTER TABLE [Users]
  ADD CONSTRAINT CK_Users_PasswordLength
  CHECK(LEN([Password])>=5)

ALTER TABLE [Users]
  ADD CONSTRAINT DF_Users_LastLoginTime
  DEFAULT GETDATE() FOR LastLoginTime

INSERT INTO [Users]([Username],[Password],[IsDeleted])
  VALUES
  ('Peshoto','12321221',0)

ALTER TABLE [Users]
  DROP CONSTRAINT PK_Users_CompositeIdUsername

ALTER TABLE [Users]
  ADD CONSTRAINT PK_Users_Id
  PRIMARY KEY(Id)

ALTER TABLE [Users]
  ADD CONSTRAINT CK_Users_UsernameLenght
  CHECK(LEN(Username)>=3)

CREATE DATABASE SoftUni

USE SoftUni

CREATE TABLE Towns(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(40) NOT NULL,
)

CREATE TABLE Addresses(
Id INT PRIMARY KEY IDENTITY,
AdressText NVARCHAR(60) NOT NULL,
TownId INT FOREIGN KEY REFERENCES Towns(Id) NOT NULL,
)

CREATE TABLE Departments(
Id INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE Employees(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(40) NOT NULL,
MiddleName NVARCHAR(40),
LastName NVARCHAR(40) NOT NULL,
JobTitle NVARCHAR(20) NOT NULL,
DepartmentId INT FOREIGN KEY REFERENCES Departments(Id) NOT NULL,
HireDate DATETIME2 NOT NULL,
Salary DECIMAL(7,2) NOT NULL,
AddressId INT FOREIGN KEY REFERENCES Addresses(Id)
)
INSERT INTO Towns([Name])
  VALUES
    ('Sofia'),
	('Plovdiv'),
	('Varna'),
	('Burgas')

INSERT INTO Departments([Name])
  VALUES
     ('Engineering'),
	 ('Sales'),
	 ('Marketing'),
	 ('Software'),
	 ('Development'),
	 ('Quality Assurance')

INSERT INTO Employees(FirstName,MiddleName,LastName,JobTitle,DepartmentId,HireDate,Salary)
  VALUES
   ('Ivan','Ivanov','Ivanov','.NET Developer',4,'01/02/2013',3500.00),
   ('Petar','Petrov','Petrov','Senion Engineer',1,'02/03/2004',4000.00),
   ('Maria','Petrova','Ivanova','Intern',6,'08/28/2016',525.25),
   ('Georgi','Teziev','Ivanov','CEO',2,'09/12/2007',3000.00),
   ('Peter','Pan','Pan','Intern',3,'08/28/2016',599.88)


SELECT * FROM Towns

SELECT * FROM Departments

SELECT * FROM Employees

SELECT * FROM Towns
ORDER BY [Name] ASC

SELECT * FROM Departments
ORDER BY [Name] ASC

SELECT * FROM Employees
ORDER BY Salary DESC

SELECT [Name] FROM Towns
ORDER BY [Name] ASC

SELECT [Name] FROM Departments
ORDER BY [Name] ASC

SELECT FirstName,LastName,JobTitle,Salary FROM Employees
ORDER BY Salary DESC