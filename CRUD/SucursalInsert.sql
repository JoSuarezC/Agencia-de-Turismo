use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalInsert]
go

create procedure [dbo].[SucursalInsert]
(
	@IdSucursal nvarchar(10),
	@Nombre nvarchar(50),
	@IdUbicacion nvarchar(10),
	@IdAdministrador nvarchar(10),
	@IdAgencia int
)

as

set nocount on
if not exists(select * from Sucursal e where e.IdSucursal = @IdSucursal)
begin
if exists(select * from Ubicacion p where p.IdUbicacion= @IdUbicacion)
begin
if exists(select * from Empleado p inner join PuestoTrabajo pt on pt.IdPuesto = p.IdPuesto    where p.IdEmpleado= @IdAdministrador and pt.Nombre = 'Administrador')
begin
if exists(select * from Agencia p where p.IdAgencia= @IdAgencia)
begin

insert into [Sucursal]
(
	[IdSucursal],
	[Nombre],
	[IdUbicacion],
	[IdAdministrador],
	[IdAgencia]
)
values
(
	@IdSucursal,
	@Nombre,
	@IdUbicacion,
	@IdAdministrador,
	@IdAgencia
)
end
else
	begin
	Raiserror('El id de Agencia no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de empleado administrador no existe',0,0)
	end
end
else
	begin
	Raiserror('El id de ubicacion no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
