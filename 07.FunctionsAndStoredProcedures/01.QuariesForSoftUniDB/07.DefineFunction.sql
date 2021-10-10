CREATE OR ALTER FUNCTION ufn_IsWordComprised(@setOfLetters nvarchar(20), @word nvarchar(20)) 
RETURNS BIT
AS
BEGIN
	DECLARE @i int = 1
	DECLARE @countWord INT = LEN(@word)
	DECLARE @letter  CHAR(1)

	WHILE (@countWord >= @i)
	BEGIN
	SET @letter = SUBSTRING(@word,@i,1)
	IF(CHARINDEX(@letter,@setOfLetters)>0)
		SET @i +=1
		ELSE RETURN 0
	END
RETURN 1
END
GO
 
SELECT dbo.ufn_IsWordComprised('oistmiahf','Sofia') AS [Result]
