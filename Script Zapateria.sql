USE master;
GO
CREATE DATABASE Zapateria
GO

----------------------------------CREACION DE TABLAS----------------------------------


USE Zapateria;

CREATE TABLE Proveedores
(
	CodProveedor char(5) NOT NULL,
	NombreProveedor char(30) NULL,
	CUIL char(20) NULL,
	RazonSocial char(30) NULL
	
	CONSTRAINT PK_Proveedores PRIMARY KEY (CodProveedor)
)

CREATE TABLE Categorias
(
	CodCategoria int NOT NULL,
	NombreCategoria char(20) NOT NULL
	
	CONSTRAINT PK_Categorias PRIMARY KEY(CodCategoria)
)

CREATE TABLE Productos
(
	CodProducto int NOT NULL,
	CodProveedor char(5) NOT NULL,
	CodCategoria int NOT NULL,
	NombreProducto char(50) NULL,
	PrecioUnitario float NULL,
	CantidadEnExistencia int NULL,
	Activo bit NOT NULL
	

	CONSTRAINT PK_Productos PRIMARY KEY(CodProveedor, CodProducto)
)

CREATE TABLE Clientes
(
	CodCliente int NOT NULL,
	NombreCliente char(30) NULL,
	ApellidoCliente char(30) NULL,
	DNICliente int NULL,
	NumeroTelefono int NULL,
	
	CONSTRAINT PK_Clientes PRIMARY KEY(CodCliente)
)

CREATE TABLE Ventas
(
	CodVenta int NOT NULL,
	CodCliente int NOT NULL,
	CodBanco int NULL,
	MetodoPago int NULL,
	FechaVenta date NOT NULL
	
	CONSTRAINT PK_Ventas PRIMARY KEY(CodVenta)
)

CREATE TABLE DetalleVenta
(
	CodVenta int NOT NULL,
	CodProducto int NOT NULL,
	Cantidad int NOT NULL
	
	CONSTRAINT PK_DetalleVenta PRIMARY KEY(CodVenta, CodProducto)
)

CREATE TABLE Usuarios
(
	Email char(50) NOT NULL,
	Clave char(16) NOT NULL,
	CodCliente int NOT NULL,
	TipoUsuario bit NULL
	
	CONSTRAINT PK_Usuarios PRIMARY KEY(Email)
)

CREATE TABLE MetodosPago
(
	CodMetodo int NOT NULL,
	Descripcion char(30) NULL,
	CantCuotas int NULL
	
	CONSTRAINT PK_MetodosPago PRIMARY KEY(CodMetodo)
)

CREATE TABLE Bancos
(
	CodBanco int NOT NULL,
	NombreBanco char(30) NULL,
	
	CONSTRAINT PK_Bancos PRIMARY KEY(CodBanco)
)

CREATE TABLE BancosXMetodos
(
	CodBanco int NOT NULL,
	CodMetodo int NOT NULL,
	Activo bit NULL
	
	CONSTRAINT PK_BancosXMetodos PRIMARY KEY(CodBanco, CodMetodo)
)

----------------------------------CREACION DE TABLAS----------------------------------
--------------------------------------------------------------------------------------
----------------------------------ENLACES---------------------------------------------
/*
ALTER TABLE Productos
ADD CONSTRAINT FK_Productos1 FOREIGN KEY(CodProveedor) REFERENCES Proveedores(CodProveedor)

ALTER TABLE Productos
ADD CONSTRAINT FK_Productos2 FOREIGN KEY(CodCategoria) REFERENCES Categorias(CodCategoria)

ALTER TABLE DetalleVenta
ADD CONSTRAINT FK_DetalleVenta FOREIGN KEY(CodVenta) REFERENCES Ventas(CodVenta)

ALTER TABLE Ventas
ADD CONSTRAINT FK_Ventas FOREIGN KEY(CodCliente) REFERENCES Clientes(CodCliente)

ALTER TABLE BancosXMetodos
ADD CONSTRAINT FK_BXM1 FOREIGN KEY(CodBanco) REFERENCES Bancos(CodBanco)

ALTER TABLE BancosXMetodos
ADD CONSTRAINT FK_BXM2 FOREIGN KEY(CodMetodo) REFERENCES MetodosPago(CodMetodo)

ALTER TABLE Usuarios
ADD CONSTRAINT FK_Usuarios FOREIGN KEY(CodCliente) REFERENCES Clientes(CodCliente)
*/
----------------------------------ENLACES----------------------------------
---------------------------------------------------------------------------
----------------------------------INSERCION DE DATOS-----------------------

