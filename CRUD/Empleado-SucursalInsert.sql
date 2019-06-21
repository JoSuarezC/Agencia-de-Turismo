use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalInsert]
go

create procedure [dbo].[Empleado-SucursalInsert]
(
	@IdES int,
	@IdEmpleado nvarchar(10),
	@IdSucursal nvarchar(10),
	@Detalle nvarchar(200)
)

as

set nocount on

insert into [Empleado-Sucursal]
(
	[IdES],
	[IdEmpleado],
	[IdSucursal],
	[Detalle]
)
values
(
	@IdES,
	@IdEmpleado,
	@IdSucursal,
	@Detalle
)
go
