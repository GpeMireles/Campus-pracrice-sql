ALTER TABLE Employees
ADD Company_Id int NOT NULL;

ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Company
FOREIGN KEY (Company_Id) REFERENCES Company(Id);

CREATE TABLE Projects_Employees(
	Projects_Id int,
	Employees_Id int,
	PRIMARY KEY (Projects_Id, Employees_Id),
	FOREIGN KEY (Projects_Id) REFERENCES Projects(Id),
	FOREIGN KEY (Employees_Id) REFERENCES Employees(Id)
)