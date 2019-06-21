use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmpleadoDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EmpleadoDelete]
go

create procedure [dbo].[EmpleadoDelete]
(
	@IdEmpleado nvarchar(10)
)

as

set nocount on

delete from [Empleado]
where [IdEmpleado] = @IdEmpleado
go
