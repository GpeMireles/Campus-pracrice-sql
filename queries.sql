SELECT * FROM Company;
SELECT * FROM Employees;

SELECT Name FROM Projects
WHERE FinishedOn < DeadLine;

SELECT Name FROM Projects
WHERE StartDate > CONVERT(date, GETDATE());

SELECT FirstName, LastName, Salary FROM Employees
WHERE Salary > 10000;


SELECT e.FirstName, e.LastName, c.Name as Company_Name FROM Employees as e, Company as c
WHERE e.Company_Id = c.Id AND c.Name LIKE 'Atoz';


SELECT e.FirstName, e.LastName, c.Name as Company_Name FROM Employees as e, Company as c
WHERE e.Company_Id = c.Id AND c.Name NOT LIKE 'Disnei';

SELECT e.FirstName, e.LastName, c.Name as Company_Name FROM Employees as e, Company as c
WHERE e.Company_Id = c.Id
ORDER BY Company_Name, e.LastName;

SELECT e.FirstName, e.LastName, p.Name, s.Name FROM Employees as e, Projects_Employees as pe, Projects as p, Status as s
WHERE	e.Id = pe.Employees_Id 
		AND p.Id = pe.Projects_Id 
		AND p.StatusId = s.Id
		AND s.Name LIKE 'En proceso';

SELECT e.FirstName, e.LastName, p.Name, s.Name FROM Employees as e, Projects_Employees as pe, Projects as p, Status as s
WHERE	e.Id = pe.Employees_Id 
		AND p.Id = pe.Projects_Id 
		AND p.StatusId = s.Id
		AND NOT (s.Name LIKE 'En proceso' OR s.Name LIKE 'Pendiente');