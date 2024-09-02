PRINT 'FiltrarUsuariosPorEdad'
GO
DROP PROCEDURE FiltrarUsuariosPorEdad
GO
CREATE PROCEDURE FiltrarUsuariosPorEdad
    @Edad INT
AS
BEGIN
    SELECT 
        UsuarioId,
        Nombre,
        Apellido,
        Edad,
        Correo,
        dbo.OrdenarHobbies(Hobbies) AS HobbiesOrdenados,
        Activo,
        FechaCreacion,
        FechaModificacion
    FROM Usuarios
    WHERE Edad >= @Edad;
END
GO