INSERT INTO Proveedores (CodProveedor, NombreProveedor, CUIL, RazonSocial)
SELECT '1', 'NIKE', '30-67815546-9', 'NIKE ARGENTINA SRL' UNION
SELECT '2', 'ADIDAS', '30-68514022-1','ADIDAS ARGENTINA S A' UNION
SELECT '3', 'CROCS', '30-71054596-7', 'CROCS S.R.L.' UNION
SELECT '4', 'TOPPER', '30-62416348-7', 'TOPPER ARGENTINA S.R.L.' UNION
SELECT '5', 'FILA', '30-70702700-9', 'FILA S A' UNION
SELECT '6', 'LADY STORK', '30-69878303-2', 'LADY STORK S A' UNION
SELECT '7', 'SARKANY', '30-70806464-1', 'INTERNACIONAL RICKY SARKANY SA' UNION
SELECT '8', 'VIAMO', '33-71096742-9', 'VIAMO S.R.L.'

INSERT INTO Categorias (NombreCategoria, CodCategoria)
SELECT 'Deportivo', 1 UNION
SELECT 'Informal', 2 UNION
SELECT 'Elegante', 3 UNION
SELECT 'Deluxe', 4 UNION
SELECT 'Economicas', 5

INSERT INTO Productos (CodProveedor, CodProducto, CodCategoria, NombreProducto, PrecioUnitario, CantidadEnExistencia, Activo)
SELECT '1', 1, 2, 'Nike Nightgazer', 2000.00, 20, 1 UNION
SELECT '1', 2, 2, 'Nike Grandstand', 2050.00, 15, 1 UNION
SELECT '2', 3, 2, 'Adidas Delta Force Vulc', 1800.00, 6, 1 UNION
SELECT '1', 4, 1, 'Nike Energy Cloud 2', 2500.00, 10, 1 UNION
SELECT '2', 5, 1, 'Adidas Galaxy 4 Running', 2700.00, 9, 1 UNION
SELECT '2', 6, 1, 'Adidas Terrex Tracerocker', 3000.00, 20, 1 UNION
SELECT '5', 7, 5, 'Fila Powerfull', 1300.00, 28, 1 UNION
SELECT '5', 8, 5, 'Fila Footwear', 1300.00, 10, 1 UNION
SELECT '5', 9, 5, 'Crocs Kinsale Crocs Team', 1990.00, 10, 1 UNION
SELECT '4', 10, 5, 'Topper Gondor Castle', 1999.00, 16, 1 UNION
SELECT '7', 11, 4, 'Ricky Sarkany Queen New Arrivals', 4800.00, 5, 1 UNION
SELECT '7', 12, 4, 'Ricky Sarkany Amber New Arrivals', 7200.00, 6, 1 UNION
SELECT '7', 13, 4, 'Ricky Sarkany Mun New Arrivals', 9600.00, 8, 1 UNION
SELECT '7', 14, 4, 'Lady Stork Cat Holton Otawa', 8900.00, 8, 1 UNION
SELECT '7', 15, 3, 'Ricky Sarkany Zapatos Ecocuero', 4000.00, 14, 1 UNION
SELECT '7', 16, 3, 'Ricky Sarkany Nobuk ', 6000.00, 15, 1 UNION
SELECT '6', 17, 3, 'Lady Stork Nightgazer', 5300.00, 19, 1

INSERT INTO Clientes(CodCliente, NombreCliente, ApellidoCliente, DNICliente, NumeroTelefono)
SELECT 0, 'admin', 'admin', 1, 1 UNION
SELECT 1, 'Martin', 'Gonzales', 21546789,41153687 UNION
SELECT 2, 'Florencia', 'Rinaldi', 25446123, 1123126578 UNION
SELECT 3, 'Carlos', 'Hidalgo Torres', 32147258, 1133665589 UNION
SELECT 4, 'Raquel', 'Molina Vega', 29852631, 1525648719 UNION
SELECT 5, 'Jose', 'Delgado Calvo', 31698456, 47122578

