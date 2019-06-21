use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmpleadoSelectAll]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EmpleadoSelectAll]
go

create procedure [dbo].[EmpleadoSelectAll]

as

set nocount on

select [IdEmpleado],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaContrato],
	[IdPuesto],
	[Salario],
	[Comision]
from [Empleado]
go
