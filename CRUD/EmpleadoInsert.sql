use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmpleadoInsert]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EmpleadoInsert]
go

create procedure [dbo].[EmpleadoInsert]
(
	@IdEmpleado nvarchar(10),
	@Cedula nvarchar(10),
	@Nombre nvarchar(50),
	@Apellido1 nvarchar(50),
	@Apellido2 nvarchar(50),
	@FechaContrato date,
	@IdPuesto nvarchar(10),
	@Salario money,
	@Comision int
)

as

set nocount on
if not exists(select * from Empleado e where e.IdEmpleado = @IdEmpleado)
begin
if exists(select * from PuestoTrabajo p where p.IdPuesto = @IdPuesto)
begin
insert into [Empleado]
(
	[IdEmpleado],
	[Cedula],
	[Nombre],
	[Apellido1],
	[Apellido2],
	[FechaContrato],
	[IdPuesto],
	[Salario],
	[PorcentajeComision]
)
values
(
	@IdEmpleado,
	@Cedula,
	@Nombre,
	@Apellido1,
	@Apellido2,
	@FechaContrato,
	@IdPuesto,
	@Salario,
	@Comision
)
end
else
	begin
	Raiserror('El id de puesto no existe',0,0)
	end
end
else
	begin
	Raiserror('El id ya existe',0,0)
	end
go
