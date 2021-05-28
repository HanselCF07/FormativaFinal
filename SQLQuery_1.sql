-- //FORMATIVAS TABLES//
CREATE TABLE [dbo].[tabla](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[fecha_nacimiento] [datetime] NOT NULL
    PRIMARY KEY (id)
 )


-- //PARCIAL FINAL TABLES//
CREATE TABLE [dbo].[persona](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[tipo] [int] Not null,
	[fecha_nacimiento] [datetime] NOT NULL
    PRIMARY KEY (id)
 );
 CREATE TABLE [dbo].[producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fecha_ensamble] [datetime] NOT NULL,
	[color] [varchar](50) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[voltaje] [int] NOT NULL,
	[almacen] [varchar](50) NOT NULL,
	[modelo] [varchar](50) NOT NULL,
	[precio] [float] NOT NULL,
    PRIMARY KEY (id)
 );
CREATE TABLE [dbo].[revision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente_id] [int] NOT NULL,
	[empleado_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[observaciones] [text] NOT NULL,
	[fecha_revision] [datetime] NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY ([cliente_id]) REFERENCES [dbo].[persona]([id]),
	FOREIGN KEY ([empleado_id]) REFERENCES [dbo].[persona]([id]),
	FOREIGN KEY ([producto_id]) REFERENCES [dbo].[producto]([id])
 );

DROP TABLE [dbo].[revision];
DROP TABLE [dbo].[cliente];
DROP TABLE [dbo].[empleado];