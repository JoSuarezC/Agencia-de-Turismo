use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalSelect]
go

create procedure [dbo].[Empleado-SucursalSelect]
(
	@IdES int
)

as

set nocount on

select [IdES],
	[IdEmpleado],
	[IdSucursal],
	[Detalle]
from [Empleado-Sucursal]
where [IdES] = @IdES
go
