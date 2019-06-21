use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ClienteInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[ClienteInsert]
go

create procedure [dbo].[ClienteInsert]
(
	@IdCliente nvarchar(10),
	@Cedula nvarchar(10),
	@Nombre nvarchar(50),
	@Apellido1 nvarchar(50),
	@Apellido2 nvarchar(50),
	@FechaNacimiento date,
	@Pasaporte nvarchar(10)
)

as

set nocount on
if not exists(select * from Cliente e where e.IdCliente = @IdCliente)
begin


insert into [Cliente]
(
	[IdCliente],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaNacimiento],
	[Pasaporte]
)
values
(
	@IdCliente,
	@Cedula,
	@Nombre,
	@Apellido1,
	@Apellido2,
	@FechaNacimiento,
	@Pasaporte
)

end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
