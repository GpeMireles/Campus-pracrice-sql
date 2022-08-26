CREATE TRIGGER tgr_insert_project
ON Projects
AFTER INSERT
AS
BEGIN
	DECLARE
	@StartDate date,
	@DeadLine date;
	SELECT @StartDate= i.[StartDate], @DeadLine = i.[DeadLine]
	FROM inserted as i;
	IF (@StartDate > @DeadLine)
	BEGIN
		RAISERROR ('The StartDate must to be before the DeadLine', 1, 1);  
		ROLLBACK TRANSACTION;
	END;
END;
GO
CREATE TRIGGER tgr_Dates_project
ON Projects
AFTER INSERT
AS
BEGIN
	DECLARE
	@Id int,
	@StartDate date,
	@DeadLine date,
	@Today date = CONVERT(date, GETDATE())
	SELECT @Id = i.[Id],
			@StartDate= i.[StartDate],
			@DeadLine = i.[DeadLine]
	FROM inserted as i
	IF (@StartDate <= @Today AND @DeadLine > @Today)
	BEGIN
		UPDATE Projects
		SET StatusId = (SELECT Id FROM Status WHERE Name LIKE 'En proceso')
		WHERE Projects.Id = @Id
	END
END