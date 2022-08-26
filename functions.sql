CREATE FUNCTION GetLastProjetIdByEmployeeName(@FirstName varchar(50), @LastName varchar(50))
RETURNS int
AS
BEGIN
	RETURN (
			SELECT TOP 1 p.Id FROM Employees as e, Projects as p, Projects_Employees as pe
			WHERE e.FirstName = @FirstName AND e.LastName = @LastName AND e.Id = pe.Employees_Id AND pe.Projects_Id = p.Id
			ORDER BY p.StartDate
			)
END
GO
CREATE FUNCTION HasAnyProject(@FirstName varchar(50), @LastName varchar(50))
RETURNS bit
AS
BEGIN
	DECLARE @OUTPUT bit;
	SET @OUTPUT = 0;
	IF EXISTS (SELECT * FROM Employees WHERE FirstName = @FirstName AND LastName = @LastName)
	BEGIN
		IF ((SELECT COUNT(*) FROM Employees as e, Projects as p, Projects_Employees as pe
					WHERE e.FirstName = @FirstName AND e.LastName = @LastName AND e.Id = pe.Employees_Id AND pe.Projects_Id = p.Id) > 0)
			SET @OUTPUT = 1;
		ELSE 
			SET @OUTPUT = 0;
	END
	RETURN (@OUTPUT)
END