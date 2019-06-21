use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalSelectAll]
go

create procedure [dbo].[Empleado-SucursalSelectAll]

as

set nocount on

select [IdES],
	[IdEmpleado],
	[IdSucursal],
	[Detalle]
from [Empleado-Sucursal]
go
