use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalDeleteAllByIdSucursal]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalDeleteAllByIdSucursal]
go

create procedure [dbo].[SucursalDeleteAllByIdSucursal]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdSucursal] = @IdSucursal
go
