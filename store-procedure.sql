CREATE PROCEDURE ChangeCompanyProject @CompanyName varchar(150), @ProjectName varchar(150)
AS
BEGIN
	DECLARE @Counter int , @MaxId int, 
        @FirstName varchar(50),
		@LastName varchar(50)
	SELECT @Counter = min(Id) , @MaxId = max(Id) 
	FROM Employees
 
	WHILE(@Counter IS NOT NULL
		  AND @Counter <= @MaxId)
	BEGIN
		IF EXISTS(SELECT Id FROM Employees WHERE Id = @Counter AND Company_Id = (SELECT Id FROM Company WHERE Name = @CompanyName))
		BEGIN
			SELECT @FirstName = FirstName, @LastName = LastName
			FROM Employees WHERE Id = @Counter
			PRINT CONVERT(VARCHAR,@Counter) + '. employee name is ' + @FirstName
			IF (dbo.HasAnyProject(@FirstName, @LastName) = 1)
			BEGIN
				DELETE FROM Projects_Employees WHERE Employees_Id = @Counter
			END
			INSERT INTO Projects_Employees VALUES ((SELECT pe.Projects_Id FROM Projects as p, Projects_Employees as pe 
													WHERE pe.Projects_Id = p.Id AND p.Name LIKE @ProjectName), @Counter);

		END
		SET @Counter  = @Counter  + 1        
	END
END