INSERT INTO Usuarios(Email, CodCliente, Clave, TipoUsuario)
SELECT 'admin1@zapateria.com', 0, 'pass123', 1 UNION
SELECT 'admin2@zapateria.com', 0, 'pass123', 1 UNION
SELECT 'mgonzales76@outlook.com', 1, 'pass123', 0 UNION
SELECT 'frinaldi123@outlook.com', 2, 'pass123', 0 UNION
SELECT 'chidalgo123@outlook.com', 3, 'pass123', 0 UNION
SELECT 'rmolina123@outlook.com', 4, 'pass123', 0 UNION
SELECT 'jdelgado123@outlook.com', 5, 'pass123', 0

INSERT INTO MetodosPago(CantCuotas,CodMetodo,Descripcion)
SELECT 0, 1, 'Debito' UNION
SELECT 1, 2, '1 CUOTA SIN INTERES' UNION
SELECT 3, 3, '3 CUOTAS SIN INTERES' UNION
SELECT 6, 4, '6 CUOTAS SIN INTERES' UNION
SELECT 12, 5, '12 CUOTAS SIN INTERES' UNION
SELECT 1, 6, '1 CUOTA CON INTERES' UNION
SELECT 3, 7, '3 CUOTAS CON INTERES' UNION
SELECT 6, 8, '6 CUOTAS CON INTERES' UNION
SELECT 12, 9, '12 CUOTAS CON INTERES'

INSERT INTO Bancos(CodBanco,NombreBanco)
SELECT 1, 'HSBC' UNION
SELECT 2, 'Santander Rio' UNION
SELECT 3, 'Itau' UNION
SELECT 4, 'Banco Provincia' UNION
SELECT 5, 'Banco Patagonia'

INSERT BancosXMetodos(CodBanco, CodMetodo, Activo)
SELECT 1, 1, 1 UNION
SELECT 1, 2, 1 UNION
SELECT 1, 3, 1 UNION
SELECT 1, 4, 1 UNION
SELECT 1, 5, 1 UNION
SELECT 1, 6, 0 UNION
SELECT 1, 7, 0 UNION
SELECT 1, 8, 0 UNION
SELECT 1, 9, 0 UNION
SELECT 2, 1, 1 UNION
SELECT 2, 2, 1 UNION
SELECT 2, 3, 1 UNION
SELECT 2, 4, 0 UNION
SELECT 2, 5, 0 UNION
SELECT 2, 6, 0 UNION
SELECT 2, 7, 0 UNION
SELECT 2, 8, 1 UNION
SELECT 2, 9, 1 UNION
SELECT 3, 1, 1 UNION
SELECT 3, 2, 0 UNION
SELECT 3, 3, 0 UNION
SELECT 3, 4, 0 UNION
SELECT 3, 5, 0 UNION
SELECT 3, 6, 1 UNION
SELECT 3, 7, 1 UNION
SELECT 3, 8, 1 UNION
SELECT 3, 9, 1 UNION
SELECT 4, 1, 1 UNION
SELECT 4, 2, 1 UNION
SELECT 4, 3, 1 UNION
SELECT 4, 4, 0 UNION
SELECT 4, 5, 0 UNION
SELECT 4, 6, 0 UNION
SELECT 4, 7, 0 UNION
SELECT 4, 8, 1 UNION
SELECT 4, 9, 1 UNION
SELECT 5, 1, 1 UNION
SELECT 5, 2, 1 UNION
SELECT 5, 3, 1 UNION
SELECT 5, 4, 1 UNION
SELECT 5, 5, 1 UNION
SELECT 5, 6, 0 UNION
SELECT 5, 7, 0 UNION
SELECT 5, 8, 0 UNION
SELECT 5, 9, 0

INSERT INTO Ventas (CodVenta, CodCliente, MetodoPago, CodBanco, FechaVenta)
SELECT 1,3,1,2,GETDATE() UNION
SELECT 2,1,2,1,GETDATE() UNION
SELECT 3,5,5,3,GETDATE() UNION
SELECT 4,2,1,2,GETDATE() UNION
SELECT 5,4,4,4,GETDATE()

INSERT INTO DetalleVenta(Cantidad, CodProducto, CodVenta)
SELECT 1,2,1 UNION
SELECT 1,3,1 UNION
SELECT 1,1,2 UNION
SELECT 1,3,2 UNION
SELECT 5,4,3 UNION
SELECT 1,2,4 UNION
SELECT 1,5,4 UNION
SELECT 2,3,5

