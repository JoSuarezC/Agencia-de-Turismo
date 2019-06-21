use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalSelectAllByIdSucursal]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalSelectAllByIdSucursal]
go

create procedure [dbo].[Empleado-SucursalSelectAllByIdSucursal]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

select [IdES],
	[IdEmpleado],
	[IdSucursal],
	[Detalle]
from [Empleado-Sucursal]
where [IdSucursal] = @IdSucursal
go
