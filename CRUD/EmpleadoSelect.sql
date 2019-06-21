use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmpleadoSelect]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EmpleadoSelect]
go

create procedure [dbo].[EmpleadoSelect]
(
	@IdEmpleado nvarchar(10)
)

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
where [IdEmpleado] = @IdEmpleado
go
