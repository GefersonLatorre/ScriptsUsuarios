PRINT 'InsertarUsuario'
GO
DROP PROCEDURE InsertarUsuario
GO
CREATE PROCEDURE InsertarUsuario
    @Nombre NVARCHAR(100),
    @Apellido NVARCHAR(100),
    @Edad INT,
    @Correo NVARCHAR(255),
    @Hobbies NVARCHAR(MAX),
    @Activo BIT
AS
BEGIN
    INSERT INTO Usuarios (Nombre, Apellido, Edad, Correo, Hobbies, Activo, FechaCreacion, FechaModificacion)
    VALUES (@Nombre, @Apellido, @Edad, @Correo, @Hobbies, @Activo, GETDATE(), GETDATE());
END
GO