use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalDelete]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalDelete]
go

create procedure [dbo].[SucursalDelete]
(
	@IdSucursal nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdSucursal] = @IdSucursal
go
