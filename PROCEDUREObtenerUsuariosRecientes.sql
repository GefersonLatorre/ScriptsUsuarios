PRINT 'ObtenerUsuariosRecientes'
GO
DROP PROCEDURE ObtenerUsuariosRecientes
GO
CREATE PROCEDURE ObtenerUsuariosRecientes
AS
BEGIN
    SELECT 
        UsuarioId,
        Nombre,
        Apellido,
        Edad,
        Correo,
        Hobbies,
        Activo,
        FechaCreacion,
        FechaModificacion
    FROM Usuarios
    WHERE FechaCreacion >= DATEADD(HOUR, -2, GETDATE());
END
GO