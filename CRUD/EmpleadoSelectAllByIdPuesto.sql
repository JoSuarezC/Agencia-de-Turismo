use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmpleadoSelectAllByIdPuesto]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EmpleadoSelectAllByIdPuesto]
go

create procedure [dbo].[EmpleadoSelectAllByIdPuesto]
(
	@IdPuesto nvarchar(10)
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
where [IdPuesto] = @IdPuesto
go
