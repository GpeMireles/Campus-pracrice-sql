CREATE TABLE Company(
	Id int IDENTITY,
	Name varchar(150) UNIQUE,
	Address varchar(100),
	PRIMARY KEY (id)
);

CREATE TABLE Status(
	Id int IDENTITY,
	Name varchar(50) UNIQUE,
	PRIMARY KEY (id)
);

CREATE TABLE Projects(
	Id int IDENTITY,
	Name varchar(150) UNIQUE,
	StartDate date,
	DeadLine date,
	FinishedOn date,
	StatusId int,
	PRIMARY KEY (id),
	FOREIGN KEY (StatusID) REFERENCES Status(Id)
);

CREATE TABLE Employees(
	Id int IDENTITY,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(100) UNIQUE,
	Phone varchar(12) UNIQUE,
	Salary decimal,
	PRIMARY KEY (id)
);

