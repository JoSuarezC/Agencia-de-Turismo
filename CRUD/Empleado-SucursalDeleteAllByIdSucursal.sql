use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Empleado-SucursalDeleteAllByIdSucursal]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[Empleado-SucursalDeleteAllByIdSucursal]
go

create procedure [dbo].[Empleado-SucursalDeleteAllByIdSucursal]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

delete from [Empleado-Sucursal]
where [IdSucursal] = @IdSucursal
go
