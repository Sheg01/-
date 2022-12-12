DECLARE @table TABLE(id int, myname NVARCHAR(45) DEFAULT 'Pavel Anishchanka')
INSERT INTO @table(id) VALUES(1)
INSERT INTO @table(id, myname) VALUES (2, 'Sadovskiy Maksim')
SELECT * FROM @table;




DECLARE @count INT
DECLARE @number NVARCHAR(45)
SET @count = (SELECT COUNT([group].id) from [group]);
IF @count < 5
	BEGIN
		SET @number = 'Less than 5 groups'
		PRINT @number
	END
ELSE
	BEGIN
		SET @number = 'More than 5 groups'
		PRINT @number
	END
	
	
	
DECLARE @count INT
DECLARE @number NVARCHAR(45)
SET @count = (SELECT COUNT([group].id) from [group]);
IF @count = 6
	BEGIN
		SET @number = 'Exactly 6'
		PRINT @number
	END
ELSE
	BEGIN
		SET @number = 'Not 6'
		PRINT @number
	END
	
	
	DECLARE @NUMBER INT
	DECLARE @AMOUNT INT
	SET @AMOUNT = (SELECT COUNT([group].id) FROM [group])
	SET @NUMBER = (SELECT TOP 1 [group].id from [group]);
	WHILE @NUMBER <= @AMOUNT
		BEGIN
			PRINT @NUMBER
			SET @NUMBER = @Number + 1
	END
	PRINT 'The End'
	
	
	
	CREATE FUNCTION TOPFUNCTION (@INPUT_NUMBER INT)
	RETURNS NVARCHAR(45)
	BEGIN
		DECLARE @NUMBER INT
		DECLARE @ANSWER NVARCHAR(45)
		SET @NUMBER = @INPUT_NUMBER
		IF @NUMBER = 4
			SET @ANSWER = 'GUESSED'
		ELSE
			SET @ANSWER = 'NOT TODAY'
		RETURN @ANSWER
	END
	
	SELECT [dbo].TOPFUNCTION (4);
	
	DROP FUNCTION SECONDFUNCTION;
	
	
	CREATE FUNCTION SECONDFUNCTION (@INPUT_NUMBER INT) 
	RETURNS TABLE
	AS RETURN ( 
		SELECT name as 'Имя' 
		FROM students
		WHERE year_of_births = @INPUT_NUMBER
		);
	
	
		SELECT * FROM SECONDFUNCTION (2001);
	
	
	
	
	
	CREATE PROCEDURE Count_Pavels 
	AS
	SELECT COUNT(*) from students	
	WHERE name='Pavel'
		GO

	EXEC Count_Pavels;
	DROP PROCEDURE Count_Pavel;
	
	
	
	
	CREATE PROCEDURE Count_Students @Name AS NVARCHAR(45)
	AS
	SELECT COUNT(*) from students
	WHERE name = @Name
	GO	
	
		EXEC Count_Students 'Pavel';
		
		
		
	CREATE PROCEDURE checkname @param INT 
	AS
	IF (SELECT surname FROM students WHERE id = @param) = 'Anishchanks'
	RETURN 1 ELSE RETURN 2

DROP PROCEDURE checkname;

DECLARE @return_status int;
EXECUTE @return_status = checkname 1;
PRINT @return_status;



CREATE PROCEDURE update_proc AS
UPDATE students SET phone_number = phone_number-1

exec update_proc
