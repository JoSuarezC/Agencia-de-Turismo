use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalDeleteAllByIdEmpleado]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalDeleteAllByIdEmpleado]
go

create procedure [dbo].[Empleado-SucursalDeleteAllByIdEmpleado]
(
	@IdEmpleado nvarchar(10)
)

as

set nocount on

delete from [Empleado-Sucursal]
where [IdEmpleado] = @IdEmpleado
go
