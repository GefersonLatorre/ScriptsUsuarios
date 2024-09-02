PRINT 'Usuarios'
GO
DROP TABLE Usuarios
GO
CREATE TABLE Usuarios
(
    UsuarioId INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Apellido NVARCHAR(100) NOT NULL,
    Edad INT NOT NULL,
    Correo NVARCHAR(255) NOT NULL UNIQUE,
    Hobbies NVARCHAR(MAX),
    Activo BIT NOT NULL DEFAULT 1,
    FechaCreacion DATETIME DEFAULT GETDATE(),
    FechaModificacion DATETIME DEFAULT GETDATE(),
    CONSTRAINT CK_Usuario_Edad CHECK (Edad >= 0)  -- Asegurarse de que la edad sea positiva
);
GO











