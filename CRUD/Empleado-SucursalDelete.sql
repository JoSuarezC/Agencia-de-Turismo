use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalDelete]
go

create procedure [dbo].[Empleado-SucursalDelete]
(
	@IdES int
)

as

set nocount on

delete from [Empleado-Sucursal]
where [IdES] = @IdES
go
