PRINT 'dbo.OrdenarHobbies'
GO
DROP FUNCTION dbo.OrdenarHobbies
GO
CREATE FUNCTION dbo.OrdenarHobbies (@Hobbies NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @HobbiesOrdenados NVARCHAR(MAX);

    -- Crear una tabla temporal para almacenar los hobbies separados
    DECLARE @TempHobbies TABLE (Hobby NVARCHAR(MAX));
    
    -- Separar los hobbies en la tabla temporal usando el delimitador de coma
    INSERT INTO @TempHobbies
    SELECT value
    FROM STRING_SPLIT(@Hobbies, ',');
    
    -- Ordenar los hobbies alfabéticamente y concatenar en una sola cadena
    SELECT @HobbiesOrdenados = STRING_AGG(Hobby, ',') WITHIN GROUP (ORDER BY Hobby)
    FROM @TempHobbies;

    RETURN @HobbiesOrdenados;
END;
GO