----------------------------------INSERCION DE DATOS-----------------------
/*---------------------------------------------------------------------------
----------------------------------CREACION S.P.----------------------------
----------------------------TRIGGERS---------------------------------------

GO
CREATE TRIGGER ActualizarStock
ON DetalleVenta
AFTER INSERT

AS 
BEGIN
SET NOCOUNT ON

UPDATE Productos SET CantidadEnExistencia = CantidadEnExistencia - (SELECT Cantidad FROM INSERTED) 
WHERE CodProducto = (SELECT CodProducto FROM INSERTED) AND 
CodProveedor = (SELECT CodProveedor FROM INSERTED)

END
GO

GO
CREATE TRIGGER CreacionDeMetodos
ON Bancos
AFTER INSERT

AS
BEGIN
SET NOCOUNT ON

INSERT INTO BancosXMetodos(CodBanco, CodMetodo, Activo)
SELECT (SELECT CodBanco FROM INSERTED), 1, 1 UNION
SELECT (SELECT CodBanco FROM INSERTED), 2, 0 UNION
SELECT (SELECT CodBanco FROM INSERTED), 3, 0 UNION
SELECT (SELECT CodBanco FROM INSERTED), 4, 0 UNION
SELECT (SELECT CodBanco FROM INSERTED), 5, 0 UNION
SELECT (SELECT CodBanco FROM INSERTED), 6, 1 UNION
SELECT (SELECT CodBanco FROM INSERTED), 7, 1 UNION
SELECT (SELECT CodBanco FROM INSERTED), 8, 1 UNION
SELECT (SELECT CodBanco FROM INSERTED), 9, 1
END

GO

-------------------------------------------------------------------------
----------------------------INSERTS--------------------------------------
-------------------------------------------------------------------------

GO
CREATE PROCEDURE InsertarProducto
@CodProducto int, @CodProveedor char(5), @CodCategoria int,
@NombreProducto char(30), @PrecioUnitario money, @Cantidad int, @Activo bit

AS

INSERT INTO Productos(CodProducto,CodProveedor,CodCategoria,
NombreProducto,PrecioUnitario,CantidadEnExistencia,Activo)
SELECT @CodProducto,@CodProveedor,@CodCategoria,
@NombreProducto,@PrecioUnitario,@Cantidad,@Activo

GO

GO
CREATE PROCEDURE InsertarProveedor
@CodProveedor char(5),@NombreProveedor char(30),@CUIL char(15),@RazonSocial char(50)

AS

INSERT INTO Proveedores(CodProveedor,NombreProveedor,CUIL,RazonSocial)
SELECT @CodProveedor,@NombreProveedor,@CUIL,@RazonSocial

GO

GO
CREATE PROCEDURE InsertarCategorias
@CodCategoria int,@NombreCategoria char(20)

AS

INSERT INTO Categorias(CodCategoria,NombreCategoria)
SELECT @CodCategoria,@NombreCategoria

GO

GO
CREATE PROCEDURE InsertarDetalleVenta
@CodVenta int,@CodProducto int,@Cantidad int

AS

INSERT INTO DetalleVenta(CodVenta,CodProducto,Cantidad)
SELECT @CodVenta,@CodProducto,@Cantidad

GO

GO
CREATE PROCEDURE InsertarVentas
@CodVenta int,@CodCliente int,@MetodoPago int, @CodBanco int

AS

INSERT INTO Ventas(CodVenta,CodCliente,MetodoPago,CodBanco,FechaVenta)
SELECT @CodVenta,@CodCliente,@MetodoPago,@CodBanco,GETDATE()

GO

GO
CREATE PROCEDURE InsertarCliente
@CodCliente int, @NombreCliente char(30),@ApellidoCliente char(30),@DNICliente int,@NumeroTelefono int

AS

INSERT INTO Clientes(CodCliente,NombreCliente,ApellidoCliente,DNICliente,NumeroTelefono)
SELECT @CodCliente,@NombreCliente,@ApellidoCliente,@DNICliente,@NumeroTelefono

GO

GO
CREATE PROCEDURE InsertarUsuario
@Email char(50),@Clave char(16),@CodCliente int,@TipoUsuario bit

AS

INSERT INTO Usuarios(Email,Clave,CodCliente,TipoUsuario)
SELECT @Email,@Clave,@CodCliente,@TipoUsuario

GO

GO
CREATE PROCEDURE InsertarBanco
@CodBanco int, @NombreBanco char(30)

AS

INSERT INTO Bancos(CodBanco,NombreBanco)
SELECT @CodBanco,@NombreBanco

GO

GO
CREATE PROCEDURE InsertarMetodoPago
@CodMetodo int,@Descripcion char(30), @CantCuotas int

AS

INSERT INTO MetodosPago(CodMetodo,Descripcion,CantCuotas)
SELECT @CodMetodo,@Descripcion,@CantCuotas

GO

--------------------------------------------------------------
----------------------------ELIMINAR--------------------------
--------------------------------------------------------------

GO
CREATE PROCEDURE spEliminarProducto
	
	@CodProducto INT
 
	AS
	
	UPDATE Productos 
	SET Activo = 0 
	WHERE CodProducto = @CodProducto
GO

GO
CREATE PROCEDURE spEliminarProveedor
	
	@CodProveedor char(5)
	
	AS
	
	DELETE FROM Proveedores
	WHERE CodProveedor = @CodProveedor
	RETURN
GO

GO
CREATE PROCEDURE spEliminarCategoria

	@CodCategoria INT

	AS
	
	DELETE FROM Categorias
	WHERE CodCategoria = @CodCategoria
	RETURN
GO

GO
CREATE PROCEDURE spEliminarMetodosPago
	(
	@CodMetodo INT
	) 
	AS
	DELETE FROM MetodosPago
	WHERE CodMetodo = @CodMetodo
	RETURN
GO

GO
CREATE PROCEDURE spEliminarBancos
	(
	@CodBanco INT
	) 
	AS
	DELETE FROM Bancos
	WHERE CodBanco = @CodBanco
	RETURN
GO

---------------------------------------------------------------------
-----------------------------MODIFICAR-------------------------------
---------------------------------------------------------------------

GO
CREATE PROCEDURE spModificarProveedor
@CodProveedor char(5),
@NombreProveedor char(30), 
@Cuil char(20),
@RazonSocial char(30)
AS
UPDATE Proveedores
SET 
NombreProveedor = @NombreProveedor, 
Cuil = @Cuil,
RazonSocial = @RazonSocial
WHERE CodProveedor = @CodProveedor
GO

GO
CREATE PROCEDURE spModificarCategoria
@CodCategoria int,
@NombreCategoria char(20)
AS
UPDATE Categorias
SET 
NombreCategoria= @NombreCategoria 
WHERE CodCategoria = @CodCategoria
GO

GO
CREATE PROCEDURE spModificarProducto
@CodProducto int,
@CodProveedor char(5),
@CodCategoria int,
@NombreProducto char(50),
@PrecioUnitario float,
@CantidadEnExistencia int,
@Activo bit
AS
UPDATE Productos
SET 
CodProveedor = @CodProveedor,
CodCategoria = @CodCategoria,
NombreProducto = @NombreProducto,
PrecioUnitario = @PrecioUnitario,
CantidadEnExistencia = @CantidadEnExistencia,
Activo = @Activo
WHERE CodProducto = @CodProducto AND CodProveedor = @CodProveedor
GO

GO
CREATE PROCEDURE spModificarCliente
@CodCliente  int,
@NombreCliente char(30),
@ApellidoCliente char(30),
@DNICliente int,
@NumeroTelefono int
AS
UPDATE Clientes
SET 
NombreCliente = @NombreCliente,
ApellidoCliente = @ApellidoCliente, 
DNICliente = @DNICliente,
NumeroTelefono = @NumeroTelefono
WHERE CodCliente  = @CodCliente 
GO

GO
CREATE PROCEDURE spModificarUsuario
@Email char(50),
@Clave char(16),
@CodCliente int,
@TipoUsuario bit
AS
UPDATE Usuarios
SET 
Email = @Email,
Clave = @Clave,
CodCliente  = @CodCliente, 
TipoUsuario = @TipoUsuario
WHERE Email = @Email
GO

GO
CREATE PROCEDURE spModificarBanco
@CodBanco int,
@NombreBanco char(30)
AS
UPDATE Bancos
SET 
NombreBanco= @NombreBanco
WHERE CodBanco = @CodBanco
GO*/