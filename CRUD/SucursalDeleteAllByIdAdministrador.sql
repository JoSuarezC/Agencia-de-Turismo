use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalDeleteAllByIdAdministrador]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalDeleteAllByIdAdministrador]
go

create procedure [dbo].[SucursalDeleteAllByIdAdministrador]
(
	@IdAdministrador nvarchar(10)
)

as

set nocount on

delete from [Sucursal]
where [IdAdministrador] = @IdAdministrador
go
