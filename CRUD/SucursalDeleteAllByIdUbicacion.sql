use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalDeleteAllByIdUbicacion]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalDeleteAllByIdUbicacion]
go

create procedure [dbo].[SucursalDeleteAllByIdUbicacion]
(
	@IdUbicacion nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdUbicacion] = @IdUbicacion
go
