use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalUpdate]
go

create procedure [dbo].[Empleado-SucursalUpdate]
(
	@IdES int,
	@IdEmpleado nvarchar(10),
	@IdSucursal nvarchar(10),
	@Detalle nvarchar(200)
)

as

set nocount on

update [Empleado-Sucursal]
set [IdEmpleado] = @IdEmpleado,
	[IdSucursal] = @IdSucursal,
	[Detalle] = @Detalle
where [IdES] = @IdES
go
