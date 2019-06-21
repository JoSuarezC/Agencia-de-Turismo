use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[EmpleadoDeleteAllByIdPuesto]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[EmpleadoDeleteAllByIdPuesto]
go

create procedure [dbo].[EmpleadoDeleteAllByIdPuesto]
(
	@IdPuesto nvarchar(10)
)

as

set nocount on

delete from [Empleado]
where [IdPuesto] = @IdPuesto
go
