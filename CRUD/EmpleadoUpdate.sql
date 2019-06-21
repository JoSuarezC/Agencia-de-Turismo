use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmpleadoUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EmpleadoUpdate]
go

create procedure [dbo].[EmpleadoUpdate]
(
	@IdEmpleado nvarchar(10),
	@Cedula nvarchar(10),
	@Nombre nvarchar(50),
	@Apellido1 nvarchar(50),
	@Apellido2 nvarchar(50),
	@FechaContrato nvarchar(10),
	@IdPuesto nvarchar(10),
	@Salario money,
	@Comision money
)

as

set nocount on

update [Empleado]
set [Cedula] = @Cedula,
	[Nombre] = @Nombre,
	[Apellido1] = @Apellido1,
	[Apellido2] = @Apellido2,
	[FechaContrato] = @FechaContrato,
	[IdPuesto] = @IdPuesto,
	[Salario] = @Salario,
	[Comision] = @Comision
where [IdEmpleado] = @IdEmpleado
go
