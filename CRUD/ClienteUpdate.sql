use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ClienteUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ClienteUpdate]
go

create procedure [dbo].[ClienteUpdate]
(
	@IdCliente nvarchar(10),
	@Cedula nvarchar(10),
	@Nombre nvarchar(50),
	@Apellido1 nvarchar(50),
	@Apellido2 nvarchar(50),
	@FechaNacimiento nvarchar(10),
	@TipoSangre nvarchar(10),
	@Pasaporte nvarchar(10)
)

as

set nocount on

update [Cliente]
set [Cedula] = @Cedula,
	[Nombre] = @Nombre,
	[Apellido1] = @Apellido1,
	[Apellido2] = @Apellido2,
	[FechaNacimiento] = @FechaNacimiento,
	[TipoSangre] = @TipoSangre,
	[Pasaporte] = @Pasaporte
where [IdCliente] = @IdCliente
go
