use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalSelectAllByIdEmpleado]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalSelectAllByIdEmpleado]
go

create procedure [dbo].[Empleado-SucursalSelectAllByIdEmpleado]
(
	@IdEmpleado nvarchar(10)
)

as

set nocount on

select [IdES],
	[IdEmpleado],
	[IdSucursal],
	[Detalle]
from [Empleado-Sucursal]
where [IdEmpleado] = @IdEmpleado
go
