use [AgenciaViajes]
go
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SucursalUpdate]') and ObjectProperty(id, N'IsProcedure') = 1)
	drop procedure [dbo].[SucursalUpdate]
go

create procedure [dbo].[SucursalUpdate]
(
	@IdSucursal nvarchar(10),
	@Nombre nvarchar(50),
	@IdUbicacion nvarchar(10),
	@IdAdministrador nvarchar(10),
	@IdAgencia int
)

as

set nocount on

update [Sucursal]
set [Nombre] = @Nombre,
	[IdUbicacion] = @IdUbicacion,
	[IdAdministrador] = @IdAdministrador,
	[IdAgencia] = @IdAgencia
where [IdSucursal] = @IdSucursal
go
